  604  vi Modules/makesetup 
  606  vi Modules/Setup.dist 
  610  vi Modules/config.c
  617  cp Modules/Setup.dist Modules/Setup
  624  vi Makefile.pre.in 
  655  gp 'ADDMODULE' * -R 
  656  vi Modules/config.c.in
  681  python -OO -c 'import x'
  682  ./pvm x.pyo
  684  apt-get install upx -y
  685  upx --best pvm
  688  ./pvm x.pyo
