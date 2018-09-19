-- ***** T7_dly1 model *****
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY T7_dly1 IS
PORT
(
   SSPin : IN std_logic;
   SSTin : IN std_logic;
   SSTout : OUT std_logic;
   SMTn : OUT std_logic;
   SMTp : OUT std_logic;
   SSPout : OUT std_logic;
   TMK : OUT std_logic
);
END T7_dly1;

ARCHITECTURE structural of T7_dly1 IS

-- COMPONENTS
COMPONENT T5_varInv
PORT
(
   Tin : IN std_logic;
   Tout : OUT std_logic
);
END COMPONENT;


COMPONENT Inv
PORT
(
   A : IN std_logic;
   OUT_1 : OUT std_logic
);
END COMPONENT;

COMPONENT super_buff
PORT
(
   A : IN std_logic;
   Abuff : OUT std_logic
);
END COMPONENT;

COMPONENT NAND2C
PORT
(
   A : IN std_logic;
   B : IN std_logic;
   Out2 : OUT std_logic;
   Out1 : OUT std_logic
);
END COMPONENT;

SIGNAL SSPin_1 : std_logic;
SIGNAL SSTin_1 : std_logic;
SIGNAL cs1 : std_logic;
SIGNAL cs2 : std_logic;
SIGNAL Thigh : std_logic;
SIGNAL Tlow : std_logic;
SIGNAL bb1 : std_logic;
SIGNAL bb2 : std_logic;
SIGNAL nout1 : std_logic;
SIGNAL nout2 : std_logic;
SIGNAL n1 : std_logic;
SIGNAL n2 : std_logic;
SIGNAL n3 : std_logic;
SIGNAL n4 : std_logic;
SIGNAL SSPout_1 : std_logic;
SIGNAL SSTout_1 : std_logic;
SIGNAL SMTn_1 : std_logic;
SIGNAL SMTp_1 : std_logic;
SIGNAL TMK_1 : std_logic;
SIGNAL CloadP_1 : std_logic;
SIGNAL CloadN_1 : std_logic;
   SIGNAL  VadjN11_1: std_logic;
   SIGNAL  VadjN10_1: std_logic;
   SIGNAL  VadjN9_1: std_logic;
   SIGNAL  VadjN8_1: std_logic;
   SIGNAL  VadjN7_1: std_logic;
   SIGNAL  VadjN6_1: std_logic;
   SIGNAL  VadjN5_1: std_logic;
   SIGNAL  VadjN4_1: std_logic;
   SIGNAL  VadjN3_1: std_logic;
   SIGNAL  VadjN2_1: std_logic;
   SIGNAL  VadjN1_1: std_logic;
   SIGNAL  VadjN0_1: std_logic;
begin
Inv_1: Inv
PORT MAP
(
A => cs1,
Out_1 => Thigh
);
Inv_2: Inv
PORT MAP
(
A => n1,
Out_1 => bb1
);
Inv_3: Inv
PORT MAP
(
A => Thigh, 
Out_1 => n1
);
Inv_4: Inv
PORT MAP
(
A => n1,
Out_1 => sspout_1
);
Inv_5: Inv
PORT MAP
(
A => Tlow,
Out_1 => n3
);
Inv_6: Inv
PORT MAP
(
A => cs2,
Out_1 => Tlow
);
Inv_7: Inv
PORT MAP
(
A => Tlow,
Out_1 => n4
);
Inv_8: Inv
PORT MAP
(
A => n4,
Out_1 => sstout_1
);
Inv_9: Inv
PORT MAP
(
A => n4,
Out_1 => bb2
);

super_buff_1 : super_buff
PORT MAP
(
A => bb1,
Abuff => n2
);
super_buff_2 : super_buff
PORT MAP
(
A => nout1,
Abuff => smtn_1
);
super_buff_3 : super_buff
PORT MAP
(
A => nout2,
Abuff => smtp_1
);
super_buff_4 : super_buff
PORT MAP
(
A => bb2,
Abuff => tmk_1
);
NAND2C_1 : NAND2C
PORT MAP
(
A => Thigh,
B => n3,
OUT2 => nout2,
OUT1 => nout1
);

t5_varinv_1 : t5_varinv
PORT MAP
(
Tin => sspin_1,
Tout => cs1
);

t5_varinv_2 : t5_varinv
PORT MAP
(
Tin => sstin_1,
Tout => cs2
);

-- PORTS NETS
SSPin_1 <= SSPin;
SSTin_1 <= SSTin;
SSTout <= SSTout_1;
SMTn <= SMTn_1;
SMTp <= SMTp_1;
SSPout <= SSPout_1;
TMK <= TMK_1;

END structural;
