from glob import glob
from platform import system
from pynvim import attach
from sys import argv
from subprocess import run
from tempfile import gettempdir
import logging as log

def determine_tmp():
    # If invoked from iterm2, $TMPDIR won't be set properly. To work around
    # this, read DARWIN_USER_TEMP_DIR directly
    if (system() == 'Darwin'):
        tmpdir = run(["getconf", "DARWIN_USER_TEMP_DIR"], capture_output=True)
        tmpdir = tmpdir.stdout.decode("utf-8").strip()
    else:
        tmpdir = gettempdir()

    return tmpdir


def main():
    try:
        mode = argv[1]
    except IndexError:
        log.error("bad args:")
        print(argv)
        exit(1)

    if not(mode == "dark" or mode == "light"):
        log.error('bad mode')
        exit(1)

    searchpath = f"{determine_tmp()}/nvim*/0"
    log.info(f"looking for sockets in {searchpath}")
    potential_sockets = glob(searchpath)
    for path in potential_sockets:
        log.info(f"checking socket: {path}")
        try:
            with attach('socket', path=path) as nvim:
                log.info(f"found active socket at {path}")
                nvim.command(f"call DarkLight('{mode}')") # defined in ui.vim
        except ConnectionRefusedError:
            # Could be an old socket or not nvim. That's fine, ignore it.
            pass

if __name__ == "__main__":
    main()
