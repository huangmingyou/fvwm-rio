syntax on
set background=dark
map r1 :!/home/hmy/bin/t1.sh <CR> <CR>
map t3 :!/home/hmy/bin/r3.sh <CR> <CR>
map r2 :setf groovy <CR> <CR>
map rr :w !bash <CR>
xnoremap rp :w !bash<cr>
au BufNewFile,BufRead *.groovy  setf groovy
set expandtab
set tabstop=4
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
