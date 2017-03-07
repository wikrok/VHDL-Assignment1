<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="Mult8">
            <timestamp>2017-3-6T17:32:1</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ShiftN">
            <timestamp>2017-3-6T17:31:14</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <block symbolname="Mult8" name="XLXI_1">
            <blockpin name="Start" />
            <blockpin name="CLK" />
            <blockpin name="Reset" />
            <blockpin name="A(3:0)" />
            <blockpin name="B(3:0)" />
            <blockpin name="Done" />
            <blockpin name="Result(7:0)" />
        </block>
        <block symbolname="ShiftN" name="XLXI_2">
            <blockpin name="CLK" />
            <blockpin name="CLR" />
            <blockpin name="LoaD" />
            <blockpin name="SH" />
            <blockpin name="DIR" />
            <blockpin name="D" />
            <blockpin name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="960" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1376" y="1568" name="XLXI_2" orien="R0">
        </instance>
    </sheet>
</drawing>