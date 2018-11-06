--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Exp3.vhf
-- /___/   /\     Timestamp : 11/03/2018 17:31:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Chris/Documents/School/7th Year/Fall 2018/Phys301/Programs/Lab9/Lab9Exp1/Lab9Exp1/Exp3.vhf" -w "C:/Users/Chris/Documents/School/7th Year/Fall 2018/Phys301/Programs/Lab9/Lab9Exp1/Lab9Exp1/Exp3.sch"
--Design Name: Exp3
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Exp3 is
   port ( ButtonEn : in    std_logic; 
          clock    : in    std_logic; 
          Din      : in    std_logic_vector (7 downto 0); 
          Anode    : out   std_logic_vector (3 downto 0); 
          sseg     : out   std_logic_vector (7 downto 0));
end Exp3;

architecture BEHAVIORAL of Exp3 is
   attribute BOX_TYPE   : string ;
   signal XLXN_5                  : std_logic;
   signal XLXN_7                  : std_logic_vector (3 downto 0);
   signal XLXN_8                  : std_logic;
   signal XLXN_33                 : std_logic;
   signal XLXN_36                 : std_logic;
   signal XLXN_37                 : std_logic_vector (3 downto 0);
   signal XLXN_38                 : std_logic_vector (3 downto 0);
   signal XLXN_39                 : std_logic_vector (3 downto 0);
   signal XLXN_40                 : std_logic_vector (3 downto 0);
   signal XLXN_41                 : std_logic_vector (0 to 1);
   signal XLXI_1_dp_in_openSignal : std_logic_vector (3 downto 0);
   component mux4SSD
      port ( rb_in : in    std_logic; 
             hexD  : in    std_logic_vector (3 downto 0); 
             hexC  : in    std_logic_vector (3 downto 0); 
             hexB  : in    std_logic_vector (3 downto 0); 
             hexA  : in    std_logic_vector (3 downto 0); 
             sel   : in    std_logic_vector (0 to 1); 
             dp_in : in    std_logic_vector (3 downto 0); 
             dpO   : out   std_logic; 
             anO   : out   std_logic_vector (3 downto 0); 
             hexO  : out   std_logic_vector (3 downto 0));
   end component;
   
   component SSD_1dig
      port ( dp_in : in    std_logic; 
             hexD  : in    std_logic_vector (3 downto 0); 
             sseg  : out   std_logic_vector (7 downto 0));
   end component;
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
   component DCM_50M
      port ( CLK    : in    std_logic; 
             RST    : in    std_logic; 
             CLK1M  : out   std_logic; 
             CLK10k : out   std_logic; 
             CLK1k  : out   std_logic; 
             CLK1   : out   std_logic);
   end component;
   
   component sel_strobeB
      port ( clk : in    std_logic; 
             sel : inout std_logic_vector (0 to 1));
   end component;
   
   component bin2BCD3en
      port ( CLK   : in    std_logic; 
             En    : in    std_logic; 
             Din   : in    std_logic_vector (7 downto 0); 
             Dout3 : out   std_logic_vector (3 downto 0); 
             Dout2 : out   std_logic_vector (3 downto 0); 
             Dout1 : out   std_logic_vector (3 downto 0); 
             Dout0 : out   std_logic_vector (3 downto 0); 
             RBout : out   std_logic_vector (3 downto 0));
   end component;
   
   component PULLDOWN
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLDOWN : component is "BLACK_BOX";
   
begin
   XLXI_1 : mux4SSD
      port map (dp_in(3 downto 0)=>XLXI_1_dp_in_openSignal(3 downto 0),
                hexA(3 downto 0)=>XLXN_40(3 downto 0),
                hexB(3 downto 0)=>XLXN_39(3 downto 0),
                hexC(3 downto 0)=>XLXN_38(3 downto 0),
                hexD(3 downto 0)=>XLXN_37(3 downto 0),
                rb_in=>XLXN_5,
                sel(0 to 1)=>XLXN_41(0 to 1),
                anO(3 downto 0)=>Anode(3 downto 0),
                dpO=>XLXN_8,
                hexO(3 downto 0)=>XLXN_7(3 downto 0));
   
   XLXI_2 : SSD_1dig
      port map (dp_in=>XLXN_8,
                hexD(3 downto 0)=>XLXN_7(3 downto 0),
                sseg(7 downto 0)=>sseg(7 downto 0));
   
   XLXI_3 : PULLUP
      port map (O=>XLXN_5);
   
   XLXI_12 : DCM_50M
      port map (CLK=>clock,
                RST=>XLXN_33,
                CLK1=>open,
                CLK1k=>XLXN_36,
                CLK1M=>open,
                CLK10k=>open);
   
   XLXI_13 : sel_strobeB
      port map (clk=>XLXN_36,
                sel(0 to 1)=>XLXN_41(0 to 1));
   
   XLXI_14 : bin2BCD3en
      port map (CLK=>XLXN_36,
                Din(7 downto 0)=>Din(7 downto 0),
                En=>ButtonEn,
                Dout0(3 downto 0)=>XLXN_40(3 downto 0),
                Dout1(3 downto 0)=>XLXN_39(3 downto 0),
                Dout2(3 downto 0)=>XLXN_38(3 downto 0),
                Dout3(3 downto 0)=>XLXN_37(3 downto 0),
                RBout=>open);
   
   XLXI_15 : PULLDOWN
      port map (O=>XLXN_33);
   
end BEHAVIORAL;


