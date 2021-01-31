My every day editor based using two things
~~~bash
Linux User :- If there is terminal there is a way.
Developer User :- If there is vim there is geek.
~~~

### Basic Installation

`vim` is installed by running one of the following commands in your terminal. You can install this via the command-line with either `curl`, `wget` or another similar tool.

| Method    | Command                                                                                           |
|:----------|:--------------------------------------------------------------------------------------------------|
| **curl**  | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/vrkansagara/ide/master/install.sh)"` |
| **wget**  | `sh -c "$(wget -O- https://raw.githubusercontent.com/vrkansagara/ide/master/install.sh)"`   |
| **fetch** | `sh -c "$(fetch -o - https://raw.githubusercontent.com/vrkansagara/ide/master/install.sh)"` |

#### Manual inspection

It's a good idea to inspect the install script from projects you don't yet know. You can do
that by downloading the install script first, looking through it so everything looks normal,
then running it:

```shell
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
```

```### How to debug vimrc config file.
vim -u NONE -U NONE -N

# How can I update this project

You can simply run bellow command to update, this `vimrc` project

~~~bash
git pull --rebase
~~~

#How to update all git submodules using single command.

~~~bash
git submodule foreach git pull origin master
~~~

# Things to add / TODO

-[] Add cat statement for the `vimrc.vim` for better debuggin of vim config file. 

-[] Add auto complete of html tags.

-[] Create/Rename/Delete file/directory using NERDTree

-[] Add autoupdate script for this project

-[] Add nerdtree index cache

-[] Add shortcut to make it inline code untill user press key i.e. CTRL+j

-[] Add multicursor selection so easy variable modification 

-[] Add config parser for nginx/vim and other CD/CI

-[] Add php file cs-check and cs-fix parser using phpcs.xml on the root directory. on each modificatio of php file it will cs-fix automatcly if cs fix config file found
