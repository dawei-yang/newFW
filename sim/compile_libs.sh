for i in ../../../../share/install/Xilinx/14.7/ISE_DS/ISE/vhdl/src/unisims/*.vhd* 
do echo "Compiling " $i
ncvhdl -WORK UNISIM -V93 -APPEND_LOG ./$i
done

for i in ../../../../share/install/Xilinx/14.7/ISE_DS/ISE/vhdl/src/unisims/primitive/*.vhd* 
do echo "Compiling " $i
ncvhdl -WORK UNISIM -V93 -APPEND_LOG ./$i
done

for i in ../../../../share/install/Xilinx/14.7/ISE_DS/ISE/vhdl/src/simprims/*.vhd* 
do echo "Compiling " $i
ncvhdl -WORK UNISIM -V93 -APPEND_LOG ./$i
done

for i in ../../../../share/install/Xilinx/14.7/ISE_DS/ISE/vhdl/src/unimacro/*.vhd* 
do echo "Compiling " $i
ncvhdl -WORK UNIMACRO -V93 -APPEND_LOG ./$i
done
