### Document for the IDE


##### Project directory structure

- `autoload`

The autoload directory is for standard Vim autoload scripts.
These are functions used by plugins and for general use. They will be loaded automatically when the function is invoked. See `:help autoload`.

- `colors`

These files are used to get different colors by using the “:colorscheme” command.
- `compiler`

This directory contains Vim scripts to be used with a specific compiler. They are used with the “:compiler” command. These scripts usually set options, for example ‘errorformat’. See “:help write-compiler-plugin”.

- `ftplugin` 

The ftplugin directory is for Vim plugin scripts that are only used for a specific filetype.

All files ending in .vim in this directory and subdirectories will be sourced by Vim when it detects the filetype that matches the name of the file or subdirectory.
    
For example, these are all loaded for the “c” filetype:


    php.vim
    php_extra.vim
    php/extra

Note that the “_” in “c_extra.vim” is required to separate the filetype name from the following arbitrary name.

The filetype plugins are only loaded when the “:filetype plugin” command has been used.

The default filetype plugin files contain settings that 95% of the users will want to use. They do not contain personal preferences, like the value of 'shiftwidth’.

If you want to do additional settings, or overrule the default filetype plugin, you can create your own plugin file. See “:help ftplugin” in Vim.

Vim Directory Structure
I searched for “vim directory structure” many times online and have rarely found something that helps me out. Generally I’m looking for the right place to put some random .vim file that I downloaded or which directory to put indentation or file type recognizer files.

To compile this information, I basically looked through the directories that I had on my machine and read through (and copied portions of) the README files. I looked around at the files when things weren’t clear. This was informal and my understanding less than 100% clear, so if you see errors or where I can be clearer, please leave a comment at the bottom of the post.

This whole process is made significantly easier and potentially obviated by using a vim bundler like pathogen. This is because these tools allow you to work with cloned git repositories and they already have the structure correctly set up.

The install directory
Directories in /usr/share/vim/vim72 (/usr/share/vim/vim73 if you’re on the cutting edge, C:\Program Files\vim72 if you like pain) are the files that are installed by Vim. You generally should not modify these files or add files in here. It’s better to put changes or new files in a separate directory that you can more easily control (maybe even with version control.)

Anyway, here are the folders that are installed by default.

autoload
The autoload directory is for standard Vim autoload scripts.

These are functions used by plugins and for general use. They will be loaded automatically when the function is invoked. See “:help autoload”.

colors
These files are used to get different colors by using the “:colorscheme” command.

compiler
This directory contains Vim scripts to be used with a specific compiler. They are used with the “:compiler” command. These scripts usually set options, for example ‘errorformat’. See “:help write-compiler-plugin”.

ftplugin
The ftplugin directory is for Vim plugin scripts that are only used for a specific filetype.

All files ending in .vim in this directory and subdirectories will be sourced by Vim when it detects the filetype that matches the name of the file or subdirectory.

For example, these are all loaded for the “c” filetype:

    c.vim
    c_extra.vim
    c/settings.vim
Note that the “_” in “c_extra.vim” is required to separate the filetype name from the following arbitrary name.

The filetype plugins are only loaded when the “:filetype plugin” command has been used.

The default filetype plugin files contain settings that 95% of the users will want to use. They do not contain personal preferences, like the value of 'shiftwidth’.

If you want to do additional settings, or overrule the default filetype plugin, you can create your own plugin file. See “:help ftplugin” in Vim.

- `indent`

This directory contains files to automatically compute the indent for a type of file.

If you want to add your own indent file for your personal use, read the docs at `:help indent-expression`.

`Note`: If you want to make an indent file, it should be named for the filetype that you want, not the extension. 
        
    For example, if you want to change your Javascript indentation, your file should be named javascript.vim, not js.vim.

- `keymap`

Keymap files for Vim

One of these files is loaded when the 'keymap’ option is set.

The name of the file consists of these parts:

    {language}[-{layout}][_{encoding}].vim
The format of the keymap lines below `loadkeymap` is explained in the Vim help files, see `:help keymap-file-format`.

lang
Language files for Vim

More information in the on-line help:

    :help multilang-menus
    :help :menutrans
    :help 'langmenu'
    :help :language
- `macros`

The macros in the maze, hanoi and urm directories can be used to test Vim for vi compatibility. The life macros can be used for performance comparisons.

hanoi Macros that solve the tower of hanoi problem. life Macros that run Conway’s game of life. maze Macros that solve a maze (amazing!). urm Macros that simulate a simple computer: “Universal Register Machine”

The other files contain some handy utilities. They also serve as examples for how to use Vi and Vim functionality.

|utility | Information|
|:----------|:--------------------------------------------------------------------------------------------------|
| **dvorak**  | for when you use a Dvorak keyboard |
|**justify.vim**|             user function for justifying text|
|**matchit.vim + matchit.txt**|  make % match if-fi, HTML tags, and much more|
|**less.sh + less.vim**|      make Vim work like less (or more)|
|**shellmenu.vim**|           menus for editing shell scripts in the GUI version|
|**swapmous.vim**|            swap left and right mouse buttons|
|**editexisting.vim**|        when editing a file that is already edited with|
another Vim instance

This one is only for Unix. It can be found in the extra archive:
    
    file_select.vim         macros that make a handy file selector`

- `plugin`

The plugin directory is for standard Vim plugin scripts.

All files here ending in .vim will be sourced by Vim when it starts up. Look in the files for hints on how they can be disabled without deleting them.

- `syntax`

This directory contains Vim scripts for syntax highlighting.

- `tools`

Some tools that can be used with Vim:

    blink.c:        C program to make the cursor blink in an xterm.
    ...
    vimspell.*:     Shell script for highlighting spelling mistakes.
    ...

##### Various information
- [Keybinding(Shortcuts)](shortcut.md)
- [Plugines are used into this project](plugin.md)
- [Debuging information](debug.md)
