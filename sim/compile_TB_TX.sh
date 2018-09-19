for i in ../source/targetx/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93 ./$i
done

for i in ./tb_core2chan.vhd* 
do echo "Compiling " $i
ncvhdl -V93 ./$i
done

ncelab -warnmax 0 -messages core2chan_test -access +rwc


