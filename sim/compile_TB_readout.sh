for i in ../ipcore/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93 -APPEND_LOG ./$i
done

for i in ../source/defs/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93  -APPEND_LOG ./$i
done

for i in ../source/interfaces/klm_scrod/b2tt/b2tt/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93  -APPEND_LOG ./$i
done

for i in ../source/interfaces/klm_scrod/klm_scrod/source/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93  -APPEND_LOG ./$i
done

for i in ../source/interfaces/klm_scrod/tdc/source/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93  -APPEND_LOG ./$i
done

for i in ../source/interfaces/klm_scrod/time_order/source/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93  -APPEND_LOG ./$i
done

for i in ../source/interfaces/klm_scrod/conc_intfc/source/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93  -APPEND_LOG ./$i
done

for i in ../source/main/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93  -APPEND_LOG ./$i
done

for i in ../source/peripherals/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93  -APPEND_LOG ./$i
done

for i in ../source/targetx/*.vhd* 
do echo "Compiling " $i
ncvhdl -V93  -APPEND_LOG ./$i
done

for i in ./readout_top1.vhd* 
do echo "Compiling " $i
ncvhdl -V200X  -APPEND_LOG ./$i
done

for i in ./tb_readout_top2.vhd* 
do echo "Compiling " $i
ncvhdl -V200X  -APPEND_LOG ./$i
done

ncelab -warnmax 0 -messages tb_readout_top2 -access +rwc


