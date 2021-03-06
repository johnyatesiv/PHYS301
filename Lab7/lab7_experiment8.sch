<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_19" />
        <signal name="CLKin" />
        <signal name="XLXN_22" />
        <signal name="Q0" />
        <signal name="Q1" />
        <signal name="Q2" />
        <signal name="CLR" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="Q3" />
        <port polarity="Input" name="CLKin" />
        <port polarity="Output" name="Q0" />
        <port polarity="Output" name="Q1" />
        <port polarity="Output" name="Q2" />
        <port polarity="Input" name="CLR" />
        <port polarity="Output" name="Q3" />
        <blockdef name="fdrs">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="DCM_50M">
            <timestamp>2018-10-18T3:30:58</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_10">
            <blockpin signalname="XLXN_19" name="G" />
        </block>
        <block symbolname="DCM_50M" name="XLXI_11">
            <blockpin signalname="CLKin" name="CLK" />
            <blockpin signalname="XLXN_19" name="RST" />
            <blockpin name="CLK1M" />
            <blockpin name="CLK10k" />
            <blockpin name="CLK1k" />
            <blockpin signalname="XLXN_22" name="CLK1" />
        </block>
        <block symbolname="fdrs" name="XLXI_1">
            <blockpin signalname="XLXN_22" name="C" />
            <blockpin signalname="Q3" name="D" />
            <blockpin signalname="CLR" name="R" />
            <blockpin name="S" />
            <blockpin signalname="Q0" name="Q" />
        </block>
        <block symbolname="fdrs" name="XLXI_2">
            <blockpin signalname="XLXN_22" name="C" />
            <blockpin signalname="Q0" name="D" />
            <blockpin signalname="XLXN_25" name="R" />
            <blockpin name="S" />
            <blockpin signalname="Q1" name="Q" />
        </block>
        <block symbolname="fdrs" name="XLXI_3">
            <blockpin signalname="XLXN_22" name="C" />
            <blockpin signalname="Q1" name="D" />
            <blockpin signalname="XLXN_26" name="R" />
            <blockpin name="S" />
            <blockpin signalname="Q2" name="Q" />
        </block>
        <block symbolname="fdrs" name="XLXI_4">
            <blockpin signalname="XLXN_22" name="C" />
            <blockpin signalname="Q2" name="D" />
            <blockpin signalname="XLXN_27" name="R" />
            <blockpin name="S" />
            <blockpin signalname="XLXN_28" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="XLXN_28" name="I" />
            <blockpin signalname="Q3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="432" y="1472" name="XLXI_10" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="496" y1="1312" y2="1344" x1="496" />
        </branch>
        <branch name="CLKin">
            <wire x2="496" y1="1120" y2="1120" x1="480" />
        </branch>
        <instance x="496" y="1344" name="XLXI_11" orien="R0">
        </instance>
        <iomarker fontsize="28" x="480" y="1120" name="CLKin" orien="R180" />
        <instance x="1600" y="1360" name="XLXI_2" orien="R0" />
        <instance x="1088" y="1360" name="XLXI_1" orien="R0" />
        <instance x="2112" y="1360" name="XLXI_3" orien="R0" />
        <instance x="2640" y="1360" name="XLXI_4" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="928" y1="1312" y2="1312" x1="880" />
            <wire x2="976" y1="1312" y2="1312" x1="928" />
            <wire x2="928" y1="1312" y2="1408" x1="928" />
            <wire x2="880" y1="1408" y2="1520" x1="880" />
            <wire x2="1520" y1="1520" y2="1520" x1="880" />
            <wire x2="2000" y1="1520" y2="1520" x1="1520" />
            <wire x2="2512" y1="1520" y2="1520" x1="2000" />
            <wire x2="2992" y1="1520" y2="1520" x1="2512" />
            <wire x2="928" y1="1408" y2="1408" x1="880" />
            <wire x2="976" y1="1232" y2="1312" x1="976" />
            <wire x2="1088" y1="1232" y2="1232" x1="976" />
            <wire x2="1520" y1="1232" y2="1520" x1="1520" />
            <wire x2="1600" y1="1232" y2="1232" x1="1520" />
            <wire x2="2112" y1="1232" y2="1232" x1="2000" />
            <wire x2="2000" y1="1232" y2="1520" x1="2000" />
            <wire x2="2512" y1="1232" y2="1520" x1="2512" />
            <wire x2="2640" y1="1232" y2="1232" x1="2512" />
        </branch>
        <branch name="Q0">
            <wire x2="1520" y1="1104" y2="1104" x1="1472" />
            <wire x2="1600" y1="1104" y2="1104" x1="1520" />
            <wire x2="1520" y1="528" y2="1104" x1="1520" />
        </branch>
        <branch name="Q1">
            <wire x2="2032" y1="1104" y2="1104" x1="1984" />
            <wire x2="2112" y1="1104" y2="1104" x1="2032" />
            <wire x2="2032" y1="544" y2="1104" x1="2032" />
        </branch>
        <branch name="Q2">
            <wire x2="2544" y1="1104" y2="1104" x1="2496" />
            <wire x2="2640" y1="1104" y2="1104" x1="2544" />
            <wire x2="2544" y1="544" y2="1104" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="1520" y="528" name="Q0" orien="R270" />
        <iomarker fontsize="28" x="2032" y="544" name="Q1" orien="R270" />
        <iomarker fontsize="28" x="2544" y="544" name="Q2" orien="R270" />
        <iomarker fontsize="28" x="944" y="736" name="CLR" orien="R180" />
        <branch name="CLR">
            <wire x2="1008" y1="736" y2="736" x1="944" />
            <wire x2="1008" y1="736" y2="1328" x1="1008" />
            <wire x2="1088" y1="1328" y2="1328" x1="1008" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1232" y1="1328" y2="1424" x1="1232" />
            <wire x2="1600" y1="1424" y2="1424" x1="1232" />
            <wire x2="1600" y1="1328" y2="1424" x1="1600" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1680" y1="1328" y2="1424" x1="1680" />
            <wire x2="2112" y1="1424" y2="1424" x1="1680" />
            <wire x2="2112" y1="1328" y2="1424" x1="2112" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2208" y1="1328" y2="1424" x1="2208" />
            <wire x2="2640" y1="1424" y2="1424" x1="2208" />
            <wire x2="2640" y1="1328" y2="1424" x1="2640" />
        </branch>
        <branch name="Q3">
            <wire x2="1024" y1="928" y2="1104" x1="1024" />
            <wire x2="1088" y1="1104" y2="1104" x1="1024" />
            <wire x2="3408" y1="928" y2="928" x1="1024" />
            <wire x2="3408" y1="928" y2="1392" x1="3408" />
            <wire x2="3408" y1="1392" y2="1392" x1="3280" />
            <wire x2="3408" y1="640" y2="928" x1="3408" />
        </branch>
        <iomarker fontsize="28" x="3408" y="640" name="Q3" orien="R270" />
        <instance x="3056" y="1424" name="XLXI_12" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="3040" y1="1104" y2="1104" x1="3024" />
            <wire x2="3040" y1="1104" y2="1392" x1="3040" />
            <wire x2="3056" y1="1392" y2="1392" x1="3040" />
        </branch>
    </sheet>
</drawing>