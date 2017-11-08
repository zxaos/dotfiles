cheatsheet do
  title 'Matt'               # Will be displayed by Dash in the docset list
  docset_file_name 'matt'    # Used for the filename of the docset
  keyword 'matt'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else
  
  introduction 'Personal Setup Reference'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Terminal'  # Must be unique and is used as title of the category

    # FZF fish plugin
    entry do
      command 'CTRL+f'         # Optional
#      command 'CMD+SHIFT+N'   # Multiple commands are supported
      name '(fzf) Find a file'    # A short name, can contain Markdown or HTML
#      notes 'Some notes'      # Optional longer explanation, can contain Markdown or HTML
    end
    entry do
      command 'CTRL+r'
      name '(fzf) Reverse isearch'
    end
    entry do
      command 'ALT+x'
      name 'Reverse isearch and execute'
    end
    entry do
      command 'ALT+o'
      name 'cd into sub-directory'
    end
    entry do
      command 'ALT+SHIFT+o'
      name 'cd into sub-directory, including hidden'
    end
  end

  category do
    id 'Vim'
    entry do
      command '<Space> d'
      name '(dash) Search for the word under the cursor in Dash'
    end
  end

  category do
    id 'Code'
    entry do
      name 'Code sample'
      notes <<-'END'
        ```ruby
        sample = "You can include code snippets as well"
        ```
        Or anything else **Markdown** or HTML.
      END
    end
  end

  notes 'Some notes at the end of the cheat sheet'
end
