#!/usr/bin/env python3.7

import asyncio
import iterm2
import subprocess

nvim_pipenv_interpreter = "/Users/zxaos/.asdf/shims/pipenv"
nvim_pipenv_script = "DarkLight"
nvim_working_dir = "/Users/zxaos/.config/nvim-env/"

themes = {
    'dark' : 'material-dark',
    'light': 'material',
}

# def changeThemeNvimSync(mode):
#     print(f"change nvim theme to {mode} (sync)")
#     output = subprocess.run(
#             ["/Users/zxaos/.local/share/virtualenvs/nvim-env--DM9KkiB/bin/python", "/Users/zxaos/.config/nvim-env/external_DarkLight.py", mode],
#             capture_output=True)
#     print(output)
#     print(output.stdout.decode("utf-8") )

async def changeThemeNvim(mode):
    print(f"change nvim theme to {mode}")
    await asyncio.create_subprocess_exec(
        nvim_pipenv_interpreter,
        "run",
        nvim_pipenv_script,
        mode,
        cwd=nvim_working_dir
    )

async def changeThemeiTerm2(connection, mode):
    print(f"change iterm theme to {mode}")
    preset = await iterm2.ColorPreset.async_get(connection, themes[mode])

    # Update the list of all profiles and iterate over them.
    profiles = await iterm2.PartialProfile.async_query(connection)
    for partial in profiles:
        # Fetch the full profile and then set the color preset in it.
        profile = await partial.async_get_full_profile()
        await profile.async_set_color_preset(preset)

async def changeTheme(connection,parts):
    # parts is something like ["dark"/"light", "minimal"/"compact"...]
    if "dark" in parts:
        mode = "dark"
    else:
        mode = "light"

    asyncio.gather(
        changeThemeiTerm2(connection, mode),
        changeThemeNvim(mode),
    )

async def main(connection):
    app = await iterm2.async_get_app(connection)
    window = app.current_window
    initial_theme = await app.async_get_theme()
    await changeTheme(connection,initial_theme)

    async with iterm2.VariableMonitor(connection, iterm2.VariableScopes.APP, "effectiveTheme", None) as monitor:
        while True:
            # Block until theme changes
            theme = await monitor.async_get()
            # Themes have space-delimited attributes, one of which will be light or dark.
            parts = theme.split(" ")
            await changeTheme(connection,parts)


iterm2.run_forever(main)
