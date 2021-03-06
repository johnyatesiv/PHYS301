<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="AN1" />
        <signal name="AN2" />
        <signal name="AN3" />
        <signal name="AN0" />
        <signal name="Sw1" />
        <signal name="Sw0" />
        <signal name="FourBitNum(3:0)" />
        <signal name="SSeg(7:0)" />
        <port polarity="Output" name="AN1" />
        <port polarity="Output" name="AN2" />
        <port polarity="Output" name="AN3" />
        <port polarity="Output" name="AN0" />
        <port polarity="Input" name="Sw1" />
        <port polarity="Input" name="Sw0" />
        <port polarity="Input" name="FourBitNum(3:0)" />
        <port polarity="Output" name="SSeg(7:0)" />
        <blockdef name="four_bit_demux">
            <timestamp>2017-10-6T23:50:43</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SSD_1dig">
            <timestamp>2017-10-3T17:20:56</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="four_bit_demux" name="XLXI_2">
            <blockpin signalname="Sw1" name="s1" />
            <blockpin signalname="Sw0" name="s0" />
            <blockpin signalname="AN3" name="AN3" />
            <blockpin signalname="AN0" name="AN0" />
            <blockpin signalname="AN1" name="AN1" />
            <blockpin signalname="AN2" name="AN2" />
        </block>
        <block symbolname="SSD_1dig" name="XLXI_3">
            <blockpin name="dp_in" />
            <blockpin signalname="FourBitNum(3:0)" name="hexD(3:0)" />
            <blockpin signalname="SSeg(7:0)" name="sseg(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="768" y="1440" name="XLXI_2" orien="R0">
        </instance>
        <branch name="AN1">
            <wire x2="1184" y1="1216" y2="1216" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1216" name="AN1" orien="R0" />
        <branch name="AN2">
            <wire x2="1184" y1="1280" y2="1280" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1280" name="AN2" orien="R0" />
        <branch name="AN3">
            <wire x2="1184" y1="1344" y2="1344" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1344" name="AN3" orien="R0" />
        <branch name="AN0">
            <wire x2="1184" y1="1408" y2="1408" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1408" name="AN0" orien="R0" />
        <branch name="Sw1">
            <wire x2="768" y1="1216" y2="1216" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1216" name="Sw1" orien="R180" />
        <branch name="Sw0">
            <wire x2="768" y1="1408" y2="1408" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1408" name="Sw0" orien="R180" />
        <instance x="1152" y="1712" name="XLXI_3" orien="R0">
        </instance>
        <branch name="FourBitNum(3:0)">
            <wire x2="1152" y1="1680" y2="1680" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1680" name="FourBitNum(3:0)" orien="R180" />
        <branch name="SSeg(7:0)">
            <wire x2="1568" y1="1616" y2="1616" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1568" y="1616" name="SSeg(7:0)" orien="R0" />
    </sheet>
</drawing>