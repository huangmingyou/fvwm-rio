syntax on
set re=0 
set background=dark
map r1 :!/home/hmy/bin/t1.sh <CR> <CR>
map t3 :!/home/hmy/bin/r3.sh <CR> <CR>
map r2 :setf groovy <CR> <CR>
map rr :w !bash <CR>
map rp :%y* \| %y+ <CR>
xnoremap rp :w !bash<cr>
iabbrev _cdnip_ 106.55.240.210
iabbrev _bgp_ router bgp 123<CR> no bgp ebgp-requires-policy<CR> no bgp network import-check<CR> timers bgp 10 30
iabbrev _bgpgroup_ router bgp 123<CR> no bgp ebgp-requires-policy<CR> no bgp network import-check<CR> timers bgp 10 30
set hls
