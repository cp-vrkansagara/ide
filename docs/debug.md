### How to debug VIM configuration

### Manual inspection

It's a good idea to inspect the install script from projects you don't yet know. You can do
that by downloading the install script first, looking through it so everything looks normal,
then running it:

```shell
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
```

### How to debug vimrc configuration file.
vim -u NONE -U NONE -N

### How to debug vimrc conflicts of shortcut
Use this comand into vim console by pressing `:`

~~~bash
:verbose map <leader>v

:verbose map <c-w>s
~~~

### How to check what value vim is having in running mode
This will print the current vlue vim is using.

~~~bash
:set expandtab?

:set number?

:set syntex?
~~~

