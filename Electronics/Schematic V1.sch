<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A3L-LOC" urn="urn:adsk.eagle:symbol:13881/1" library_version="1">
<wire x1="288.29" y1="3.81" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="3.81" x2="373.38" y2="3.81" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="383.54" y2="3.81" width="0.1016" layer="94"/>
<wire x1="383.54" y1="3.81" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="383.54" y1="8.89" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="383.54" y1="13.97" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="383.54" y1="19.05" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="3.81" x2="288.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="24.13" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="342.265" y1="24.13" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="373.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="342.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="342.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<text x="344.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="344.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="357.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="343.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="387.35" y2="260.35" columns="8" rows="5" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A3L-LOC" urn="urn:adsk.eagle:component:13942/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A3, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A3L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SSW-130-01-G-S">
<packages>
<package name="SAMTEC_SSW-130-01-G-S">
<wire x1="-1.525" y1="-1.2065" x2="-1.525" y2="1.2065" width="0.1" layer="51"/>
<wire x1="-1.525" y1="1.2065" x2="75.185" y2="1.2065" width="0.1" layer="51"/>
<wire x1="75.185" y1="1.2065" x2="75.185" y2="-1.2065" width="0.1" layer="51"/>
<wire x1="75.185" y1="-1.2065" x2="-1.525" y2="-1.2065" width="0.1" layer="51"/>
<wire x1="-1.525" y1="-1.2065" x2="-1.525" y2="1.2065" width="0.1" layer="51"/>
<wire x1="-1.525" y1="1.2065" x2="75.185" y2="1.2065" width="0.1" layer="51"/>
<wire x1="75.185" y1="1.2065" x2="75.185" y2="-1.2065" width="0.1" layer="51"/>
<wire x1="-1.525" y1="-1.2065" x2="-1.525" y2="1.2065" width="0.2" layer="21"/>
<wire x1="75.185" y1="1.2065" x2="75.185" y2="-1.2065" width="0.2" layer="21"/>
<wire x1="75.185" y1="1.2065" x2="-1.525" y2="1.2065" width="0.2" layer="21"/>
<wire x1="75.185" y1="-1.2065" x2="-1.525" y2="-1.2065" width="0.2" layer="21"/>
<wire x1="-1.775" y1="-1.4565" x2="-1.775" y2="1.4565" width="0.05" layer="39"/>
<wire x1="-1.775" y1="1.4565" x2="75.435" y2="1.4565" width="0.05" layer="39"/>
<wire x1="75.435" y1="1.4565" x2="75.435" y2="-1.4565" width="0.05" layer="39"/>
<wire x1="75.435" y1="-1.4565" x2="-1.775" y2="-1.4565" width="0.05" layer="39"/>
<text x="-2.525" y="2.4565" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.525" y="-3.7065" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-2.175" y="0" radius="0.1" width="0.2" layer="21"/>
<circle x="-2.175" y="0" radius="0.1" width="0.2" layer="51"/>
<pad name="01" x="0" y="0" drill="1.04" diameter="1.39" shape="square"/>
<pad name="02" x="2.54" y="0" drill="1.04" diameter="1.39"/>
<pad name="03" x="5.08" y="0" drill="1.04" diameter="1.39"/>
<pad name="04" x="7.62" y="0" drill="1.04" diameter="1.39"/>
<pad name="05" x="10.16" y="0" drill="1.04" diameter="1.39"/>
<pad name="06" x="12.7" y="0" drill="1.04" diameter="1.39"/>
<pad name="07" x="15.24" y="0" drill="1.04" diameter="1.39"/>
<pad name="08" x="17.78" y="0" drill="1.04" diameter="1.39"/>
<pad name="09" x="20.32" y="0" drill="1.04" diameter="1.39"/>
<pad name="10" x="22.86" y="0" drill="1.04" diameter="1.39"/>
<pad name="11" x="25.4" y="0" drill="1.04" diameter="1.39"/>
<pad name="12" x="27.94" y="0" drill="1.04" diameter="1.39"/>
<pad name="13" x="30.48" y="0" drill="1.04" diameter="1.39"/>
<pad name="14" x="33.02" y="0" drill="1.04" diameter="1.39"/>
<pad name="15" x="35.56" y="0" drill="1.04" diameter="1.39"/>
<pad name="16" x="38.1" y="0" drill="1.04" diameter="1.39"/>
<pad name="17" x="40.64" y="0" drill="1.04" diameter="1.39"/>
<pad name="18" x="43.18" y="0" drill="1.04" diameter="1.39"/>
<pad name="19" x="45.72" y="0" drill="1.04" diameter="1.39"/>
<pad name="20" x="48.26" y="0" drill="1.04" diameter="1.39"/>
<pad name="21" x="50.8" y="0" drill="1.04" diameter="1.39"/>
<pad name="22" x="53.34" y="0" drill="1.04" diameter="1.39"/>
<pad name="23" x="55.88" y="0" drill="1.04" diameter="1.39"/>
<pad name="24" x="58.42" y="0" drill="1.04" diameter="1.39"/>
<pad name="25" x="60.96" y="0" drill="1.04" diameter="1.39"/>
<pad name="26" x="63.5" y="0" drill="1.04" diameter="1.39"/>
<pad name="27" x="66.04" y="0" drill="1.04" diameter="1.39"/>
<pad name="28" x="68.58" y="0" drill="1.04" diameter="1.39"/>
<pad name="29" x="71.12" y="0" drill="1.04" diameter="1.39"/>
<pad name="30" x="73.66" y="0" drill="1.04" diameter="1.39"/>
</package>
</packages>
<symbols>
<symbol name="SSW-130-01-G-S">
<wire x1="-7.62" y1="-38.1" x2="-7.62" y2="40.64" width="0.254" layer="94"/>
<wire x1="-7.62" y1="40.64" x2="7.62" y2="40.64" width="0.254" layer="94"/>
<wire x1="7.62" y1="40.64" x2="7.62" y2="-38.1" width="0.254" layer="94"/>
<wire x1="7.62" y1="-38.1" x2="-7.62" y2="-38.1" width="0.254" layer="94"/>
<text x="-8.12" y="40.64" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-40.64" size="1.778" layer="96">&gt;VALUE</text>
<pin name="01" x="-12.7" y="38.1" length="middle" direction="pas"/>
<pin name="02" x="-12.7" y="35.56" length="middle" direction="pas"/>
<pin name="03" x="-12.7" y="33.02" length="middle" direction="pas"/>
<pin name="04" x="-12.7" y="30.48" length="middle" direction="pas"/>
<pin name="05" x="-12.7" y="27.94" length="middle" direction="pas"/>
<pin name="06" x="-12.7" y="25.4" length="middle" direction="pas"/>
<pin name="07" x="-12.7" y="22.86" length="middle" direction="pas"/>
<pin name="08" x="-12.7" y="20.32" length="middle" direction="pas"/>
<pin name="09" x="-12.7" y="17.78" length="middle" direction="pas"/>
<pin name="10" x="-12.7" y="15.24" length="middle" direction="pas"/>
<pin name="11" x="-12.7" y="12.7" length="middle" direction="pas"/>
<pin name="12" x="-12.7" y="10.16" length="middle" direction="pas"/>
<pin name="13" x="-12.7" y="7.62" length="middle" direction="pas"/>
<pin name="14" x="-12.7" y="5.08" length="middle" direction="pas"/>
<pin name="15" x="-12.7" y="2.54" length="middle" direction="pas"/>
<pin name="16" x="-12.7" y="0" length="middle" direction="pas"/>
<pin name="17" x="-12.7" y="-2.54" length="middle" direction="pas"/>
<pin name="18" x="-12.7" y="-5.08" length="middle" direction="pas"/>
<pin name="19" x="-12.7" y="-7.62" length="middle" direction="pas"/>
<pin name="20" x="-12.7" y="-10.16" length="middle" direction="pas"/>
<pin name="21" x="-12.7" y="-12.7" length="middle" direction="pas"/>
<pin name="22" x="-12.7" y="-15.24" length="middle" direction="pas"/>
<pin name="23" x="-12.7" y="-17.78" length="middle" direction="pas"/>
<pin name="24" x="-12.7" y="-20.32" length="middle" direction="pas"/>
<pin name="25" x="-12.7" y="-22.86" length="middle" direction="pas"/>
<pin name="26" x="-12.7" y="-25.4" length="middle" direction="pas"/>
<pin name="27" x="-12.7" y="-27.94" length="middle" direction="pas"/>
<pin name="28" x="-12.7" y="-30.48" length="middle" direction="pas"/>
<pin name="29" x="-12.7" y="-33.02" length="middle" direction="pas"/>
<pin name="30" x="-12.7" y="-35.56" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SSW-130-01-G-S" prefix="J">
<gates>
<gate name="G$1" symbol="SSW-130-01-G-S" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SAMTEC_SSW-130-01-G-S">
<connects>
<connect gate="G$1" pin="01" pad="01"/>
<connect gate="G$1" pin="02" pad="02"/>
<connect gate="G$1" pin="03" pad="03"/>
<connect gate="G$1" pin="04" pad="04"/>
<connect gate="G$1" pin="05" pad="05"/>
<connect gate="G$1" pin="06" pad="06"/>
<connect gate="G$1" pin="07" pad="07"/>
<connect gate="G$1" pin="08" pad="08"/>
<connect gate="G$1" pin="09" pad="09"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="30" pad="30"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Samtec"/>
<attribute name="PARTREV" value="R"/>
<attribute name="STANDARD" value="Manufacturer Recommendations"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A3L-LOC" device=""/>
<part name="J1" library="SSW-130-01-G-S" deviceset="SSW-130-01-G-S" device=""/>
<part name="J2" library="SSW-130-01-G-S" deviceset="SSW-130-01-G-S" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes">
<attribute name="DRAWING_NAME" x="344.17" y="15.24" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="344.17" y="10.16" size="2.286" layer="94"/>
<attribute name="SHEET" x="357.505" y="5.08" size="2.54" layer="94"/>
</instance>
<instance part="J1" gate="G$1" x="55.88" y="180.34" smashed="yes">
<attribute name="NAME" x="47.76" y="220.98" size="1.778" layer="95"/>
<attribute name="VALUE" x="48.26" y="139.7" size="1.778" layer="96"/>
</instance>
<instance part="J2" gate="G$1" x="121.92" y="180.34" smashed="yes">
<attribute name="NAME" x="113.8" y="220.98" size="1.778" layer="95"/>
<attribute name="VALUE" x="114.3" y="139.7" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
