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


### How to debug vimrc config file.
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

# Things to add
