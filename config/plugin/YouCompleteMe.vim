let g:ycm_lsp_dir = '/home/vallabh/.vim/bundle/lsp-examples.git'
let g:ycm_language_server = []
let g:ycm_language_server += [
			\   { 'name': 'vim',
			\     'filetypes': [ 'vim' ],
			\     'cmdline': [ expand( g:ycm_lsp_dir . '/viml/node_modules/.bin/vim-language-server' ), '--stdio' ]
			\   },
			\ ]
let g:ycm_language_server += [
			\   { 'name': 'docker',
			\     'filetypes': [ 'dockerfile' ],
			\     'cmdline': [ expand( g:ycm_lsp_dir . '/docker/node_modules/.bin/docker-langserver' ), '--stdio' ]
			\   },
			\ ]
let g:ycm_language_server += [
			\   {
			\     'name': 'bash',
			\     'cmdline': [ 'node', expand( g:ycm_lsp_dir . '/bash/node_modules/.bin/bash-language-server' ), 'start' ],
			\     'filetypes': [ 'sh', 'bash' ],
			\   },
			\ ]
let g:ycm_language_server += [
			\   { 'name': 'vue',
			\     'filetypes': [ 'vue' ],
			\     'cmdline': [ expand( g:ycm_lsp_dir . '/vue/node_modules/.bin/vls' ) ]
			\   },
			\ ]
let g:ycm_language_server += [
			\   {
			\     'name': 'php',
			\     'cmdline': [ 'php', '-d', 'memory_limt=1024M', g:ycm_lsp_dir . '/php/serenata/bin/console', '--uri=tcp://127.0.0.1:11111' ],
			\     'filetypes': [ 'php' ],
			\     'port': 11111
			\   },
			\ ]
