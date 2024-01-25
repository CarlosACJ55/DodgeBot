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
<package name="LQFP144_STM">
<smd name="1" x="-10.7188" y="8.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="2" x="-10.7188" y="8.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="3" x="-10.7188" y="7.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="4" x="-10.7188" y="7.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="5" x="-10.7188" y="6.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="6" x="-10.7188" y="6.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="7" x="-10.7188" y="5.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="8" x="-10.7188" y="5.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="9" x="-10.7188" y="4.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="10" x="-10.7188" y="4.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="11" x="-10.7188" y="3.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="12" x="-10.7188" y="3.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="13" x="-10.7188" y="2.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="14" x="-10.7188" y="2.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="15" x="-10.7188" y="1.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="16" x="-10.7188" y="1.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="17" x="-10.7188" y="0.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="18" x="-10.7188" y="0.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="19" x="-10.7188" y="-0.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="20" x="-10.7188" y="-0.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="21" x="-10.7188" y="-1.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="22" x="-10.7188" y="-1.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="23" x="-10.7188" y="-2.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="24" x="-10.7188" y="-2.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="25" x="-10.7188" y="-3.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="26" x="-10.7188" y="-3.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="27" x="-10.7188" y="-4.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="28" x="-10.7188" y="-4.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="29" x="-10.7188" y="-5.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="30" x="-10.7188" y="-5.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="31" x="-10.7188" y="-6.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="32" x="-10.7188" y="-6.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="33" x="-10.7188" y="-7.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="34" x="-10.7188" y="-7.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="35" x="-10.7188" y="-8.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="36" x="-10.7188" y="-8.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="37" x="-8.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="38" x="-8.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="39" x="-7.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="40" x="-7.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="41" x="-6.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="42" x="-6.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="43" x="-5.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="44" x="-5.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="45" x="-4.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="46" x="-4.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="47" x="-3.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="48" x="-3.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="49" x="-2.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="50" x="-2.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="51" x="-1.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="52" x="-1.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="53" x="-0.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="54" x="-0.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="55" x="0.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="56" x="0.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="57" x="1.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="58" x="1.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="59" x="2.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="60" x="2.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="61" x="3.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="62" x="3.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="63" x="4.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="64" x="4.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="65" x="5.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="66" x="5.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="67" x="6.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="68" x="6.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="69" x="7.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="70" x="7.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="71" x="8.25" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="72" x="8.75" y="-10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="73" x="10.7188" y="-8.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="74" x="10.7188" y="-8.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="75" x="10.7188" y="-7.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="76" x="10.7188" y="-7.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="77" x="10.7188" y="-6.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="78" x="10.7188" y="-6.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="79" x="10.7188" y="-5.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="80" x="10.7188" y="-5.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="81" x="10.7188" y="-4.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="82" x="10.7188" y="-4.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="83" x="10.7188" y="-3.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="84" x="10.7188" y="-3.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="85" x="10.7188" y="-2.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="86" x="10.7188" y="-2.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="87" x="10.7188" y="-1.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="88" x="10.7188" y="-1.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="89" x="10.7188" y="-0.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="90" x="10.7188" y="-0.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="91" x="10.7188" y="0.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="92" x="10.7188" y="0.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="93" x="10.7188" y="1.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="94" x="10.7188" y="1.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="95" x="10.7188" y="2.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="96" x="10.7188" y="2.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="97" x="10.7188" y="3.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="98" x="10.7188" y="3.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="99" x="10.7188" y="4.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="100" x="10.7188" y="4.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="101" x="10.7188" y="5.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="102" x="10.7188" y="5.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="103" x="10.7188" y="6.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="104" x="10.7188" y="6.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="105" x="10.7188" y="7.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="106" x="10.7188" y="7.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="107" x="10.7188" y="8.25" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="108" x="10.7188" y="8.75" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="109" x="8.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="110" x="8.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="111" x="7.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="112" x="7.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="113" x="6.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="114" x="6.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="115" x="5.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="116" x="5.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="117" x="4.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="118" x="4.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="119" x="3.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="120" x="3.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="121" x="2.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="122" x="2.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="123" x="1.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="124" x="1.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="125" x="0.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="126" x="0.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="127" x="-0.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="128" x="-0.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="129" x="-1.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="130" x="-1.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="131" x="-2.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="132" x="-2.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="133" x="-3.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="134" x="-3.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="135" x="-4.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="136" x="-4.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="137" x="-5.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="138" x="-5.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="139" x="-6.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="140" x="-6.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="141" x="-7.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="142" x="-7.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="143" x="-8.25" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="144" x="-8.75" y="10.7188" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<wire x1="-10.2108" y1="-10.2108" x2="-9.2202" y2="-10.2108" width="0.1524" layer="21"/>
<wire x1="10.2108" y1="-10.2108" x2="10.2108" y2="-9.2202" width="0.1524" layer="21"/>
<wire x1="10.2108" y1="10.2108" x2="9.2202" y2="10.2108" width="0.1524" layer="21"/>
<wire x1="-10.2108" y1="10.2108" x2="-10.2108" y2="9.2202" width="0.1524" layer="21"/>
<wire x1="-10.2108" y1="-9.2202" x2="-10.2108" y2="-10.2108" width="0.1524" layer="21"/>
<wire x1="9.2202" y1="-10.2108" x2="10.2108" y2="-10.2108" width="0.1524" layer="21"/>
<wire x1="10.2108" y1="9.2202" x2="10.2108" y2="10.2108" width="0.1524" layer="21"/>
<wire x1="-9.2202" y1="10.2108" x2="-10.2108" y2="10.2108" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-11.9634" y="4.4405"/>
<vertex x="-11.9634" y="4.0595"/>
<vertex x="-11.7094" y="4.0595"/>
<vertex x="-11.7094" y="4.4405"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-11.9634" y="-0.5595"/>
<vertex x="-11.9634" y="-0.9405"/>
<vertex x="-11.7094" y="-0.9405"/>
<vertex x="-11.7094" y="-0.5595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-11.9634" y="-5.5595"/>
<vertex x="-11.9634" y="-5.9405"/>
<vertex x="-11.7094" y="-5.9405"/>
<vertex x="-11.7094" y="-5.5595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-7.4405" y="-11.7094"/>
<vertex x="-7.4405" y="-11.9634"/>
<vertex x="-7.0595" y="-11.9634"/>
<vertex x="-7.0595" y="-11.7094"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-2.4405" y="-11.7094"/>
<vertex x="-2.4405" y="-11.9634"/>
<vertex x="-2.0595" y="-11.9634"/>
<vertex x="-2.0595" y="-11.7094"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="2.5595" y="-11.7094"/>
<vertex x="2.5595" y="-11.9634"/>
<vertex x="2.9405" y="-11.9634"/>
<vertex x="2.9405" y="-11.7094"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="7.5595" y="-11.7094"/>
<vertex x="7.5595" y="-11.9634"/>
<vertex x="7.9405" y="-11.9634"/>
<vertex x="7.9405" y="-11.7094"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="11.9634" y="-5.0595"/>
<vertex x="11.9634" y="-5.4405"/>
<vertex x="11.7094" y="-5.4405"/>
<vertex x="11.7094" y="-5.0595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="11.9634" y="-0.0595"/>
<vertex x="11.9634" y="-0.4405"/>
<vertex x="11.7094" y="-0.4405"/>
<vertex x="11.7094" y="-0.0595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="11.9634" y="4.9405"/>
<vertex x="11.9634" y="4.5595"/>
<vertex x="11.7094" y="4.5595"/>
<vertex x="11.7094" y="4.9405"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="8.0595" y="11.7094"/>
<vertex x="8.0595" y="11.9634"/>
<vertex x="8.4405" y="11.9634"/>
<vertex x="8.4405" y="11.7094"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.0595" y="11.7094"/>
<vertex x="3.0595" y="11.9634"/>
<vertex x="3.4405" y="11.9634"/>
<vertex x="3.4405" y="11.7094"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.9405" y="11.7094"/>
<vertex x="-1.9405" y="11.9634"/>
<vertex x="-1.5595" y="11.9634"/>
<vertex x="-1.5595" y="11.7094"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-6.9405" y="11.7094"/>
<vertex x="-6.9405" y="11.9634"/>
<vertex x="-6.5595" y="11.9634"/>
<vertex x="-6.5595" y="11.7094"/>
</polygon>
<text x="-12.6746" y="8.7376" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="10.7188" y1="8.7376" x2="11.0998" y2="8.7376" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="8.7376" x2="13.6398" y2="8.7376" width="0.1524" layer="47"/>
<wire x1="13.6398" y1="8.7376" x2="14.0208" y2="8.7376" width="0.1524" layer="47"/>
<wire x1="10.7188" y1="8.255" x2="13.6398" y2="8.255" width="0.1524" layer="47"/>
<wire x1="13.6398" y1="8.255" x2="14.0208" y2="8.255" width="0.1524" layer="47"/>
<wire x1="13.6398" y1="8.7376" x2="13.6398" y2="10.0076" width="0.1524" layer="47"/>
<wire x1="13.6398" y1="8.255" x2="13.6398" y2="6.985" width="0.1524" layer="47"/>
<wire x1="13.6398" y1="8.7376" x2="13.5128" y2="8.9916" width="0.1524" layer="47"/>
<wire x1="13.6398" y1="8.7376" x2="13.7668" y2="8.9916" width="0.1524" layer="47"/>
<wire x1="13.5128" y1="8.9916" x2="13.7668" y2="8.9916" width="0.1524" layer="47"/>
<wire x1="13.6398" y1="8.255" x2="13.5128" y2="8.001" width="0.1524" layer="47"/>
<wire x1="13.6398" y1="8.255" x2="13.7668" y2="8.001" width="0.1524" layer="47"/>
<wire x1="13.5128" y1="8.001" x2="13.7668" y2="8.001" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="8.7376" x2="10.3378" y2="13.6398" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.6398" x2="10.3378" y2="14.0208" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="8.7376" x2="11.0998" y2="13.6398" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.6398" x2="9.0678" y2="13.6398" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.6398" x2="12.3698" y2="13.6398" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.6398" x2="10.0838" y2="13.7668" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.6398" x2="10.0838" y2="13.5128" width="0.1524" layer="47"/>
<wire x1="10.0838" y1="13.7668" x2="10.0838" y2="13.5128" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.6398" x2="11.3538" y2="13.7668" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.6398" x2="11.3538" y2="13.5128" width="0.1524" layer="47"/>
<wire x1="11.3538" y1="13.7668" x2="11.3538" y2="13.5128" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="8.7376" x2="-11.0998" y2="15.5448" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.5448" x2="-11.0998" y2="15.9258" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.6398" x2="11.0998" y2="15.5448" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="15.5448" x2="11.0998" y2="15.9258" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.5448" x2="11.0998" y2="15.5448" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.5448" x2="-10.8458" y2="15.6718" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.5448" x2="-10.8458" y2="15.4178" width="0.1524" layer="47"/>
<wire x1="-10.8458" y1="15.6718" x2="-10.8458" y2="15.4178" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="15.5448" x2="10.8458" y2="15.6718" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="15.5448" x2="10.8458" y2="15.4178" width="0.1524" layer="47"/>
<wire x1="10.8458" y1="15.6718" x2="10.8458" y2="15.4178" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-8.7376" x2="-10.1092" y2="-13.6398" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.6398" x2="-10.1092" y2="-14.0208" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-8.7376" x2="10.1092" y2="-13.6398" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-13.6398" x2="10.1092" y2="-14.0208" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.6398" x2="10.1092" y2="-13.6398" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.6398" x2="-9.8552" y2="-13.5128" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.6398" x2="-9.8552" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="-9.8552" y1="-13.5128" x2="-9.8552" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-13.6398" x2="9.8552" y2="-13.5128" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-13.6398" x2="9.8552" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="-13.5128" x2="9.8552" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="-8.7376" y1="10.1092" x2="-13.6398" y2="10.1092" width="0.1524" layer="47"/>
<wire x1="-13.6398" y1="10.1092" x2="-14.0208" y2="10.1092" width="0.1524" layer="47"/>
<wire x1="-8.7376" y1="-10.1092" x2="-13.6398" y2="-10.1092" width="0.1524" layer="47"/>
<wire x1="-13.6398" y1="-10.1092" x2="-14.0208" y2="-10.1092" width="0.1524" layer="47"/>
<wire x1="-13.6398" y1="10.1092" x2="-13.6398" y2="-10.1092" width="0.1524" layer="47"/>
<wire x1="-13.6398" y1="10.1092" x2="-13.7668" y2="9.8552" width="0.1524" layer="47"/>
<wire x1="-13.6398" y1="10.1092" x2="-13.5128" y2="9.8552" width="0.1524" layer="47"/>
<wire x1="-13.7668" y1="9.8552" x2="-13.5128" y2="9.8552" width="0.1524" layer="47"/>
<wire x1="-13.6398" y1="-10.1092" x2="-13.7668" y2="-9.8552" width="0.1524" layer="47"/>
<wire x1="-13.6398" y1="-10.1092" x2="-13.5128" y2="-9.8552" width="0.1524" layer="47"/>
<wire x1="-13.7668" y1="-9.8552" x2="-13.5128" y2="-9.8552" width="0.1524" layer="47"/>
<wire x1="8.7376" y1="11.0998" x2="15.5448" y2="11.0998" width="0.1524" layer="47"/>
<wire x1="15.5448" y1="11.0998" x2="15.9258" y2="11.0998" width="0.1524" layer="47"/>
<wire x1="8.7376" y1="-11.0998" x2="15.5448" y2="-11.0998" width="0.1524" layer="47"/>
<wire x1="15.5448" y1="-11.0998" x2="15.9258" y2="-11.0998" width="0.1524" layer="47"/>
<wire x1="15.5448" y1="11.0998" x2="15.5448" y2="-11.0998" width="0.1524" layer="47"/>
<wire x1="15.5448" y1="11.0998" x2="15.4178" y2="10.8458" width="0.1524" layer="47"/>
<wire x1="15.5448" y1="11.0998" x2="15.6718" y2="10.8458" width="0.1524" layer="47"/>
<wire x1="15.4178" y1="10.8458" x2="15.6718" y2="10.8458" width="0.1524" layer="47"/>
<wire x1="15.5448" y1="-11.0998" x2="15.4178" y2="-10.8458" width="0.1524" layer="47"/>
<wire x1="15.5448" y1="-11.0998" x2="15.6718" y2="-10.8458" width="0.1524" layer="47"/>
<wire x1="15.4178" y1="-10.8458" x2="15.6718" y2="-10.8458" width="0.1524" layer="47"/>
<text x="-18.4658" y="-17.4498" size="1.27" layer="47" ratio="6" rot="SR0">Default Horiz Padstyle: RX11Y58D0T</text>
<text x="-17.907" y="-18.9738" size="1.27" layer="47" ratio="6" rot="SR0">Default Vert Padstyle: RX11Y58D0T</text>
<text x="-14.8082" y="-23.5458" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-25.0698" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="14.1478" y="8.1788" size="0.635" layer="47" ratio="4" rot="SR0">0.02in/0.5mm</text>
<text x="6.9596" y="14.1478" size="0.635" layer="47" ratio="4" rot="SR0">0.03in/0.762mm</text>
<text x="-3.7592" y="16.0528" size="0.635" layer="47" ratio="4" rot="SR0">0.874in/22.2mm</text>
<text x="-4.318" y="-14.7828" size="0.635" layer="47" ratio="4" rot="SR0">0.795in/20.193mm</text>
<text x="-22.8092" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.795in/20.193mm</text>
<text x="16.0528" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.874in/22.2mm</text>
<wire x1="8.6106" y1="10.1092" x2="8.89" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="8.89" y1="10.1092" x2="8.89" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.89" y1="11.0998" x2="8.6106" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="11.0998" x2="8.6106" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="10.1092" x2="8.382" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="8.382" y1="10.1092" x2="8.382" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.382" y1="11.0998" x2="8.1026" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="11.0998" x2="8.1026" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.62" y1="10.1092" x2="7.8994" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="10.1092" x2="7.8994" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="11.0998" x2="7.62" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.62" y1="11.0998" x2="7.62" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.112" y1="10.1092" x2="7.3914" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="10.1092" x2="7.3914" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="11.0998" x2="7.112" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.112" y1="11.0998" x2="7.112" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.604" y1="10.1092" x2="6.8834" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="10.1092" x2="6.8834" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="11.0998" x2="6.604" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.604" y1="11.0998" x2="6.604" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="10.1092" x2="6.4008" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="10.1092" x2="6.4008" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="11.0998" x2="6.1214" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="11.0998" x2="6.1214" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="10.1092" x2="5.8928" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="10.1092" x2="5.8928" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="11.0998" x2="5.6134" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="11.0998" x2="5.6134" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="10.1092" x2="5.3848" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="10.1092" x2="5.3848" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="11.0998" x2="5.1054" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="11.0998" x2="5.1054" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="10.1092" x2="4.9022" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="10.1092" x2="4.9022" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="11.0998" x2="4.6228" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="11.0998" x2="4.6228" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="10.1092" x2="4.3942" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="10.1092" x2="4.3942" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="11.0998" x2="4.1148" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="11.0998" x2="4.1148" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="10.1092" x2="3.8862" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="10.1092" x2="3.8862" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="11.0998" x2="3.6068" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="11.0998" x2="3.6068" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="10.1092" x2="3.3782" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="10.1092" x2="3.3782" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="11.0998" x2="3.0988" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="11.0998" x2="3.0988" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="10.1092" x2="2.8956" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="10.1092" x2="2.8956" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="11.0998" x2="2.6162" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="11.0998" x2="2.6162" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="10.1092" x2="2.3876" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="10.1092" x2="2.3876" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="11.0998" x2="2.1082" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="11.0998" x2="2.1082" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="10.1092" x2="1.8796" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="10.1092" x2="1.8796" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="11.0998" x2="1.6002" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="11.0998" x2="1.6002" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="10.1092" x2="1.397" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.397" y1="10.1092" x2="1.397" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.397" y1="11.0998" x2="1.1176" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="11.0998" x2="1.1176" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="10.1092" x2="0.889" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.889" y1="10.1092" x2="0.889" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.889" y1="11.0998" x2="0.6096" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="11.0998" x2="0.6096" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="10.1092" x2="0.381" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.381" y1="10.1092" x2="0.381" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.381" y1="11.0998" x2="0.1016" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="11.0998" x2="0.1016" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="10.1092" x2="-0.1016" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="10.1092" x2="-0.1016" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="11.0998" x2="-0.381" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="11.0998" x2="-0.381" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="10.1092" x2="-0.6096" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="10.1092" x2="-0.6096" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="11.0998" x2="-0.889" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="11.0998" x2="-0.889" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="10.1092" x2="-1.1176" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="10.1092" x2="-1.1176" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="11.0998" x2="-1.397" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="11.0998" x2="-1.397" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="10.1092" x2="-1.6002" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="10.1092" x2="-1.6002" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="11.0998" x2="-1.8796" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="11.0998" x2="-1.8796" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="10.1092" x2="-2.1082" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="10.1092" x2="-2.1082" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="11.0998" x2="-2.3876" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="11.0998" x2="-2.3876" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="10.1092" x2="-2.6162" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="10.1092" x2="-2.6162" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="11.0998" x2="-2.8956" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="11.0998" x2="-2.8956" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="10.1092" x2="-3.0988" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="10.1092" x2="-3.0988" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="11.0998" x2="-3.3782" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="11.0998" x2="-3.3782" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="10.1092" x2="-3.6068" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="10.1092" x2="-3.6068" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="11.0998" x2="-3.8862" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="11.0998" x2="-3.8862" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="10.1092" x2="-4.1148" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="10.1092" x2="-4.1148" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="11.0998" x2="-4.3942" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="11.0998" x2="-4.3942" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="10.1092" x2="-4.6228" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="10.1092" x2="-4.6228" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="11.0998" x2="-4.9022" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="11.0998" x2="-4.9022" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="10.1092" x2="-5.1054" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="10.1092" x2="-5.1054" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="11.0998" x2="-5.3848" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="11.0998" x2="-5.3848" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="10.1092" x2="-5.6134" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="10.1092" x2="-5.6134" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="11.0998" x2="-5.8928" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="11.0998" x2="-5.8928" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="10.1092" x2="-6.1214" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="10.1092" x2="-6.1214" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="11.0998" x2="-6.4008" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="11.0998" x2="-6.4008" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="10.1092" x2="-6.604" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="10.1092" x2="-6.604" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="11.0998" x2="-6.8834" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="11.0998" x2="-6.8834" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="10.1092" x2="-7.112" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="10.1092" x2="-7.112" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="11.0998" x2="-7.3914" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="11.0998" x2="-7.3914" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="10.0838" x2="-7.62" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="10.0838" x2="-7.62" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="11.0998" x2="-7.8994" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="11.0998" x2="-7.8994" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="10.0838" x2="-8.1026" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="10.0838" x2="-8.1026" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="11.0998" x2="-8.382" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="11.0998" x2="-8.382" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="10.0838" x2="-8.6106" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="10.0838" x2="-8.6106" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="11.0998" x2="-8.89" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="11.0998" x2="-8.89" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.6106" x2="-10.1092" y2="8.8392" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.8392" x2="-10.1092" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.89" x2="-11.0998" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.89" x2="-11.0998" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.6106" x2="-10.1092" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.1026" x2="-10.1092" y2="8.382" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.382" x2="-11.0998" y2="8.382" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.382" x2="-11.0998" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.1026" x2="-10.1092" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.62" x2="-10.1092" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.8994" x2="-11.0998" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.8994" x2="-11.0998" y2="7.62" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.62" x2="-10.1092" y2="7.62" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.112" x2="-10.1092" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.3914" x2="-11.0998" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.3914" x2="-11.0998" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.112" x2="-10.1092" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.604" x2="-10.1092" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.8834" x2="-11.0998" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.8834" x2="-11.0998" y2="6.604" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.604" x2="-10.1092" y2="6.604" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.1214" x2="-10.1092" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.4008" x2="-11.0998" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.4008" x2="-11.0998" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.1214" x2="-10.1092" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.6134" x2="-10.1092" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.8928" x2="-11.0998" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.8928" x2="-11.0998" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.6134" x2="-10.1092" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.1054" x2="-10.1092" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.3848" x2="-11.0998" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.3848" x2="-11.0998" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.1054" x2="-10.1092" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.6228" x2="-10.1092" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.9022" x2="-11.0998" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.9022" x2="-11.0998" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.6228" x2="-10.1092" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.1148" x2="-10.1092" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.3942" x2="-11.0998" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.3942" x2="-11.0998" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.1148" x2="-10.1092" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.6068" x2="-10.1092" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.8862" x2="-11.0998" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.8862" x2="-11.0998" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.6068" x2="-10.1092" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.0988" x2="-10.1092" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.3782" x2="-11.0998" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.3782" x2="-11.0998" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.0988" x2="-10.1092" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.6162" x2="-10.1092" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.8956" x2="-11.0998" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.8956" x2="-11.0998" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.6162" x2="-10.1092" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.1082" x2="-10.1092" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.3876" x2="-11.0998" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.3876" x2="-11.0998" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.1082" x2="-10.1092" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.6002" x2="-10.1092" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.8796" x2="-11.0998" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.8796" x2="-11.0998" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.6002" x2="-10.1092" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.1176" x2="-10.1092" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.397" x2="-11.0998" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.397" x2="-11.0998" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.1176" x2="-10.1092" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.6096" x2="-10.1092" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.889" x2="-11.0998" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.889" x2="-11.0998" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.6096" x2="-10.1092" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.1016" x2="-10.1092" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.381" x2="-11.0998" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.381" x2="-11.0998" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.1016" x2="-10.1092" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.381" x2="-10.1092" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.1016" x2="-11.0998" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.1016" x2="-11.0998" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.381" x2="-10.1092" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.889" x2="-10.1092" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.6096" x2="-11.0998" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.6096" x2="-11.0998" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.889" x2="-10.1092" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.397" x2="-10.1092" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.1176" x2="-11.0998" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.1176" x2="-11.0998" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.397" x2="-10.1092" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.8796" x2="-10.1092" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.6002" x2="-11.0998" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.6002" x2="-11.0998" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.8796" x2="-10.1092" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.3876" x2="-10.1092" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.1082" x2="-11.0998" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.1082" x2="-11.0998" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.3876" x2="-10.1092" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.8956" x2="-10.1092" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.6162" x2="-11.0998" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.6162" x2="-11.0998" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.8956" x2="-10.1092" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.3782" x2="-10.1092" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.0988" x2="-11.0998" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.0988" x2="-11.0998" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.3782" x2="-10.1092" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.8862" x2="-10.1092" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.6068" x2="-11.0998" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.6068" x2="-11.0998" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.8862" x2="-10.1092" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.3942" x2="-10.1092" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.1148" x2="-11.0998" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.1148" x2="-11.0998" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.3942" x2="-10.1092" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.9022" x2="-10.1092" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.6228" x2="-11.0998" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.6228" x2="-11.0998" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.9022" x2="-10.1092" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.3848" x2="-10.1092" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.1054" x2="-11.0998" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.1054" x2="-11.0998" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.3848" x2="-10.1092" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.8928" x2="-10.1092" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.6134" x2="-11.0998" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.6134" x2="-11.0998" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.8928" x2="-10.1092" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.4008" x2="-10.1092" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.1214" x2="-11.0998" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.1214" x2="-11.0998" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.4008" x2="-10.1092" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.8834" x2="-10.1092" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.604" x2="-11.0998" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.604" x2="-11.0998" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.8834" x2="-10.1092" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.3914" x2="-10.1092" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.112" x2="-11.0998" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.112" x2="-11.0998" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.3914" x2="-10.1092" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.8994" x2="-10.1092" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.62" x2="-11.0998" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.62" x2="-11.0998" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.8994" x2="-10.1092" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-8.382" x2="-10.1092" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-8.1026" x2="-11.0998" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.1026" x2="-11.0998" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.382" x2="-10.1092" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="-10.0838" y1="-8.89" x2="-10.0838" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="-10.0838" y1="-8.6106" x2="-11.0998" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.6106" x2="-11.0998" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.89" x2="-10.0838" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="-10.1092" x2="-8.89" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="-10.1092" x2="-8.89" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="-11.0998" x2="-8.6106" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="-11.0998" x2="-8.6106" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-10.1092" x2="-8.382" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="-10.1092" x2="-8.382" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="-11.0998" x2="-8.1026" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-11.0998" x2="-8.1026" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="-10.1092" x2="-7.8994" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="-10.1092" x2="-7.8994" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="-11.0998" x2="-7.62" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="-11.0998" x2="-7.62" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-10.1092" x2="-7.3914" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="-10.1092" x2="-7.3914" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="-11.0998" x2="-7.112" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-11.0998" x2="-7.112" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-10.1092" x2="-6.8834" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="-10.1092" x2="-6.8834" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="-11.0998" x2="-6.604" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-11.0998" x2="-6.604" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="-10.1092" x2="-6.4008" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="-10.1092" x2="-6.4008" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="-11.0998" x2="-6.1214" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="-11.0998" x2="-6.1214" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="-10.1092" x2="-5.8928" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="-10.1092" x2="-5.8928" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="-11.0998" x2="-5.6134" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="-11.0998" x2="-5.6134" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="-10.1092" x2="-5.3848" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="-10.1092" x2="-5.3848" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="-11.0998" x2="-5.1054" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="-11.0998" x2="-5.1054" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="-10.1092" x2="-4.9022" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="-10.1092" x2="-4.9022" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="-11.0998" x2="-4.6228" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="-11.0998" x2="-4.6228" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="-10.1092" x2="-4.3942" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="-10.1092" x2="-4.3942" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="-11.0998" x2="-4.1148" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="-11.0998" x2="-4.1148" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-10.1092" x2="-3.8862" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-10.1092" x2="-3.8862" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-11.0998" x2="-3.6068" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-11.0998" x2="-3.6068" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-10.1092" x2="-3.3782" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-10.1092" x2="-3.3782" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-11.0998" x2="-3.0988" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-11.0998" x2="-3.0988" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-10.1092" x2="-2.8956" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-10.1092" x2="-2.8956" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-11.0998" x2="-2.6162" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-11.0998" x2="-2.6162" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-10.1092" x2="-2.3876" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-10.1092" x2="-2.3876" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-11.0998" x2="-2.1082" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-11.0998" x2="-2.1082" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-10.1092" x2="-1.8796" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-10.1092" x2="-1.8796" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-11.0998" x2="-1.6002" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-11.0998" x2="-1.6002" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-10.1092" x2="-1.397" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-10.1092" x2="-1.397" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-11.0998" x2="-1.1176" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-11.0998" x2="-1.1176" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-10.1092" x2="-0.889" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-10.1092" x2="-0.889" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-11.0998" x2="-0.6096" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-11.0998" x2="-0.6096" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-10.1092" x2="-0.381" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-10.1092" x2="-0.381" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-11.0998" x2="-0.1016" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-11.0998" x2="-0.1016" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-10.1092" x2="0.1016" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-10.1092" x2="0.1016" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-11.0998" x2="0.381" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-11.0998" x2="0.381" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-10.1092" x2="0.6096" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-10.1092" x2="0.6096" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-11.0998" x2="0.889" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-11.0998" x2="0.889" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-10.1092" x2="1.1176" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-10.1092" x2="1.1176" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-11.0998" x2="1.397" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-11.0998" x2="1.397" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-10.1092" x2="1.6002" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-10.1092" x2="1.6002" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-11.0998" x2="1.8796" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-11.0998" x2="1.8796" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-10.1092" x2="2.1082" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-10.1092" x2="2.1082" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-11.0998" x2="2.3876" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-11.0998" x2="2.3876" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-10.1092" x2="2.6162" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-10.1092" x2="2.6162" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-11.0998" x2="2.8956" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-11.0998" x2="2.8956" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-10.1092" x2="3.0988" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-10.1092" x2="3.0988" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-11.0998" x2="3.3782" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-11.0998" x2="3.3782" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-10.1092" x2="3.6068" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-10.1092" x2="3.6068" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-11.0998" x2="3.8862" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-11.0998" x2="3.8862" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="-10.1092" x2="4.1148" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="-10.1092" x2="4.1148" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="-11.0998" x2="4.3942" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="-11.0998" x2="4.3942" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="-10.1092" x2="4.6228" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="-10.1092" x2="4.6228" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="-11.0998" x2="4.9022" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="-11.0998" x2="4.9022" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="-10.1092" x2="5.1054" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="-10.1092" x2="5.1054" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="-11.0998" x2="5.3848" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="-11.0998" x2="5.3848" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="-10.1092" x2="5.6134" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="-10.1092" x2="5.6134" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="-11.0998" x2="5.8928" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="-11.0998" x2="5.8928" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="-10.1092" x2="6.1214" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-10.1092" x2="6.1214" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-11.0998" x2="6.4008" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="-11.0998" x2="6.4008" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="-10.1092" x2="6.604" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-10.1092" x2="6.604" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-11.0998" x2="6.8834" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="-11.0998" x2="6.8834" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="-10.1092" x2="7.112" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-10.1092" x2="7.112" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-11.0998" x2="7.3914" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="-11.0998" x2="7.3914" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="-10.1092" x2="7.62" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.62" y1="-10.1092" x2="7.62" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.62" y1="-11.0998" x2="7.8994" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="-11.0998" x2="7.8994" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.382" y1="-10.1092" x2="8.1026" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-10.1092" x2="8.1026" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-11.0998" x2="8.382" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.382" y1="-11.0998" x2="8.382" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.89" y1="-10.1092" x2="8.6106" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="-10.1092" x2="8.6106" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="-11.0998" x2="8.89" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.89" y1="-11.0998" x2="8.89" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.6106" x2="10.1092" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.89" x2="11.0998" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.89" x2="11.0998" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.6106" x2="10.1092" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.1026" x2="10.1092" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.382" x2="11.0998" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.382" x2="11.0998" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.1026" x2="10.1092" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.62" x2="10.1092" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.8994" x2="11.0998" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.8994" x2="11.0998" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.62" x2="10.1092" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.112" x2="10.1092" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.3914" x2="11.0998" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.3914" x2="11.0998" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.112" x2="10.1092" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.604" x2="10.1092" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.8834" x2="11.0998" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.8834" x2="11.0998" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.604" x2="10.1092" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.1214" x2="10.1092" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.4008" x2="11.0998" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.4008" x2="11.0998" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.1214" x2="10.1092" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.6134" x2="10.1092" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.8928" x2="11.0998" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.8928" x2="11.0998" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.6134" x2="10.1092" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.1054" x2="10.1092" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.3848" x2="11.0998" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.3848" x2="11.0998" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.1054" x2="10.1092" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.6228" x2="10.1092" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.9022" x2="11.0998" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.9022" x2="11.0998" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.6228" x2="10.1092" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.1148" x2="10.1092" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.3942" x2="11.0998" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.3942" x2="11.0998" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.1148" x2="10.1092" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.6068" x2="10.1092" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.8862" x2="11.0998" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.8862" x2="11.0998" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.6068" x2="10.1092" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.0988" x2="10.1092" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.3782" x2="11.0998" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.3782" x2="11.0998" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.0988" x2="10.1092" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.6162" x2="10.1092" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.8956" x2="11.0998" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.8956" x2="11.0998" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.6162" x2="10.1092" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.1082" x2="10.1092" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.3876" x2="11.0998" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.3876" x2="11.0998" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.1082" x2="10.1092" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.6002" x2="10.1092" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.8796" x2="11.0998" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.8796" x2="11.0998" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.6002" x2="10.1092" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.1176" x2="10.1092" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.397" x2="11.0998" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.397" x2="11.0998" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.1176" x2="10.1092" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.6096" x2="10.1092" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.889" x2="11.0998" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.889" x2="11.0998" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.6096" x2="10.1092" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.1016" x2="10.1092" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.381" x2="11.0998" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.381" x2="11.0998" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.1016" x2="10.1092" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.381" x2="10.1092" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.1016" x2="11.0998" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.1016" x2="11.0998" y2="0.381" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.381" x2="10.1092" y2="0.381" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.889" x2="10.1092" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.6096" x2="11.0998" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.6096" x2="11.0998" y2="0.889" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.889" x2="10.1092" y2="0.889" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.397" x2="10.1092" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.1176" x2="11.0998" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.1176" x2="11.0998" y2="1.397" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.397" x2="10.1092" y2="1.397" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.8796" x2="10.1092" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.6002" x2="11.0998" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.6002" x2="11.0998" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.8796" x2="10.1092" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.3876" x2="10.1092" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.1082" x2="11.0998" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.1082" x2="11.0998" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.3876" x2="10.1092" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.8956" x2="10.1092" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.6162" x2="11.0998" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.6162" x2="11.0998" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.8956" x2="10.1092" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.3782" x2="10.1092" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.0988" x2="11.0998" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.0988" x2="11.0998" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.3782" x2="10.1092" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.8862" x2="10.1092" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.6068" x2="11.0998" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.6068" x2="11.0998" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.8862" x2="10.1092" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.3942" x2="10.1092" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.1148" x2="11.0998" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.1148" x2="11.0998" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.3942" x2="10.1092" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.9022" x2="10.1092" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.6228" x2="11.0998" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.6228" x2="11.0998" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.9022" x2="10.1092" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.3848" x2="10.1092" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.1054" x2="11.0998" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.1054" x2="11.0998" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.3848" x2="10.1092" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.8928" x2="10.1092" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.6134" x2="11.0998" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.6134" x2="11.0998" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.8928" x2="10.1092" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.4008" x2="10.1092" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.1214" x2="11.0998" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.1214" x2="11.0998" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.4008" x2="10.1092" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.8834" x2="10.1092" y2="6.604" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.604" x2="11.0998" y2="6.604" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.604" x2="11.0998" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.8834" x2="10.1092" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.3914" x2="10.1092" y2="7.112" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.112" x2="11.0998" y2="7.112" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.112" x2="11.0998" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.3914" x2="10.1092" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.8994" x2="10.1092" y2="7.62" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.62" x2="11.0998" y2="7.62" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.62" x2="11.0998" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.8994" x2="10.1092" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.382" x2="10.1092" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.1026" x2="11.0998" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.1026" x2="11.0998" y2="8.382" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.382" x2="10.1092" y2="8.382" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.89" x2="10.1092" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.6106" x2="11.0998" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.6106" x2="11.0998" y2="8.89" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.89" x2="10.1092" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.8392" x2="-8.8392" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-10.1092" x2="10.1092" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-10.1092" x2="10.1092" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="10.1092" x2="-10.1092" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="10.1092" x2="-10.1092" y2="-10.1092" width="0.1524" layer="51"/>
<text x="-10.287" y="8.3566" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="LQFP144_STM-M">
<smd name="1" x="-10.7696" y="8.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="2" x="-10.7696" y="8.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="3" x="-10.7696" y="7.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="4" x="-10.7696" y="7.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="5" x="-10.7696" y="6.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="6" x="-10.7696" y="6.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="7" x="-10.7696" y="5.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="8" x="-10.7696" y="5.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="9" x="-10.7696" y="4.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="10" x="-10.7696" y="4.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="11" x="-10.7696" y="3.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="12" x="-10.7696" y="3.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="13" x="-10.7696" y="2.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="14" x="-10.7696" y="2.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="15" x="-10.7696" y="1.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="16" x="-10.7696" y="1.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="17" x="-10.7696" y="0.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="18" x="-10.7696" y="0.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="19" x="-10.7696" y="-0.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="20" x="-10.7696" y="-0.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="21" x="-10.7696" y="-1.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="22" x="-10.7696" y="-1.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="23" x="-10.7696" y="-2.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="24" x="-10.7696" y="-2.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="25" x="-10.7696" y="-3.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="26" x="-10.7696" y="-3.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="27" x="-10.7696" y="-4.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="28" x="-10.7696" y="-4.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="29" x="-10.7696" y="-5.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="30" x="-10.7696" y="-5.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="31" x="-10.7696" y="-6.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="32" x="-10.7696" y="-6.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="33" x="-10.7696" y="-7.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="34" x="-10.7696" y="-7.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="35" x="-10.7696" y="-8.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="36" x="-10.7696" y="-8.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="37" x="-8.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="38" x="-8.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="39" x="-7.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="40" x="-7.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="41" x="-6.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="42" x="-6.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="43" x="-5.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="44" x="-5.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="45" x="-4.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="46" x="-4.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="47" x="-3.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="48" x="-3.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="49" x="-2.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="50" x="-2.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="51" x="-1.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="52" x="-1.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="53" x="-0.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="54" x="-0.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="55" x="0.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="56" x="0.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="57" x="1.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="58" x="1.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="59" x="2.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="60" x="2.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="61" x="3.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="62" x="3.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="63" x="4.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="64" x="4.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="65" x="5.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="66" x="5.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="67" x="6.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="68" x="6.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="69" x="7.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="70" x="7.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="71" x="8.25" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="72" x="8.75" y="-10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="73" x="10.7696" y="-8.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="74" x="10.7696" y="-8.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="75" x="10.7696" y="-7.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="76" x="10.7696" y="-7.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="77" x="10.7696" y="-6.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="78" x="10.7696" y="-6.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="79" x="10.7696" y="-5.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="80" x="10.7696" y="-5.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="81" x="10.7696" y="-4.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="82" x="10.7696" y="-4.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="83" x="10.7696" y="-3.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="84" x="10.7696" y="-3.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="85" x="10.7696" y="-2.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="86" x="10.7696" y="-2.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="87" x="10.7696" y="-1.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="88" x="10.7696" y="-1.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="89" x="10.7696" y="-0.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="90" x="10.7696" y="-0.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="91" x="10.7696" y="0.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="92" x="10.7696" y="0.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="93" x="10.7696" y="1.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="94" x="10.7696" y="1.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="95" x="10.7696" y="2.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="96" x="10.7696" y="2.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="97" x="10.7696" y="3.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="98" x="10.7696" y="3.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="99" x="10.7696" y="4.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="100" x="10.7696" y="4.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="101" x="10.7696" y="5.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="102" x="10.7696" y="5.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="103" x="10.7696" y="6.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="104" x="10.7696" y="6.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="105" x="10.7696" y="7.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="106" x="10.7696" y="7.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="107" x="10.7696" y="8.25" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="108" x="10.7696" y="8.75" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="109" x="8.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="110" x="8.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="111" x="7.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="112" x="7.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="113" x="6.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="114" x="6.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="115" x="5.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="116" x="5.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="117" x="4.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="118" x="4.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="119" x="3.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="120" x="3.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="121" x="2.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="122" x="2.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="123" x="1.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="124" x="1.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="125" x="0.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="126" x="0.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="127" x="-0.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="128" x="-0.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="129" x="-1.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="130" x="-1.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="131" x="-2.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="132" x="-2.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="133" x="-3.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="134" x="-3.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="135" x="-4.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="136" x="-4.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="137" x="-5.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="138" x="-5.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="139" x="-6.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="140" x="-6.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="141" x="-7.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="142" x="-7.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="143" x="-8.25" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="144" x="-8.75" y="10.7696" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<wire x1="-10.2108" y1="10.2108" x2="-10.2108" y2="9.2202" width="0.1524" layer="21"/>
<wire x1="-10.2108" y1="-10.2108" x2="-9.2202" y2="-10.2108" width="0.1524" layer="21"/>
<wire x1="10.2108" y1="-10.2108" x2="10.2108" y2="-9.2202" width="0.1524" layer="21"/>
<wire x1="10.2108" y1="10.2108" x2="9.2202" y2="10.2108" width="0.1524" layer="21"/>
<wire x1="-10.2108" y1="-9.2202" x2="-10.2108" y2="-10.2108" width="0.1524" layer="21"/>
<wire x1="9.2202" y1="-10.2108" x2="10.2108" y2="-10.2108" width="0.1524" layer="21"/>
<wire x1="10.2108" y1="9.2202" x2="10.2108" y2="10.2108" width="0.1524" layer="21"/>
<wire x1="-9.2202" y1="10.2108" x2="-10.2108" y2="10.2108" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-12.1666" y="4.4405"/>
<vertex x="-12.1666" y="4.0595"/>
<vertex x="-11.9126" y="4.0595"/>
<vertex x="-11.9126" y="4.4405"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-12.1666" y="-0.5595"/>
<vertex x="-12.1666" y="-0.9405"/>
<vertex x="-11.9126" y="-0.9405"/>
<vertex x="-11.9126" y="-0.5595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-12.1666" y="-5.5595"/>
<vertex x="-12.1666" y="-5.9405"/>
<vertex x="-11.9126" y="-5.9405"/>
<vertex x="-11.9126" y="-5.5595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-7.4405" y="-11.9126"/>
<vertex x="-7.4405" y="-12.1666"/>
<vertex x="-7.0595" y="-12.1666"/>
<vertex x="-7.0595" y="-11.9126"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-2.4405" y="-11.9126"/>
<vertex x="-2.4405" y="-12.1666"/>
<vertex x="-2.0595" y="-12.1666"/>
<vertex x="-2.0595" y="-11.9126"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="2.5595" y="-11.9126"/>
<vertex x="2.5595" y="-12.1666"/>
<vertex x="2.9405" y="-12.1666"/>
<vertex x="2.9405" y="-11.9126"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="7.5595" y="-11.9126"/>
<vertex x="7.5595" y="-12.1666"/>
<vertex x="7.9405" y="-12.1666"/>
<vertex x="7.9405" y="-11.9126"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="12.1666" y="-5.0595"/>
<vertex x="12.1666" y="-5.4405"/>
<vertex x="11.9126" y="-5.4405"/>
<vertex x="11.9126" y="-5.0595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="12.1666" y="-0.0595"/>
<vertex x="12.1666" y="-0.4405"/>
<vertex x="11.9126" y="-0.4405"/>
<vertex x="11.9126" y="-0.0595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="12.1666" y="4.9405"/>
<vertex x="12.1666" y="4.5595"/>
<vertex x="11.9126" y="4.5595"/>
<vertex x="11.9126" y="4.9405"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="8.0595" y="11.9126"/>
<vertex x="8.0595" y="12.1666"/>
<vertex x="8.4405" y="12.1666"/>
<vertex x="8.4405" y="11.9126"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.0595" y="11.9126"/>
<vertex x="3.0595" y="12.1666"/>
<vertex x="3.4405" y="12.1666"/>
<vertex x="3.4405" y="11.9126"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.9405" y="11.9126"/>
<vertex x="-1.9405" y="12.1666"/>
<vertex x="-1.5595" y="12.1666"/>
<vertex x="-1.5595" y="11.9126"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-6.9405" y="11.9126"/>
<vertex x="-6.9405" y="12.1666"/>
<vertex x="-6.5595" y="12.1666"/>
<vertex x="-6.5595" y="11.9126"/>
</polygon>
<text x="-12.8778" y="8.7376" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="10.7696" y1="8.7376" x2="11.0998" y2="8.7376" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="8.7376" x2="13.6906" y2="8.7376" width="0.1524" layer="47"/>
<wire x1="13.6906" y1="8.7376" x2="14.0716" y2="8.7376" width="0.1524" layer="47"/>
<wire x1="10.7696" y1="8.255" x2="13.6906" y2="8.255" width="0.1524" layer="47"/>
<wire x1="13.6906" y1="8.255" x2="14.0716" y2="8.255" width="0.1524" layer="47"/>
<wire x1="13.6906" y1="8.7376" x2="13.6906" y2="10.0076" width="0.1524" layer="47"/>
<wire x1="13.6906" y1="8.255" x2="13.6906" y2="6.985" width="0.1524" layer="47"/>
<wire x1="13.6906" y1="8.7376" x2="13.5636" y2="8.9916" width="0.1524" layer="47"/>
<wire x1="13.6906" y1="8.7376" x2="13.8176" y2="8.9916" width="0.1524" layer="47"/>
<wire x1="13.5636" y1="8.9916" x2="13.8176" y2="8.9916" width="0.1524" layer="47"/>
<wire x1="13.6906" y1="8.255" x2="13.5636" y2="8.001" width="0.1524" layer="47"/>
<wire x1="13.6906" y1="8.255" x2="13.8176" y2="8.001" width="0.1524" layer="47"/>
<wire x1="13.5636" y1="8.001" x2="13.8176" y2="8.001" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="8.7376" x2="10.3378" y2="13.6906" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.6906" x2="10.3378" y2="14.0716" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="8.7376" x2="11.0998" y2="13.6906" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.6906" x2="9.0678" y2="13.6906" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.6906" x2="12.3698" y2="13.6906" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.6906" x2="10.0838" y2="13.8176" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.6906" x2="10.0838" y2="13.5636" width="0.1524" layer="47"/>
<wire x1="10.0838" y1="13.8176" x2="10.0838" y2="13.5636" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.6906" x2="11.3538" y2="13.8176" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.6906" x2="11.3538" y2="13.5636" width="0.1524" layer="47"/>
<wire x1="11.3538" y1="13.8176" x2="11.3538" y2="13.5636" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="8.7376" x2="-11.0998" y2="15.5956" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.5956" x2="-11.0998" y2="15.9766" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.6906" x2="11.0998" y2="15.5956" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="15.5956" x2="11.0998" y2="15.9766" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.5956" x2="11.0998" y2="15.5956" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.5956" x2="-10.8458" y2="15.7226" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.5956" x2="-10.8458" y2="15.4686" width="0.1524" layer="47"/>
<wire x1="-10.8458" y1="15.7226" x2="-10.8458" y2="15.4686" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="15.5956" x2="10.8458" y2="15.7226" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="15.5956" x2="10.8458" y2="15.4686" width="0.1524" layer="47"/>
<wire x1="10.8458" y1="15.7226" x2="10.8458" y2="15.4686" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-8.7376" x2="-10.1092" y2="-13.6906" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.6906" x2="-10.1092" y2="-14.0716" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-8.7376" x2="10.1092" y2="-13.6906" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-13.6906" x2="10.1092" y2="-14.0716" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.6906" x2="10.1092" y2="-13.6906" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.6906" x2="-9.8552" y2="-13.5636" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.6906" x2="-9.8552" y2="-13.8176" width="0.1524" layer="47"/>
<wire x1="-9.8552" y1="-13.5636" x2="-9.8552" y2="-13.8176" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-13.6906" x2="9.8552" y2="-13.5636" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-13.6906" x2="9.8552" y2="-13.8176" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="-13.5636" x2="9.8552" y2="-13.8176" width="0.1524" layer="47"/>
<wire x1="-8.7376" y1="10.1092" x2="-13.6906" y2="10.1092" width="0.1524" layer="47"/>
<wire x1="-13.6906" y1="10.1092" x2="-14.0716" y2="10.1092" width="0.1524" layer="47"/>
<wire x1="-8.7376" y1="-10.1092" x2="-13.6906" y2="-10.1092" width="0.1524" layer="47"/>
<wire x1="-13.6906" y1="-10.1092" x2="-14.0716" y2="-10.1092" width="0.1524" layer="47"/>
<wire x1="-13.6906" y1="10.1092" x2="-13.6906" y2="-10.1092" width="0.1524" layer="47"/>
<wire x1="-13.6906" y1="10.1092" x2="-13.8176" y2="9.8552" width="0.1524" layer="47"/>
<wire x1="-13.6906" y1="10.1092" x2="-13.5636" y2="9.8552" width="0.1524" layer="47"/>
<wire x1="-13.8176" y1="9.8552" x2="-13.5636" y2="9.8552" width="0.1524" layer="47"/>
<wire x1="-13.6906" y1="-10.1092" x2="-13.8176" y2="-9.8552" width="0.1524" layer="47"/>
<wire x1="-13.6906" y1="-10.1092" x2="-13.5636" y2="-9.8552" width="0.1524" layer="47"/>
<wire x1="-13.8176" y1="-9.8552" x2="-13.5636" y2="-9.8552" width="0.1524" layer="47"/>
<wire x1="8.7376" y1="11.0998" x2="15.5956" y2="11.0998" width="0.1524" layer="47"/>
<wire x1="15.5956" y1="11.0998" x2="15.9766" y2="11.0998" width="0.1524" layer="47"/>
<wire x1="8.7376" y1="-11.0998" x2="15.5956" y2="-11.0998" width="0.1524" layer="47"/>
<wire x1="15.5956" y1="-11.0998" x2="15.9766" y2="-11.0998" width="0.1524" layer="47"/>
<wire x1="15.5956" y1="11.0998" x2="15.5956" y2="-11.0998" width="0.1524" layer="47"/>
<wire x1="15.5956" y1="11.0998" x2="15.4686" y2="10.8458" width="0.1524" layer="47"/>
<wire x1="15.5956" y1="11.0998" x2="15.7226" y2="10.8458" width="0.1524" layer="47"/>
<wire x1="15.4686" y1="10.8458" x2="15.7226" y2="10.8458" width="0.1524" layer="47"/>
<wire x1="15.5956" y1="-11.0998" x2="15.4686" y2="-10.8458" width="0.1524" layer="47"/>
<wire x1="15.5956" y1="-11.0998" x2="15.7226" y2="-10.8458" width="0.1524" layer="47"/>
<wire x1="15.4686" y1="-10.8458" x2="15.7226" y2="-10.8458" width="0.1524" layer="47"/>
<text x="-18.4658" y="-17.5006" size="1.27" layer="47" ratio="6" rot="SR0">Default Horiz Padstyle: RX11Y70D0T</text>
<text x="-17.907" y="-19.0246" size="1.27" layer="47" ratio="6" rot="SR0">Default Vert Padstyle: RX11Y70D0T</text>
<text x="-14.8082" y="-23.5966" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-25.1206" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="14.1986" y="8.1788" size="0.635" layer="47" ratio="4" rot="SR0">0.02in/0.5mm</text>
<text x="6.9596" y="14.1986" size="0.635" layer="47" ratio="4" rot="SR0">0.03in/0.762mm</text>
<text x="-3.7592" y="16.1036" size="0.635" layer="47" ratio="4" rot="SR0">0.874in/22.2mm</text>
<text x="-4.318" y="-14.8336" size="0.635" layer="47" ratio="4" rot="SR0">0.795in/20.193mm</text>
<text x="-22.86" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.795in/20.193mm</text>
<text x="16.1036" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.874in/22.2mm</text>
<wire x1="8.6106" y1="10.1092" x2="8.89" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="8.89" y1="10.1092" x2="8.89" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.89" y1="11.0998" x2="8.6106" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="11.0998" x2="8.6106" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="10.1092" x2="8.382" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="8.382" y1="10.1092" x2="8.382" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.382" y1="11.0998" x2="8.1026" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="11.0998" x2="8.1026" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.62" y1="10.1092" x2="7.8994" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="10.1092" x2="7.8994" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="11.0998" x2="7.62" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.62" y1="11.0998" x2="7.62" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.112" y1="10.1092" x2="7.3914" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="10.1092" x2="7.3914" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="11.0998" x2="7.112" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.112" y1="11.0998" x2="7.112" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.604" y1="10.1092" x2="6.8834" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="10.1092" x2="6.8834" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="11.0998" x2="6.604" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.604" y1="11.0998" x2="6.604" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="10.1092" x2="6.4008" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="10.1092" x2="6.4008" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="11.0998" x2="6.1214" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="11.0998" x2="6.1214" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="10.1092" x2="5.8928" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="10.1092" x2="5.8928" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="11.0998" x2="5.6134" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="11.0998" x2="5.6134" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="10.1092" x2="5.3848" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="10.1092" x2="5.3848" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="11.0998" x2="5.1054" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="11.0998" x2="5.1054" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="10.1092" x2="4.9022" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="10.1092" x2="4.9022" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="11.0998" x2="4.6228" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="11.0998" x2="4.6228" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="10.1092" x2="4.3942" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="10.1092" x2="4.3942" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="11.0998" x2="4.1148" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="11.0998" x2="4.1148" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="10.1092" x2="3.8862" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="10.1092" x2="3.8862" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="11.0998" x2="3.6068" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="11.0998" x2="3.6068" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="10.1092" x2="3.3782" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="10.1092" x2="3.3782" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="11.0998" x2="3.0988" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="11.0998" x2="3.0988" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="10.1092" x2="2.8956" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="10.1092" x2="2.8956" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="11.0998" x2="2.6162" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="11.0998" x2="2.6162" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="10.1092" x2="2.3876" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="10.1092" x2="2.3876" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="11.0998" x2="2.1082" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="11.0998" x2="2.1082" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="10.1092" x2="1.8796" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="10.1092" x2="1.8796" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="11.0998" x2="1.6002" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="11.0998" x2="1.6002" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="10.1092" x2="1.397" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.397" y1="10.1092" x2="1.397" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.397" y1="11.0998" x2="1.1176" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="11.0998" x2="1.1176" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="10.1092" x2="0.889" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.889" y1="10.1092" x2="0.889" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.889" y1="11.0998" x2="0.6096" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="11.0998" x2="0.6096" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="10.1092" x2="0.381" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.381" y1="10.1092" x2="0.381" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.381" y1="11.0998" x2="0.1016" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="11.0998" x2="0.1016" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="10.1092" x2="-0.1016" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="10.1092" x2="-0.1016" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="11.0998" x2="-0.381" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="11.0998" x2="-0.381" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="10.1092" x2="-0.6096" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="10.1092" x2="-0.6096" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="11.0998" x2="-0.889" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="11.0998" x2="-0.889" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="10.1092" x2="-1.1176" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="10.1092" x2="-1.1176" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="11.0998" x2="-1.397" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="11.0998" x2="-1.397" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="10.1092" x2="-1.6002" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="10.1092" x2="-1.6002" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="11.0998" x2="-1.8796" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="11.0998" x2="-1.8796" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="10.1092" x2="-2.1082" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="10.1092" x2="-2.1082" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="11.0998" x2="-2.3876" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="11.0998" x2="-2.3876" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="10.1092" x2="-2.6162" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="10.1092" x2="-2.6162" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="11.0998" x2="-2.8956" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="11.0998" x2="-2.8956" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="10.1092" x2="-3.0988" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="10.1092" x2="-3.0988" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="11.0998" x2="-3.3782" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="11.0998" x2="-3.3782" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="10.1092" x2="-3.6068" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="10.1092" x2="-3.6068" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="11.0998" x2="-3.8862" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="11.0998" x2="-3.8862" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="10.1092" x2="-4.1148" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="10.1092" x2="-4.1148" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="11.0998" x2="-4.3942" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="11.0998" x2="-4.3942" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="10.1092" x2="-4.6228" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="10.1092" x2="-4.6228" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="11.0998" x2="-4.9022" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="11.0998" x2="-4.9022" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="10.1092" x2="-5.1054" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="10.1092" x2="-5.1054" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="11.0998" x2="-5.3848" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="11.0998" x2="-5.3848" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="10.1092" x2="-5.6134" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="10.1092" x2="-5.6134" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="11.0998" x2="-5.8928" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="11.0998" x2="-5.8928" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="10.1092" x2="-6.1214" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="10.1092" x2="-6.1214" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="11.0998" x2="-6.4008" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="11.0998" x2="-6.4008" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="10.1092" x2="-6.604" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="10.1092" x2="-6.604" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="11.0998" x2="-6.8834" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="11.0998" x2="-6.8834" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="10.1092" x2="-7.112" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="10.1092" x2="-7.112" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="11.0998" x2="-7.3914" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="11.0998" x2="-7.3914" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="10.0838" x2="-7.62" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="10.0838" x2="-7.62" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="11.0998" x2="-7.8994" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="11.0998" x2="-7.8994" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="10.0838" x2="-8.1026" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="10.0838" x2="-8.1026" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="11.0998" x2="-8.382" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="11.0998" x2="-8.382" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="10.0838" x2="-8.6106" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="10.0838" x2="-8.6106" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="11.0998" x2="-8.89" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="11.0998" x2="-8.89" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.6106" x2="-10.1092" y2="8.8392" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.8392" x2="-10.1092" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.89" x2="-11.0998" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.89" x2="-11.0998" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.6106" x2="-10.1092" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.1026" x2="-10.1092" y2="8.382" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.382" x2="-11.0998" y2="8.382" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.382" x2="-11.0998" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.1026" x2="-10.1092" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.62" x2="-10.1092" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.8994" x2="-11.0998" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.8994" x2="-11.0998" y2="7.62" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.62" x2="-10.1092" y2="7.62" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.112" x2="-10.1092" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.3914" x2="-11.0998" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.3914" x2="-11.0998" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.112" x2="-10.1092" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.604" x2="-10.1092" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.8834" x2="-11.0998" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.8834" x2="-11.0998" y2="6.604" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.604" x2="-10.1092" y2="6.604" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.1214" x2="-10.1092" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.4008" x2="-11.0998" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.4008" x2="-11.0998" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.1214" x2="-10.1092" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.6134" x2="-10.1092" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.8928" x2="-11.0998" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.8928" x2="-11.0998" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.6134" x2="-10.1092" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.1054" x2="-10.1092" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.3848" x2="-11.0998" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.3848" x2="-11.0998" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.1054" x2="-10.1092" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.6228" x2="-10.1092" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.9022" x2="-11.0998" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.9022" x2="-11.0998" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.6228" x2="-10.1092" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.1148" x2="-10.1092" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.3942" x2="-11.0998" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.3942" x2="-11.0998" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.1148" x2="-10.1092" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.6068" x2="-10.1092" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.8862" x2="-11.0998" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.8862" x2="-11.0998" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.6068" x2="-10.1092" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.0988" x2="-10.1092" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.3782" x2="-11.0998" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.3782" x2="-11.0998" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.0988" x2="-10.1092" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.6162" x2="-10.1092" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.8956" x2="-11.0998" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.8956" x2="-11.0998" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.6162" x2="-10.1092" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.1082" x2="-10.1092" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.3876" x2="-11.0998" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.3876" x2="-11.0998" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.1082" x2="-10.1092" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.6002" x2="-10.1092" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.8796" x2="-11.0998" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.8796" x2="-11.0998" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.6002" x2="-10.1092" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.1176" x2="-10.1092" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.397" x2="-11.0998" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.397" x2="-11.0998" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.1176" x2="-10.1092" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.6096" x2="-10.1092" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.889" x2="-11.0998" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.889" x2="-11.0998" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.6096" x2="-10.1092" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.1016" x2="-10.1092" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.381" x2="-11.0998" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.381" x2="-11.0998" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.1016" x2="-10.1092" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.381" x2="-10.1092" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.1016" x2="-11.0998" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.1016" x2="-11.0998" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.381" x2="-10.1092" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.889" x2="-10.1092" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.6096" x2="-11.0998" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.6096" x2="-11.0998" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.889" x2="-10.1092" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.397" x2="-10.1092" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.1176" x2="-11.0998" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.1176" x2="-11.0998" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.397" x2="-10.1092" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.8796" x2="-10.1092" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.6002" x2="-11.0998" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.6002" x2="-11.0998" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.8796" x2="-10.1092" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.3876" x2="-10.1092" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.1082" x2="-11.0998" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.1082" x2="-11.0998" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.3876" x2="-10.1092" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.8956" x2="-10.1092" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.6162" x2="-11.0998" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.6162" x2="-11.0998" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.8956" x2="-10.1092" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.3782" x2="-10.1092" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.0988" x2="-11.0998" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.0988" x2="-11.0998" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.3782" x2="-10.1092" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.8862" x2="-10.1092" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.6068" x2="-11.0998" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.6068" x2="-11.0998" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.8862" x2="-10.1092" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.3942" x2="-10.1092" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.1148" x2="-11.0998" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.1148" x2="-11.0998" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.3942" x2="-10.1092" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.9022" x2="-10.1092" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.6228" x2="-11.0998" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.6228" x2="-11.0998" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.9022" x2="-10.1092" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.3848" x2="-10.1092" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.1054" x2="-11.0998" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.1054" x2="-11.0998" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.3848" x2="-10.1092" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.8928" x2="-10.1092" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.6134" x2="-11.0998" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.6134" x2="-11.0998" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.8928" x2="-10.1092" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.4008" x2="-10.1092" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.1214" x2="-11.0998" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.1214" x2="-11.0998" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.4008" x2="-10.1092" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.8834" x2="-10.1092" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.604" x2="-11.0998" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.604" x2="-11.0998" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.8834" x2="-10.1092" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.3914" x2="-10.1092" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.112" x2="-11.0998" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.112" x2="-11.0998" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.3914" x2="-10.1092" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.8994" x2="-10.1092" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.62" x2="-11.0998" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.62" x2="-11.0998" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.8994" x2="-10.1092" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-8.382" x2="-10.1092" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-8.1026" x2="-11.0998" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.1026" x2="-11.0998" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.382" x2="-10.1092" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="-10.0838" y1="-8.89" x2="-10.0838" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="-10.0838" y1="-8.6106" x2="-11.0998" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.6106" x2="-11.0998" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.89" x2="-10.0838" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="-10.1092" x2="-8.89" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="-10.1092" x2="-8.89" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="-11.0998" x2="-8.6106" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="-11.0998" x2="-8.6106" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-10.1092" x2="-8.382" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="-10.1092" x2="-8.382" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="-11.0998" x2="-8.1026" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-11.0998" x2="-8.1026" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="-10.1092" x2="-7.8994" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="-10.1092" x2="-7.8994" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="-11.0998" x2="-7.62" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="-11.0998" x2="-7.62" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-10.1092" x2="-7.3914" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="-10.1092" x2="-7.3914" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="-11.0998" x2="-7.112" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-11.0998" x2="-7.112" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-10.1092" x2="-6.8834" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="-10.1092" x2="-6.8834" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="-11.0998" x2="-6.604" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-11.0998" x2="-6.604" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="-10.1092" x2="-6.4008" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="-10.1092" x2="-6.4008" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="-11.0998" x2="-6.1214" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="-11.0998" x2="-6.1214" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="-10.1092" x2="-5.8928" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="-10.1092" x2="-5.8928" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="-11.0998" x2="-5.6134" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="-11.0998" x2="-5.6134" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="-10.1092" x2="-5.3848" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="-10.1092" x2="-5.3848" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="-11.0998" x2="-5.1054" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="-11.0998" x2="-5.1054" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="-10.1092" x2="-4.9022" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="-10.1092" x2="-4.9022" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="-11.0998" x2="-4.6228" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="-11.0998" x2="-4.6228" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="-10.1092" x2="-4.3942" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="-10.1092" x2="-4.3942" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="-11.0998" x2="-4.1148" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="-11.0998" x2="-4.1148" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-10.1092" x2="-3.8862" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-10.1092" x2="-3.8862" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-11.0998" x2="-3.6068" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-11.0998" x2="-3.6068" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-10.1092" x2="-3.3782" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-10.1092" x2="-3.3782" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-11.0998" x2="-3.0988" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-11.0998" x2="-3.0988" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-10.1092" x2="-2.8956" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-10.1092" x2="-2.8956" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-11.0998" x2="-2.6162" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-11.0998" x2="-2.6162" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-10.1092" x2="-2.3876" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-10.1092" x2="-2.3876" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-11.0998" x2="-2.1082" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-11.0998" x2="-2.1082" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-10.1092" x2="-1.8796" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-10.1092" x2="-1.8796" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-11.0998" x2="-1.6002" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-11.0998" x2="-1.6002" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-10.1092" x2="-1.397" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-10.1092" x2="-1.397" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-11.0998" x2="-1.1176" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-11.0998" x2="-1.1176" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-10.1092" x2="-0.889" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-10.1092" x2="-0.889" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-11.0998" x2="-0.6096" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-11.0998" x2="-0.6096" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-10.1092" x2="-0.381" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-10.1092" x2="-0.381" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-11.0998" x2="-0.1016" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-11.0998" x2="-0.1016" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-10.1092" x2="0.1016" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-10.1092" x2="0.1016" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-11.0998" x2="0.381" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-11.0998" x2="0.381" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-10.1092" x2="0.6096" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-10.1092" x2="0.6096" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-11.0998" x2="0.889" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-11.0998" x2="0.889" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-10.1092" x2="1.1176" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-10.1092" x2="1.1176" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-11.0998" x2="1.397" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-11.0998" x2="1.397" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-10.1092" x2="1.6002" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-10.1092" x2="1.6002" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-11.0998" x2="1.8796" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-11.0998" x2="1.8796" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-10.1092" x2="2.1082" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-10.1092" x2="2.1082" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-11.0998" x2="2.3876" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-11.0998" x2="2.3876" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-10.1092" x2="2.6162" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-10.1092" x2="2.6162" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-11.0998" x2="2.8956" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-11.0998" x2="2.8956" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-10.1092" x2="3.0988" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-10.1092" x2="3.0988" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-11.0998" x2="3.3782" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-11.0998" x2="3.3782" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-10.1092" x2="3.6068" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-10.1092" x2="3.6068" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-11.0998" x2="3.8862" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-11.0998" x2="3.8862" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="-10.1092" x2="4.1148" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="-10.1092" x2="4.1148" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="-11.0998" x2="4.3942" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="-11.0998" x2="4.3942" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="-10.1092" x2="4.6228" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="-10.1092" x2="4.6228" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="-11.0998" x2="4.9022" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="-11.0998" x2="4.9022" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="-10.1092" x2="5.1054" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="-10.1092" x2="5.1054" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="-11.0998" x2="5.3848" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="-11.0998" x2="5.3848" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="-10.1092" x2="5.6134" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="-10.1092" x2="5.6134" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="-11.0998" x2="5.8928" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="-11.0998" x2="5.8928" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="-10.1092" x2="6.1214" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-10.1092" x2="6.1214" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-11.0998" x2="6.4008" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="-11.0998" x2="6.4008" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="-10.1092" x2="6.604" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-10.1092" x2="6.604" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-11.0998" x2="6.8834" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="-11.0998" x2="6.8834" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="-10.1092" x2="7.112" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-10.1092" x2="7.112" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-11.0998" x2="7.3914" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="-11.0998" x2="7.3914" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="-10.1092" x2="7.62" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.62" y1="-10.1092" x2="7.62" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.62" y1="-11.0998" x2="7.8994" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="-11.0998" x2="7.8994" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.382" y1="-10.1092" x2="8.1026" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-10.1092" x2="8.1026" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-11.0998" x2="8.382" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.382" y1="-11.0998" x2="8.382" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.89" y1="-10.1092" x2="8.6106" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="-10.1092" x2="8.6106" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="-11.0998" x2="8.89" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.89" y1="-11.0998" x2="8.89" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.6106" x2="10.1092" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.89" x2="11.0998" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.89" x2="11.0998" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.6106" x2="10.1092" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.1026" x2="10.1092" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.382" x2="11.0998" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.382" x2="11.0998" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.1026" x2="10.1092" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.62" x2="10.1092" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.8994" x2="11.0998" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.8994" x2="11.0998" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.62" x2="10.1092" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.112" x2="10.1092" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.3914" x2="11.0998" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.3914" x2="11.0998" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.112" x2="10.1092" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.604" x2="10.1092" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.8834" x2="11.0998" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.8834" x2="11.0998" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.604" x2="10.1092" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.1214" x2="10.1092" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.4008" x2="11.0998" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.4008" x2="11.0998" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.1214" x2="10.1092" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.6134" x2="10.1092" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.8928" x2="11.0998" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.8928" x2="11.0998" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.6134" x2="10.1092" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.1054" x2="10.1092" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.3848" x2="11.0998" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.3848" x2="11.0998" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.1054" x2="10.1092" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.6228" x2="10.1092" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.9022" x2="11.0998" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.9022" x2="11.0998" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.6228" x2="10.1092" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.1148" x2="10.1092" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.3942" x2="11.0998" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.3942" x2="11.0998" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.1148" x2="10.1092" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.6068" x2="10.1092" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.8862" x2="11.0998" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.8862" x2="11.0998" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.6068" x2="10.1092" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.0988" x2="10.1092" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.3782" x2="11.0998" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.3782" x2="11.0998" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.0988" x2="10.1092" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.6162" x2="10.1092" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.8956" x2="11.0998" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.8956" x2="11.0998" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.6162" x2="10.1092" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.1082" x2="10.1092" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.3876" x2="11.0998" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.3876" x2="11.0998" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.1082" x2="10.1092" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.6002" x2="10.1092" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.8796" x2="11.0998" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.8796" x2="11.0998" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.6002" x2="10.1092" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.1176" x2="10.1092" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.397" x2="11.0998" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.397" x2="11.0998" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.1176" x2="10.1092" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.6096" x2="10.1092" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.889" x2="11.0998" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.889" x2="11.0998" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.6096" x2="10.1092" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.1016" x2="10.1092" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.381" x2="11.0998" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.381" x2="11.0998" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.1016" x2="10.1092" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.381" x2="10.1092" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.1016" x2="11.0998" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.1016" x2="11.0998" y2="0.381" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.381" x2="10.1092" y2="0.381" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.889" x2="10.1092" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.6096" x2="11.0998" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.6096" x2="11.0998" y2="0.889" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.889" x2="10.1092" y2="0.889" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.397" x2="10.1092" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.1176" x2="11.0998" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.1176" x2="11.0998" y2="1.397" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.397" x2="10.1092" y2="1.397" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.8796" x2="10.1092" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.6002" x2="11.0998" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.6002" x2="11.0998" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.8796" x2="10.1092" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.3876" x2="10.1092" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.1082" x2="11.0998" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.1082" x2="11.0998" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.3876" x2="10.1092" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.8956" x2="10.1092" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.6162" x2="11.0998" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.6162" x2="11.0998" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.8956" x2="10.1092" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.3782" x2="10.1092" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.0988" x2="11.0998" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.0988" x2="11.0998" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.3782" x2="10.1092" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.8862" x2="10.1092" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.6068" x2="11.0998" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.6068" x2="11.0998" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.8862" x2="10.1092" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.3942" x2="10.1092" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.1148" x2="11.0998" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.1148" x2="11.0998" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.3942" x2="10.1092" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.9022" x2="10.1092" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.6228" x2="11.0998" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.6228" x2="11.0998" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.9022" x2="10.1092" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.3848" x2="10.1092" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.1054" x2="11.0998" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.1054" x2="11.0998" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.3848" x2="10.1092" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.8928" x2="10.1092" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.6134" x2="11.0998" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.6134" x2="11.0998" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.8928" x2="10.1092" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.4008" x2="10.1092" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.1214" x2="11.0998" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.1214" x2="11.0998" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.4008" x2="10.1092" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.8834" x2="10.1092" y2="6.604" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.604" x2="11.0998" y2="6.604" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.604" x2="11.0998" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.8834" x2="10.1092" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.3914" x2="10.1092" y2="7.112" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.112" x2="11.0998" y2="7.112" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.112" x2="11.0998" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.3914" x2="10.1092" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.8994" x2="10.1092" y2="7.62" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.62" x2="11.0998" y2="7.62" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.62" x2="11.0998" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.8994" x2="10.1092" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.382" x2="10.1092" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.1026" x2="11.0998" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.1026" x2="11.0998" y2="8.382" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.382" x2="10.1092" y2="8.382" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.89" x2="10.1092" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.6106" x2="11.0998" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.6106" x2="11.0998" y2="8.89" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.89" x2="10.1092" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.8392" x2="-8.8392" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="10.1092" x2="-10.1092" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-10.1092" x2="10.1092" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-10.1092" x2="10.1092" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="10.1092" x2="-10.1092" y2="10.1092" width="0.1524" layer="51"/>
<text x="-10.287" y="8.3566" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="LQFP144_STM-L">
<smd name="1" x="-10.668" y="8.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="2" x="-10.668" y="8.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="3" x="-10.668" y="7.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="4" x="-10.668" y="7.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="5" x="-10.668" y="6.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="6" x="-10.668" y="6.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="7" x="-10.668" y="5.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="8" x="-10.668" y="5.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="9" x="-10.668" y="4.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="10" x="-10.668" y="4.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="11" x="-10.668" y="3.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="12" x="-10.668" y="3.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="13" x="-10.668" y="2.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="14" x="-10.668" y="2.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="15" x="-10.668" y="1.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="16" x="-10.668" y="1.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="17" x="-10.668" y="0.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="18" x="-10.668" y="0.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="19" x="-10.668" y="-0.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="20" x="-10.668" y="-0.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="21" x="-10.668" y="-1.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="22" x="-10.668" y="-1.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="23" x="-10.668" y="-2.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="24" x="-10.668" y="-2.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="25" x="-10.668" y="-3.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="26" x="-10.668" y="-3.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="27" x="-10.668" y="-4.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="28" x="-10.668" y="-4.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="29" x="-10.668" y="-5.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="30" x="-10.668" y="-5.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="31" x="-10.668" y="-6.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="32" x="-10.668" y="-6.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="33" x="-10.668" y="-7.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="34" x="-10.668" y="-7.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="35" x="-10.668" y="-8.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="36" x="-10.668" y="-8.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="37" x="-8.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="38" x="-8.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="39" x="-7.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="40" x="-7.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="41" x="-6.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="42" x="-6.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="43" x="-5.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="44" x="-5.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="45" x="-4.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="46" x="-4.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="47" x="-3.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="48" x="-3.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="49" x="-2.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="50" x="-2.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="51" x="-1.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="52" x="-1.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="53" x="-0.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="54" x="-0.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="55" x="0.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="56" x="0.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="57" x="1.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="58" x="1.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="59" x="2.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="60" x="2.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="61" x="3.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="62" x="3.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="63" x="4.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="64" x="4.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="65" x="5.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="66" x="5.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="67" x="6.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="68" x="6.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="69" x="7.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="70" x="7.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="71" x="8.25" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="72" x="8.75" y="-10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="73" x="10.668" y="-8.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="74" x="10.668" y="-8.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="75" x="10.668" y="-7.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="76" x="10.668" y="-7.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="77" x="10.668" y="-6.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="78" x="10.668" y="-6.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="79" x="10.668" y="-5.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="80" x="10.668" y="-5.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="81" x="10.668" y="-4.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="82" x="10.668" y="-4.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="83" x="10.668" y="-3.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="84" x="10.668" y="-3.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="85" x="10.668" y="-2.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="86" x="10.668" y="-2.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="87" x="10.668" y="-1.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="88" x="10.668" y="-1.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="89" x="10.668" y="-0.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="90" x="10.668" y="-0.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="91" x="10.668" y="0.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="92" x="10.668" y="0.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="93" x="10.668" y="1.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="94" x="10.668" y="1.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="95" x="10.668" y="2.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="96" x="10.668" y="2.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="97" x="10.668" y="3.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="98" x="10.668" y="3.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="99" x="10.668" y="4.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="100" x="10.668" y="4.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="101" x="10.668" y="5.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="102" x="10.668" y="5.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="103" x="10.668" y="6.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="104" x="10.668" y="6.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="105" x="10.668" y="7.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="106" x="10.668" y="7.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="107" x="10.668" y="8.25" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="108" x="10.668" y="8.75" dx="0.2286" dy="1.1684" layer="1" rot="R270"/>
<smd name="109" x="8.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="110" x="8.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="111" x="7.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="112" x="7.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="113" x="6.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="114" x="6.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="115" x="5.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="116" x="5.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="117" x="4.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="118" x="4.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="119" x="3.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="120" x="3.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="121" x="2.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="122" x="2.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="123" x="1.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="124" x="1.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="125" x="0.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="126" x="0.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="127" x="-0.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="128" x="-0.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="129" x="-1.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="130" x="-1.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="131" x="-2.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="132" x="-2.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="133" x="-3.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="134" x="-3.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="135" x="-4.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="136" x="-4.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="137" x="-5.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="138" x="-5.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="139" x="-6.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="140" x="-6.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="141" x="-7.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="142" x="-7.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="143" x="-8.25" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<smd name="144" x="-8.75" y="10.668" dx="0.2286" dy="1.1684" layer="1" rot="R180"/>
<wire x1="-10.2108" y1="10.2108" x2="-10.2108" y2="9.1948" width="0.1524" layer="21"/>
<wire x1="-10.2108" y1="-10.2108" x2="-9.1948" y2="-10.2108" width="0.1524" layer="21"/>
<wire x1="10.2108" y1="-10.2108" x2="10.2108" y2="-9.1948" width="0.1524" layer="21"/>
<wire x1="10.2108" y1="10.2108" x2="9.1948" y2="10.2108" width="0.1524" layer="21"/>
<wire x1="-10.2108" y1="-9.1948" x2="-10.2108" y2="-10.2108" width="0.1524" layer="21"/>
<wire x1="9.1948" y1="-10.2108" x2="10.2108" y2="-10.2108" width="0.1524" layer="21"/>
<wire x1="10.2108" y1="9.1948" x2="10.2108" y2="10.2108" width="0.1524" layer="21"/>
<wire x1="-9.1948" y1="10.2108" x2="-10.2108" y2="10.2108" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-11.7602" y="4.4405"/>
<vertex x="-11.7602" y="4.0595"/>
<vertex x="-11.5062" y="4.0595"/>
<vertex x="-11.5062" y="4.4405"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-11.7602" y="-0.5595"/>
<vertex x="-11.7602" y="-0.9405"/>
<vertex x="-11.5062" y="-0.9405"/>
<vertex x="-11.5062" y="-0.5595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-11.7602" y="-5.5595"/>
<vertex x="-11.7602" y="-5.9405"/>
<vertex x="-11.5062" y="-5.9405"/>
<vertex x="-11.5062" y="-5.5595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-7.4405" y="-11.5062"/>
<vertex x="-7.4405" y="-11.7602"/>
<vertex x="-7.0595" y="-11.7602"/>
<vertex x="-7.0595" y="-11.5062"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-2.4405" y="-11.5062"/>
<vertex x="-2.4405" y="-11.7602"/>
<vertex x="-2.0595" y="-11.7602"/>
<vertex x="-2.0595" y="-11.5062"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="2.5595" y="-11.5062"/>
<vertex x="2.5595" y="-11.7602"/>
<vertex x="2.9405" y="-11.7602"/>
<vertex x="2.9405" y="-11.5062"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="7.5595" y="-11.5062"/>
<vertex x="7.5595" y="-11.7602"/>
<vertex x="7.9405" y="-11.7602"/>
<vertex x="7.9405" y="-11.5062"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="11.7602" y="-5.0595"/>
<vertex x="11.7602" y="-5.4405"/>
<vertex x="11.5062" y="-5.4405"/>
<vertex x="11.5062" y="-5.0595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="11.7602" y="-0.0595"/>
<vertex x="11.7602" y="-0.4405"/>
<vertex x="11.5062" y="-0.4405"/>
<vertex x="11.5062" y="-0.0595"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="11.7602" y="4.9405"/>
<vertex x="11.7602" y="4.5595"/>
<vertex x="11.5062" y="4.5595"/>
<vertex x="11.5062" y="4.9405"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="8.0595" y="11.5062"/>
<vertex x="8.0595" y="11.7602"/>
<vertex x="8.4405" y="11.7602"/>
<vertex x="8.4405" y="11.5062"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.0595" y="11.5062"/>
<vertex x="3.0595" y="11.7602"/>
<vertex x="3.4405" y="11.7602"/>
<vertex x="3.4405" y="11.5062"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.9405" y="11.5062"/>
<vertex x="-1.9405" y="11.7602"/>
<vertex x="-1.5595" y="11.7602"/>
<vertex x="-1.5595" y="11.5062"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-6.9405" y="11.5062"/>
<vertex x="-6.9405" y="11.7602"/>
<vertex x="-6.5595" y="11.7602"/>
<vertex x="-6.5595" y="11.5062"/>
</polygon>
<text x="-12.4714" y="8.7376" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="10.668" y1="8.7376" x2="11.0998" y2="8.7376" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="8.7376" x2="13.589" y2="8.7376" width="0.1524" layer="47"/>
<wire x1="13.589" y1="8.7376" x2="13.97" y2="8.7376" width="0.1524" layer="47"/>
<wire x1="10.668" y1="8.255" x2="13.589" y2="8.255" width="0.1524" layer="47"/>
<wire x1="13.589" y1="8.255" x2="13.97" y2="8.255" width="0.1524" layer="47"/>
<wire x1="13.589" y1="8.7376" x2="13.589" y2="10.0076" width="0.1524" layer="47"/>
<wire x1="13.589" y1="8.255" x2="13.589" y2="6.985" width="0.1524" layer="47"/>
<wire x1="13.589" y1="8.7376" x2="13.462" y2="8.9916" width="0.1524" layer="47"/>
<wire x1="13.589" y1="8.7376" x2="13.716" y2="8.9916" width="0.1524" layer="47"/>
<wire x1="13.462" y1="8.9916" x2="13.716" y2="8.9916" width="0.1524" layer="47"/>
<wire x1="13.589" y1="8.255" x2="13.462" y2="8.001" width="0.1524" layer="47"/>
<wire x1="13.589" y1="8.255" x2="13.716" y2="8.001" width="0.1524" layer="47"/>
<wire x1="13.462" y1="8.001" x2="13.716" y2="8.001" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="8.7376" x2="10.3378" y2="13.589" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.589" x2="10.3378" y2="13.97" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="8.7376" x2="11.0998" y2="13.589" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.589" x2="9.0678" y2="13.589" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.589" x2="12.3698" y2="13.589" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.589" x2="10.0838" y2="13.716" width="0.1524" layer="47"/>
<wire x1="10.3378" y1="13.589" x2="10.0838" y2="13.462" width="0.1524" layer="47"/>
<wire x1="10.0838" y1="13.716" x2="10.0838" y2="13.462" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.589" x2="11.3538" y2="13.716" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.589" x2="11.3538" y2="13.462" width="0.1524" layer="47"/>
<wire x1="11.3538" y1="13.716" x2="11.3538" y2="13.462" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="8.7376" x2="-11.0998" y2="15.494" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.494" x2="-11.0998" y2="15.875" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="13.589" x2="11.0998" y2="15.494" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="15.494" x2="11.0998" y2="15.875" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.494" x2="11.0998" y2="15.494" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.494" x2="-10.8458" y2="15.621" width="0.1524" layer="47"/>
<wire x1="-11.0998" y1="15.494" x2="-10.8458" y2="15.367" width="0.1524" layer="47"/>
<wire x1="-10.8458" y1="15.621" x2="-10.8458" y2="15.367" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="15.494" x2="10.8458" y2="15.621" width="0.1524" layer="47"/>
<wire x1="11.0998" y1="15.494" x2="10.8458" y2="15.367" width="0.1524" layer="47"/>
<wire x1="10.8458" y1="15.621" x2="10.8458" y2="15.367" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-8.7376" x2="-10.1092" y2="-13.589" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.589" x2="-10.1092" y2="-13.97" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-8.7376" x2="10.1092" y2="-13.589" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-13.589" x2="10.1092" y2="-13.97" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.589" x2="10.1092" y2="-13.589" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.589" x2="-9.8552" y2="-13.462" width="0.1524" layer="47"/>
<wire x1="-10.1092" y1="-13.589" x2="-9.8552" y2="-13.716" width="0.1524" layer="47"/>
<wire x1="-9.8552" y1="-13.462" x2="-9.8552" y2="-13.716" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-13.589" x2="9.8552" y2="-13.462" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-13.589" x2="9.8552" y2="-13.716" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="-13.462" x2="9.8552" y2="-13.716" width="0.1524" layer="47"/>
<wire x1="-8.7376" y1="10.1092" x2="-13.589" y2="10.1092" width="0.1524" layer="47"/>
<wire x1="-13.589" y1="10.1092" x2="-13.97" y2="10.1092" width="0.1524" layer="47"/>
<wire x1="-8.7376" y1="-10.1092" x2="-13.589" y2="-10.1092" width="0.1524" layer="47"/>
<wire x1="-13.589" y1="-10.1092" x2="-13.97" y2="-10.1092" width="0.1524" layer="47"/>
<wire x1="-13.589" y1="10.1092" x2="-13.589" y2="-10.1092" width="0.1524" layer="47"/>
<wire x1="-13.589" y1="10.1092" x2="-13.716" y2="9.8552" width="0.1524" layer="47"/>
<wire x1="-13.589" y1="10.1092" x2="-13.462" y2="9.8552" width="0.1524" layer="47"/>
<wire x1="-13.716" y1="9.8552" x2="-13.462" y2="9.8552" width="0.1524" layer="47"/>
<wire x1="-13.589" y1="-10.1092" x2="-13.716" y2="-9.8552" width="0.1524" layer="47"/>
<wire x1="-13.589" y1="-10.1092" x2="-13.462" y2="-9.8552" width="0.1524" layer="47"/>
<wire x1="-13.716" y1="-9.8552" x2="-13.462" y2="-9.8552" width="0.1524" layer="47"/>
<wire x1="8.7376" y1="11.0998" x2="15.494" y2="11.0998" width="0.1524" layer="47"/>
<wire x1="15.494" y1="11.0998" x2="15.875" y2="11.0998" width="0.1524" layer="47"/>
<wire x1="8.7376" y1="-11.0998" x2="15.494" y2="-11.0998" width="0.1524" layer="47"/>
<wire x1="15.494" y1="-11.0998" x2="15.875" y2="-11.0998" width="0.1524" layer="47"/>
<wire x1="15.494" y1="11.0998" x2="15.494" y2="-11.0998" width="0.1524" layer="47"/>
<wire x1="15.494" y1="11.0998" x2="15.367" y2="10.8458" width="0.1524" layer="47"/>
<wire x1="15.494" y1="11.0998" x2="15.621" y2="10.8458" width="0.1524" layer="47"/>
<wire x1="15.367" y1="10.8458" x2="15.621" y2="10.8458" width="0.1524" layer="47"/>
<wire x1="15.494" y1="-11.0998" x2="15.367" y2="-10.8458" width="0.1524" layer="47"/>
<wire x1="15.494" y1="-11.0998" x2="15.621" y2="-10.8458" width="0.1524" layer="47"/>
<wire x1="15.367" y1="-10.8458" x2="15.621" y2="-10.8458" width="0.1524" layer="47"/>
<text x="-17.907" y="-17.399" size="1.27" layer="47" ratio="6" rot="SR0">Default Horiz Padstyle: RX9Y46D0T</text>
<text x="-17.3228" y="-18.923" size="1.27" layer="47" ratio="6" rot="SR0">Default Vert Padstyle: RX9Y46D0T</text>
<text x="-14.8082" y="-23.495" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-25.019" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="14.097" y="8.1788" size="0.635" layer="47" ratio="4" rot="SR0">0.02in/0.5mm</text>
<text x="6.9596" y="14.097" size="0.635" layer="47" ratio="4" rot="SR0">0.03in/0.762mm</text>
<text x="-3.7592" y="16.002" size="0.635" layer="47" ratio="4" rot="SR0">0.874in/22.2mm</text>
<text x="-4.318" y="-14.732" size="0.635" layer="47" ratio="4" rot="SR0">0.795in/20.193mm</text>
<text x="-22.7584" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.795in/20.193mm</text>
<text x="16.002" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.874in/22.2mm</text>
<wire x1="8.6106" y1="10.1092" x2="8.89" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="8.89" y1="10.1092" x2="8.89" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.89" y1="11.0998" x2="8.6106" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="11.0998" x2="8.6106" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="10.1092" x2="8.382" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="8.382" y1="10.1092" x2="8.382" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.382" y1="11.0998" x2="8.1026" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="11.0998" x2="8.1026" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.62" y1="10.1092" x2="7.8994" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="10.1092" x2="7.8994" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="11.0998" x2="7.62" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.62" y1="11.0998" x2="7.62" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.112" y1="10.1092" x2="7.3914" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="10.1092" x2="7.3914" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="11.0998" x2="7.112" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="7.112" y1="11.0998" x2="7.112" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.604" y1="10.1092" x2="6.8834" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="10.1092" x2="6.8834" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="11.0998" x2="6.604" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.604" y1="11.0998" x2="6.604" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="10.1092" x2="6.4008" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="10.1092" x2="6.4008" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="11.0998" x2="6.1214" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="11.0998" x2="6.1214" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="10.1092" x2="5.8928" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="10.1092" x2="5.8928" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="11.0998" x2="5.6134" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="11.0998" x2="5.6134" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="10.1092" x2="5.3848" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="10.1092" x2="5.3848" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="11.0998" x2="5.1054" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="11.0998" x2="5.1054" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="10.1092" x2="4.9022" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="10.1092" x2="4.9022" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="11.0998" x2="4.6228" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="11.0998" x2="4.6228" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="10.1092" x2="4.3942" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="10.1092" x2="4.3942" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="11.0998" x2="4.1148" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="11.0998" x2="4.1148" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="10.1092" x2="3.8862" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="10.1092" x2="3.8862" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="11.0998" x2="3.6068" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="11.0998" x2="3.6068" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="10.1092" x2="3.3782" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="10.1092" x2="3.3782" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="11.0998" x2="3.0988" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="11.0998" x2="3.0988" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="10.1092" x2="2.8956" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="10.1092" x2="2.8956" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="11.0998" x2="2.6162" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="11.0998" x2="2.6162" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="10.1092" x2="2.3876" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="10.1092" x2="2.3876" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="11.0998" x2="2.1082" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="11.0998" x2="2.1082" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="10.1092" x2="1.8796" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="10.1092" x2="1.8796" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="11.0998" x2="1.6002" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="11.0998" x2="1.6002" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="10.1092" x2="1.397" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="1.397" y1="10.1092" x2="1.397" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.397" y1="11.0998" x2="1.1176" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="11.0998" x2="1.1176" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="10.1092" x2="0.889" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.889" y1="10.1092" x2="0.889" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.889" y1="11.0998" x2="0.6096" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="11.0998" x2="0.6096" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="10.1092" x2="0.381" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="0.381" y1="10.1092" x2="0.381" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.381" y1="11.0998" x2="0.1016" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="11.0998" x2="0.1016" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="10.1092" x2="-0.1016" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="10.1092" x2="-0.1016" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="11.0998" x2="-0.381" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="11.0998" x2="-0.381" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="10.1092" x2="-0.6096" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="10.1092" x2="-0.6096" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="11.0998" x2="-0.889" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="11.0998" x2="-0.889" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="10.1092" x2="-1.1176" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="10.1092" x2="-1.1176" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="11.0998" x2="-1.397" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="11.0998" x2="-1.397" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="10.1092" x2="-1.6002" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="10.1092" x2="-1.6002" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="11.0998" x2="-1.8796" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="11.0998" x2="-1.8796" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="10.1092" x2="-2.1082" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="10.1092" x2="-2.1082" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="11.0998" x2="-2.3876" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="11.0998" x2="-2.3876" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="10.1092" x2="-2.6162" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="10.1092" x2="-2.6162" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="11.0998" x2="-2.8956" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="11.0998" x2="-2.8956" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="10.1092" x2="-3.0988" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="10.1092" x2="-3.0988" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="11.0998" x2="-3.3782" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="11.0998" x2="-3.3782" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="10.1092" x2="-3.6068" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="10.1092" x2="-3.6068" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="11.0998" x2="-3.8862" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="11.0998" x2="-3.8862" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="10.1092" x2="-4.1148" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="10.1092" x2="-4.1148" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="11.0998" x2="-4.3942" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="11.0998" x2="-4.3942" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="10.1092" x2="-4.6228" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="10.1092" x2="-4.6228" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="11.0998" x2="-4.9022" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="11.0998" x2="-4.9022" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="10.1092" x2="-5.1054" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="10.1092" x2="-5.1054" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="11.0998" x2="-5.3848" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="11.0998" x2="-5.3848" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="10.1092" x2="-5.6134" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="10.1092" x2="-5.6134" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="11.0998" x2="-5.8928" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="11.0998" x2="-5.8928" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="10.1092" x2="-6.1214" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="10.1092" x2="-6.1214" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="11.0998" x2="-6.4008" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="11.0998" x2="-6.4008" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="10.1092" x2="-6.604" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="10.1092" x2="-6.604" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="11.0998" x2="-6.8834" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="11.0998" x2="-6.8834" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="10.1092" x2="-7.112" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="10.1092" x2="-7.112" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="11.0998" x2="-7.3914" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="11.0998" x2="-7.3914" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="10.0838" x2="-7.62" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="10.0838" x2="-7.62" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="11.0998" x2="-7.8994" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="11.0998" x2="-7.8994" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="10.0838" x2="-8.1026" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="10.0838" x2="-8.1026" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="11.0998" x2="-8.382" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="11.0998" x2="-8.382" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="10.0838" x2="-8.6106" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="10.0838" x2="-8.6106" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="11.0998" x2="-8.89" y2="11.0998" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="11.0998" x2="-8.89" y2="10.0838" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.6106" x2="-10.1092" y2="8.8392" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.8392" x2="-10.1092" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.89" x2="-11.0998" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.89" x2="-11.0998" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.6106" x2="-10.1092" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.1026" x2="-10.1092" y2="8.382" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.382" x2="-11.0998" y2="8.382" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.382" x2="-11.0998" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="8.1026" x2="-10.1092" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.62" x2="-10.1092" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.8994" x2="-11.0998" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.8994" x2="-11.0998" y2="7.62" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.62" x2="-10.1092" y2="7.62" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.112" x2="-10.1092" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="7.3914" x2="-11.0998" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.3914" x2="-11.0998" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="7.112" x2="-10.1092" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.604" x2="-10.1092" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.8834" x2="-11.0998" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.8834" x2="-11.0998" y2="6.604" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.604" x2="-10.1092" y2="6.604" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.1214" x2="-10.1092" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="6.4008" x2="-11.0998" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.4008" x2="-11.0998" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="6.1214" x2="-10.1092" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.6134" x2="-10.1092" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.8928" x2="-11.0998" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.8928" x2="-11.0998" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.6134" x2="-10.1092" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.1054" x2="-10.1092" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="5.3848" x2="-11.0998" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.3848" x2="-11.0998" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="5.1054" x2="-10.1092" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.6228" x2="-10.1092" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.9022" x2="-11.0998" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.9022" x2="-11.0998" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.6228" x2="-10.1092" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.1148" x2="-10.1092" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="4.3942" x2="-11.0998" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.3942" x2="-11.0998" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="4.1148" x2="-10.1092" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.6068" x2="-10.1092" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.8862" x2="-11.0998" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.8862" x2="-11.0998" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.6068" x2="-10.1092" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.0988" x2="-10.1092" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="3.3782" x2="-11.0998" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.3782" x2="-11.0998" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="3.0988" x2="-10.1092" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.6162" x2="-10.1092" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.8956" x2="-11.0998" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.8956" x2="-11.0998" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.6162" x2="-10.1092" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.1082" x2="-10.1092" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="2.3876" x2="-11.0998" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.3876" x2="-11.0998" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="2.1082" x2="-10.1092" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.6002" x2="-10.1092" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.8796" x2="-11.0998" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.8796" x2="-11.0998" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.6002" x2="-10.1092" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.1176" x2="-10.1092" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="1.397" x2="-11.0998" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.397" x2="-11.0998" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="1.1176" x2="-10.1092" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.6096" x2="-10.1092" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.889" x2="-11.0998" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.889" x2="-11.0998" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.6096" x2="-10.1092" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.1016" x2="-10.1092" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="0.381" x2="-11.0998" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.381" x2="-11.0998" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="0.1016" x2="-10.1092" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.381" x2="-10.1092" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.1016" x2="-11.0998" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.1016" x2="-11.0998" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.381" x2="-10.1092" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.889" x2="-10.1092" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-0.6096" x2="-11.0998" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.6096" x2="-11.0998" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-0.889" x2="-10.1092" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.397" x2="-10.1092" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.1176" x2="-11.0998" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.1176" x2="-11.0998" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.397" x2="-10.1092" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.8796" x2="-10.1092" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-1.6002" x2="-11.0998" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.6002" x2="-11.0998" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-1.8796" x2="-10.1092" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.3876" x2="-10.1092" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.1082" x2="-11.0998" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.1082" x2="-11.0998" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.3876" x2="-10.1092" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.8956" x2="-10.1092" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-2.6162" x2="-11.0998" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.6162" x2="-11.0998" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-2.8956" x2="-10.1092" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.3782" x2="-10.1092" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.0988" x2="-11.0998" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.0988" x2="-11.0998" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.3782" x2="-10.1092" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.8862" x2="-10.1092" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-3.6068" x2="-11.0998" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.6068" x2="-11.0998" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-3.8862" x2="-10.1092" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.3942" x2="-10.1092" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.1148" x2="-11.0998" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.1148" x2="-11.0998" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.3942" x2="-10.1092" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.9022" x2="-10.1092" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-4.6228" x2="-11.0998" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.6228" x2="-11.0998" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-4.9022" x2="-10.1092" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.3848" x2="-10.1092" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.1054" x2="-11.0998" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.1054" x2="-11.0998" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.3848" x2="-10.1092" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.8928" x2="-10.1092" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-5.6134" x2="-11.0998" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.6134" x2="-11.0998" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-5.8928" x2="-10.1092" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.4008" x2="-10.1092" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.1214" x2="-11.0998" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.1214" x2="-11.0998" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.4008" x2="-10.1092" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.8834" x2="-10.1092" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-6.604" x2="-11.0998" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.604" x2="-11.0998" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-6.8834" x2="-10.1092" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.3914" x2="-10.1092" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.112" x2="-11.0998" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.112" x2="-11.0998" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.3914" x2="-10.1092" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.8994" x2="-10.1092" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-7.62" x2="-11.0998" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.62" x2="-11.0998" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-7.8994" x2="-10.1092" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-8.382" x2="-10.1092" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-8.1026" x2="-11.0998" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.1026" x2="-11.0998" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.382" x2="-10.1092" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="-10.0838" y1="-8.89" x2="-10.0838" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="-10.0838" y1="-8.6106" x2="-11.0998" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.6106" x2="-11.0998" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="-11.0998" y1="-8.89" x2="-10.0838" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="-10.1092" x2="-8.89" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="-10.1092" x2="-8.89" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="-11.0998" x2="-8.6106" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="-11.0998" x2="-8.6106" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-10.1092" x2="-8.382" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="-10.1092" x2="-8.382" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="-11.0998" x2="-8.1026" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-11.0998" x2="-8.1026" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="-10.1092" x2="-7.8994" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="-10.1092" x2="-7.8994" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.8994" y1="-11.0998" x2="-7.62" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.62" y1="-11.0998" x2="-7.62" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-10.1092" x2="-7.3914" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="-10.1092" x2="-7.3914" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.3914" y1="-11.0998" x2="-7.112" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-11.0998" x2="-7.112" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-10.1092" x2="-6.8834" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="-10.1092" x2="-6.8834" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.8834" y1="-11.0998" x2="-6.604" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-11.0998" x2="-6.604" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="-10.1092" x2="-6.4008" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="-10.1092" x2="-6.4008" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.4008" y1="-11.0998" x2="-6.1214" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-6.1214" y1="-11.0998" x2="-6.1214" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="-10.1092" x2="-5.8928" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="-10.1092" x2="-5.8928" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="-11.0998" x2="-5.6134" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.6134" y1="-11.0998" x2="-5.6134" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="-10.1092" x2="-5.3848" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="-10.1092" x2="-5.3848" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.3848" y1="-11.0998" x2="-5.1054" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-5.1054" y1="-11.0998" x2="-5.1054" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="-10.1092" x2="-4.9022" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="-10.1092" x2="-4.9022" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.9022" y1="-11.0998" x2="-4.6228" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.6228" y1="-11.0998" x2="-4.6228" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="-10.1092" x2="-4.3942" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="-10.1092" x2="-4.3942" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="-11.0998" x2="-4.1148" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="-11.0998" x2="-4.1148" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-10.1092" x2="-3.8862" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-10.1092" x2="-3.8862" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-11.0998" x2="-3.6068" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.6068" y1="-11.0998" x2="-3.6068" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-10.1092" x2="-3.3782" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-10.1092" x2="-3.3782" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.3782" y1="-11.0998" x2="-3.0988" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-11.0998" x2="-3.0988" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-10.1092" x2="-2.8956" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-10.1092" x2="-2.8956" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.8956" y1="-11.0998" x2="-2.6162" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-11.0998" x2="-2.6162" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-10.1092" x2="-2.3876" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-10.1092" x2="-2.3876" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="-11.0998" x2="-2.1082" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-2.1082" y1="-11.0998" x2="-2.1082" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-10.1092" x2="-1.8796" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-10.1092" x2="-1.8796" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="-11.0998" x2="-1.6002" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-11.0998" x2="-1.6002" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-10.1092" x2="-1.397" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-10.1092" x2="-1.397" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-11.0998" x2="-1.1176" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="-11.0998" x2="-1.1176" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-10.1092" x2="-0.889" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-10.1092" x2="-0.889" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-11.0998" x2="-0.6096" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="-11.0998" x2="-0.6096" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-10.1092" x2="-0.381" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-10.1092" x2="-0.381" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-11.0998" x2="-0.1016" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="-0.1016" y1="-11.0998" x2="-0.1016" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-10.1092" x2="0.1016" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-10.1092" x2="0.1016" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.1016" y1="-11.0998" x2="0.381" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-11.0998" x2="0.381" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-10.1092" x2="0.6096" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-10.1092" x2="0.6096" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.6096" y1="-11.0998" x2="0.889" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-11.0998" x2="0.889" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-10.1092" x2="1.1176" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-10.1092" x2="1.1176" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-11.0998" x2="1.397" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-11.0998" x2="1.397" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-10.1092" x2="1.6002" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-10.1092" x2="1.6002" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-11.0998" x2="1.8796" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="1.8796" y1="-11.0998" x2="1.8796" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-10.1092" x2="2.1082" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-10.1092" x2="2.1082" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.1082" y1="-11.0998" x2="2.3876" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.3876" y1="-11.0998" x2="2.3876" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-10.1092" x2="2.6162" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-10.1092" x2="2.6162" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-11.0998" x2="2.8956" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="2.8956" y1="-11.0998" x2="2.8956" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-10.1092" x2="3.0988" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-10.1092" x2="3.0988" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-11.0998" x2="3.3782" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.3782" y1="-11.0998" x2="3.3782" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-10.1092" x2="3.6068" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-10.1092" x2="3.6068" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.6068" y1="-11.0998" x2="3.8862" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="3.8862" y1="-11.0998" x2="3.8862" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="-10.1092" x2="4.1148" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="-10.1092" x2="4.1148" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.1148" y1="-11.0998" x2="4.3942" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.3942" y1="-11.0998" x2="4.3942" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="-10.1092" x2="4.6228" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="-10.1092" x2="4.6228" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.6228" y1="-11.0998" x2="4.9022" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="4.9022" y1="-11.0998" x2="4.9022" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="-10.1092" x2="5.1054" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="-10.1092" x2="5.1054" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.1054" y1="-11.0998" x2="5.3848" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.3848" y1="-11.0998" x2="5.3848" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="-10.1092" x2="5.6134" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="-10.1092" x2="5.6134" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.6134" y1="-11.0998" x2="5.8928" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="5.8928" y1="-11.0998" x2="5.8928" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="-10.1092" x2="6.1214" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-10.1092" x2="6.1214" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-11.0998" x2="6.4008" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.4008" y1="-11.0998" x2="6.4008" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="-10.1092" x2="6.604" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-10.1092" x2="6.604" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-11.0998" x2="6.8834" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="6.8834" y1="-11.0998" x2="6.8834" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="-10.1092" x2="7.112" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-10.1092" x2="7.112" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-11.0998" x2="7.3914" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.3914" y1="-11.0998" x2="7.3914" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="-10.1092" x2="7.62" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="7.62" y1="-10.1092" x2="7.62" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.62" y1="-11.0998" x2="7.8994" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="7.8994" y1="-11.0998" x2="7.8994" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.382" y1="-10.1092" x2="8.1026" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-10.1092" x2="8.1026" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-11.0998" x2="8.382" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.382" y1="-11.0998" x2="8.382" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.89" y1="-10.1092" x2="8.6106" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="-10.1092" x2="8.6106" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="-11.0998" x2="8.89" y2="-11.0998" width="0.1524" layer="51"/>
<wire x1="8.89" y1="-11.0998" x2="8.89" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.6106" x2="10.1092" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.89" x2="11.0998" y2="-8.89" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.89" x2="11.0998" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.6106" x2="10.1092" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.1026" x2="10.1092" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-8.382" x2="11.0998" y2="-8.382" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.382" x2="11.0998" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-8.1026" x2="10.1092" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.62" x2="10.1092" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.8994" x2="11.0998" y2="-7.8994" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.8994" x2="11.0998" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.62" x2="10.1092" y2="-7.62" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.112" x2="10.1092" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-7.3914" x2="11.0998" y2="-7.3914" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.3914" x2="11.0998" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-7.112" x2="10.1092" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.604" x2="10.1092" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.8834" x2="11.0998" y2="-6.8834" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.8834" x2="11.0998" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.604" x2="10.1092" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.1214" x2="10.1092" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-6.4008" x2="11.0998" y2="-6.4008" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.4008" x2="11.0998" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-6.1214" x2="10.1092" y2="-6.1214" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.6134" x2="10.1092" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.8928" x2="11.0998" y2="-5.8928" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.8928" x2="11.0998" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.6134" x2="10.1092" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.1054" x2="10.1092" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-5.3848" x2="11.0998" y2="-5.3848" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.3848" x2="11.0998" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-5.1054" x2="10.1092" y2="-5.1054" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.6228" x2="10.1092" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.9022" x2="11.0998" y2="-4.9022" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.9022" x2="11.0998" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.6228" x2="10.1092" y2="-4.6228" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.1148" x2="10.1092" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-4.3942" x2="11.0998" y2="-4.3942" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.3942" x2="11.0998" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-4.1148" x2="10.1092" y2="-4.1148" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.6068" x2="10.1092" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.8862" x2="11.0998" y2="-3.8862" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.8862" x2="11.0998" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.6068" x2="10.1092" y2="-3.6068" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.0988" x2="10.1092" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-3.3782" x2="11.0998" y2="-3.3782" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.3782" x2="11.0998" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-3.0988" x2="10.1092" y2="-3.0988" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.6162" x2="10.1092" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.8956" x2="11.0998" y2="-2.8956" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.8956" x2="11.0998" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.6162" x2="10.1092" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.1082" x2="10.1092" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-2.3876" x2="11.0998" y2="-2.3876" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.3876" x2="11.0998" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-2.1082" x2="10.1092" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.6002" x2="10.1092" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.8796" x2="11.0998" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.8796" x2="11.0998" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.6002" x2="10.1092" y2="-1.6002" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.1176" x2="10.1092" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-1.397" x2="11.0998" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.397" x2="11.0998" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.1176" x2="10.1092" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.6096" x2="10.1092" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.889" x2="11.0998" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.889" x2="11.0998" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.6096" x2="10.1092" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.1016" x2="10.1092" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-0.381" x2="11.0998" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.381" x2="11.0998" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-0.1016" x2="10.1092" y2="-0.1016" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.381" x2="10.1092" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.1016" x2="11.0998" y2="0.1016" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.1016" x2="11.0998" y2="0.381" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.381" x2="10.1092" y2="0.381" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.889" x2="10.1092" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="0.6096" x2="11.0998" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.6096" x2="11.0998" y2="0.889" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="0.889" x2="10.1092" y2="0.889" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.397" x2="10.1092" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.1176" x2="11.0998" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.1176" x2="11.0998" y2="1.397" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.397" x2="10.1092" y2="1.397" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.8796" x2="10.1092" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="1.6002" x2="11.0998" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.6002" x2="11.0998" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="1.8796" x2="10.1092" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.3876" x2="10.1092" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.1082" x2="11.0998" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.1082" x2="11.0998" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.3876" x2="10.1092" y2="2.3876" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.8956" x2="10.1092" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="2.6162" x2="11.0998" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.6162" x2="11.0998" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="2.8956" x2="10.1092" y2="2.8956" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.3782" x2="10.1092" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.0988" x2="11.0998" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.0988" x2="11.0998" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.3782" x2="10.1092" y2="3.3782" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.8862" x2="10.1092" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="3.6068" x2="11.0998" y2="3.6068" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.6068" x2="11.0998" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="3.8862" x2="10.1092" y2="3.8862" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.3942" x2="10.1092" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.1148" x2="11.0998" y2="4.1148" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.1148" x2="11.0998" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.3942" x2="10.1092" y2="4.3942" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.9022" x2="10.1092" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="4.6228" x2="11.0998" y2="4.6228" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.6228" x2="11.0998" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="4.9022" x2="10.1092" y2="4.9022" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.3848" x2="10.1092" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.1054" x2="11.0998" y2="5.1054" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.1054" x2="11.0998" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.3848" x2="10.1092" y2="5.3848" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.8928" x2="10.1092" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="5.6134" x2="11.0998" y2="5.6134" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.6134" x2="11.0998" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="5.8928" x2="10.1092" y2="5.8928" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.4008" x2="10.1092" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.1214" x2="11.0998" y2="6.1214" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.1214" x2="11.0998" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.4008" x2="10.1092" y2="6.4008" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.8834" x2="10.1092" y2="6.604" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="6.604" x2="11.0998" y2="6.604" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.604" x2="11.0998" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="6.8834" x2="10.1092" y2="6.8834" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.3914" x2="10.1092" y2="7.112" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.112" x2="11.0998" y2="7.112" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.112" x2="11.0998" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.3914" x2="10.1092" y2="7.3914" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.8994" x2="10.1092" y2="7.62" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="7.62" x2="11.0998" y2="7.62" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.62" x2="11.0998" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="7.8994" x2="10.1092" y2="7.8994" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.382" x2="10.1092" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.1026" x2="11.0998" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.1026" x2="11.0998" y2="8.382" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.382" x2="10.1092" y2="8.382" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.89" x2="10.1092" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="8.6106" x2="11.0998" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.6106" x2="11.0998" y2="8.89" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="8.89" x2="10.1092" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="8.8392" x2="-8.8392" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="10.1092" x2="-10.1092" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="-10.1092" y1="-10.1092" x2="10.1092" y2="-10.1092" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="-10.1092" x2="10.1092" y2="10.1092" width="0.1524" layer="51"/>
<wire x1="10.1092" y1="10.1092" x2="-10.1092" y2="10.1092" width="0.1524" layer="51"/>
<text x="-10.287" y="8.3566" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="TS7B-M">
<smd name="1" x="-3.81" y="-8.3312" dx="0.8636" dy="2.9972" layer="1"/>
<smd name="2" x="-2.54" y="-8.3312" dx="0.8636" dy="2.9972" layer="1"/>
<smd name="3" x="-1.27" y="-8.3312" dx="0.8636" dy="2.9972" layer="1"/>
<smd name="4" x="0" y="-8.3312" dx="0.8636" dy="2.9972" layer="1"/>
<smd name="5" x="1.27" y="-8.3312" dx="0.8636" dy="2.9972" layer="1"/>
<smd name="6" x="2.54" y="-8.3312" dx="0.8636" dy="2.9972" layer="1"/>
<smd name="7" x="3.81" y="-8.3312" dx="0.8636" dy="2.9972" layer="1"/>
<smd name="8" x="0" y="0.0508" dx="10.5156" dy="11.176" layer="1"/>
<wire x1="-5.207" y1="-5.08" x2="-4.2164" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-3.4036" y1="-5.08" x2="-2.9464" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-5.08" x2="-1.6764" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-5.08" x2="-0.4064" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="0.4064" y1="-5.08" x2="0.8636" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="1.6764" y1="-5.08" x2="2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="2.9464" y1="-5.08" x2="3.4036" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.08" x2="5.207" y2="-5.08" width="0.1524" layer="51"/>
<text x="-4.3942" y="-5.461" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-5.6642" y="-8.9662" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="0" y1="5.08" x2="7.747" y2="5.08" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-5.08" x2="8.128" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="-5.207" y2="8.001" width="0.1524" layer="47"/>
<wire x1="5.207" y1="0" x2="5.207" y2="7.62" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.668" y2="5.08" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="0" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-9.271" x2="10.668" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="0" y1="-7.2898" x2="-7.747" y2="-7.2898" width="0.1524" layer="47"/>
<wire x1="0" y1="-7.1628" x2="0" y2="-7.2898" width="0.1524" layer="47"/>
<wire x1="0" y1="-7.2898" x2="0" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="0" y1="-12.2428" x2="0" y2="-12.6492" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-7.1628" x2="1.27" y2="-12.2428" width="0.1524" layer="47"/>
<text x="-15.7734" y="-18.161" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX34Y118D0T</text>
<text x="-15.7734" y="-20.066" size="1.27" layer="47" ratio="6" rot="SR0">Large Padstyle: RX414Y440D0T</text>
<text x="-14.8082" y="-21.971" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-23.876" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.255" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.4in/10.16mm</text>
<text x="-4.0386" y="8.128" size="0.635" layer="47" ratio="4" rot="SR0">0.41in/10.414mm</text>
<text x="10.795" y="-3.556" size="0.635" layer="47" ratio="4" rot="SR0">0.565in/14.351mm</text>
<text x="-16.3322" y="-8.5852" size="0.635" layer="47" ratio="4" rot="SR0">0.078in/1.981mm</text>
<text x="-2.8194" y="-13.4112" size="0.635" layer="47" ratio="4" rot="SR0">0.05in/1.27mm</text>
<polygon width="0.1524" layer="41">
<vertex x="-4.2418" y="-5.334"/>
<vertex x="4.2418" y="-5.334"/>
<vertex x="4.2418" y="-6.8326"/>
<vertex x="-4.2418" y="-6.8326"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-3.4036" y1="-5.08" x2="-4.2164" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-5.08" x2="-4.2164" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-9.271" x2="-3.4036" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-3.4036" y1="-9.271" x2="-3.4036" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-5.08" x2="-2.9464" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.9464" y1="-5.08" x2="-2.9464" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-2.9464" y1="-9.271" x2="-2.1336" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-9.271" x2="-2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-5.08" x2="-1.6764" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-1.6764" y1="-5.08" x2="-1.6764" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-1.6764" y1="-9.271" x2="-0.8636" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-9.271" x2="-0.8636" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="0.4064" y1="-5.08" x2="-0.4064" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-0.4064" y1="-5.08" x2="-0.4064" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-0.4064" y1="-9.271" x2="0.4064" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="0.4064" y1="-9.271" x2="0.4064" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="1.6764" y1="-5.08" x2="0.8636" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-5.08" x2="0.8636" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-9.271" x2="1.6764" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="1.6764" y1="-9.271" x2="1.6764" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="2.9464" y1="-5.08" x2="2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-5.08" x2="2.1336" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-9.271" x2="2.9464" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="2.9464" y1="-9.271" x2="2.9464" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.08" x2="3.4036" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="3.4036" y1="-5.08" x2="3.4036" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="3.4036" y1="-9.271" x2="4.2164" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-9.271" x2="4.2164" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-5.08" x2="2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="5.207" y1="-5.08" x2="5.207" y2="5.08" width="0.1524" layer="51"/>
<wire x1="5.207" y1="5.08" x2="-5.207" y2="5.08" width="0.1524" layer="51"/>
<wire x1="-5.207" y1="5.08" x2="-5.207" y2="-5.08" width="0.1524" layer="51"/>
<text x="-4.3942" y="-5.461" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-4.2164" y1="-5.8674" x2="-4.2164" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="-2.9464" y1="-5.8674" x2="-2.9464" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="-1.6764" y1="-5.8674" x2="-1.6764" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="-0.4064" y1="-5.8674" x2="-0.4064" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="0.8636" y1="-5.8674" x2="0.8636" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="-5.8674" x2="2.1336" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="3.4036" y1="-5.8674" x2="3.4036" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="-3.4036" y1="-5.8674" x2="-3.4036" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="-5.8674" x2="-2.1336" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="-5.8674" x2="-0.8636" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="0.4064" y1="-5.8674" x2="0.4064" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="1.6764" y1="-5.8674" x2="1.6764" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="2.9464" y1="-5.8674" x2="2.9464" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="4.2164" y1="-5.8674" x2="4.2164" y2="-6.477" width="0.1524" layer="21"/>
<text x="-5.6642" y="-8.9662" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="0" y1="-5.08" x2="7.747" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="7.747" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="7.62" y2="4.826" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="7.874" y2="4.826" width="0.1524" layer="47"/>
<wire x1="7.62" y1="4.826" x2="7.874" y2="4.826" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-5.08" x2="7.62" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-5.08" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.62" y1="-4.826" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="0" x2="-5.207" y2="7.62" width="0.1524" layer="47"/>
<wire x1="5.207" y1="7.62" x2="5.207" y2="8.001" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="5.207" y2="7.62" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="-4.953" y2="7.747" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="-4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="-4.953" y1="7.747" x2="-4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="5.207" y1="7.62" x2="4.953" y2="7.747" width="0.1524" layer="47"/>
<wire x1="5.207" y1="7.62" x2="4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="4.953" y1="7.747" x2="4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="10.287" y2="5.08" width="0.1524" layer="47"/>
<wire x1="0" y1="-9.271" x2="10.287" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.287" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.16" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.414" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.16" y1="4.826" x2="10.414" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-9.271" x2="10.16" y2="-9.017" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-9.271" x2="10.414" y2="-9.017" width="0.1524" layer="47"/>
<wire x1="10.16" y1="-9.017" x2="10.414" y2="-9.017" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-8.128" y2="-7.2898" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-8.128" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-7.747" y2="-6.0198" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-7.747" y2="-10.541" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-7.874" y2="-7.0358" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-7.62" y2="-7.0358" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-7.0358" x2="-7.62" y2="-7.0358" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-7.874" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-7.62" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-9.525" x2="-7.62" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="0" y1="-9.271" x2="0" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-12.2428" x2="1.27" y2="-12.6492" width="0.1524" layer="47"/>
<wire x1="0" y1="-12.2428" x2="-1.27" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-12.2428" x2="2.54" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="0" y1="-12.2428" x2="-0.254" y2="-12.1412" width="0.1524" layer="47"/>
<wire x1="0" y1="-12.2428" x2="-0.254" y2="-12.3952" width="0.1524" layer="47"/>
<wire x1="-0.254" y1="-12.1412" x2="-0.254" y2="-12.3952" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-12.2428" x2="1.524" y2="-12.1412" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-12.2428" x2="1.524" y2="-12.3952" width="0.1524" layer="47"/>
<wire x1="1.524" y1="-12.1412" x2="1.524" y2="-12.3952" width="0.1524" layer="47"/>
<text x="-15.7734" y="-18.161" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX34Y118D0T</text>
<text x="-15.7734" y="-20.066" size="1.27" layer="47" ratio="6" rot="SR0">Large Padstyle: RX414Y440D0T</text>
<text x="-14.8082" y="-21.971" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-23.876" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.255" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.4in/10.16mm</text>
<text x="-4.0386" y="8.128" size="0.635" layer="47" ratio="4" rot="SR0">0.41in/10.414mm</text>
<text x="10.795" y="-3.556" size="0.635" layer="47" ratio="4" rot="SR0">0.565in/14.351mm</text>
<text x="-16.3322" y="-8.5852" size="0.635" layer="47" ratio="4" rot="SR0">0.078in/1.981mm</text>
<text x="-2.8194" y="-13.4112" size="0.635" layer="47" ratio="4" rot="SR0">0.05in/1.27mm</text>
<polygon width="0.1524" layer="41">
<vertex x="-4.2418" y="-5.334"/>
<vertex x="4.2418" y="-5.334"/>
<vertex x="4.2418" y="-6.8326"/>
<vertex x="-4.2418" y="-6.8326"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="U2-I_NCH">
<smd name="1" x="-2.7051" y="0" dx="2.6162" dy="1.2192" layer="1"/>
<smd name="2" x="2.7051" y="0" dx="2.6162" dy="1.2192" layer="1"/>
<wire x1="4.2672" y1="0.4064" x2="6.5532" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="0.4064" x2="6.9342" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="4.2672" y1="-0.4064" x2="6.5532" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="-0.4064" x2="6.9342" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="0.4064" x2="6.5532" y2="1.6764" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="-0.4064" x2="6.5532" y2="-1.6764" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="0.4064" x2="6.4262" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="0.4064" x2="6.6802" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="6.4262" y1="0.6604" x2="6.6802" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="-0.4064" x2="6.4262" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="-0.4064" x2="6.6802" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="6.4262" y1="-0.6604" x2="6.6802" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="0.8636" x2="-3.5052" y2="5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="-3.5052" y2="6.223" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="0.8636" x2="3.5052" y2="5.842" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="5.842" x2="3.5052" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="3.5052" y2="5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="-3.2512" y2="5.969" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="-3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="-3.2512" y1="5.969" x2="-3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="5.842" x2="3.2512" y2="5.969" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="5.842" x2="3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="3.2512" y1="5.969" x2="3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="3.302" x2="-5.842" y2="3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-6.223" y2="3.302" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-3.302" x2="-5.842" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="-3.302" x2="-6.223" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-5.842" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-5.969" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-5.715" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-5.969" y1="3.048" x2="-5.715" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="-3.302" x2="-5.969" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="-3.302" x2="-5.715" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="-5.969" y1="-3.048" x2="-5.715" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-0.8636" x2="-3.5052" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-3.5052" y2="-6.223" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-0.3556" x2="-1.2954" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-1.2954" y2="-6.223" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-4.7752" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-0.0254" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-3.7592" y2="-5.715" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-3.7592" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="-5.715" x2="-3.7592" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-1.0414" y2="-5.715" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-1.0414" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-1.0414" y1="-5.715" x2="-1.0414" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-3.302" x2="-3.302" y2="-8.382" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="-3.302" y2="-8.763" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-3.302" x2="3.302" y2="-8.382" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-8.382" x2="3.302" y2="-8.763" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="3.302" y2="-8.382" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="-3.048" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="-3.048" y2="-8.509" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-8.255" x2="-3.048" y2="-8.509" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-8.382" x2="3.048" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-8.382" x2="3.048" y2="-8.509" width="0.1524" layer="47"/>
<wire x1="3.048" y1="-8.255" x2="3.048" y2="-8.509" width="0.1524" layer="47"/>
<text x="-15.7734" y="-11.4554" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX103Y48D0T</text>
<text x="-18.0848" y="-13.9954" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-16.5354" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="7.0612" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.032in/0.813mm</text>
<text x="-3.7592" y="6.35" size="0.635" layer="47" ratio="4" rot="SR0">0.276in/7.01mm</text>
<text x="-13.8684" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.26in/6.604mm</text>
<text x="-6.1468" y="-6.985" size="0.635" layer="47" ratio="4" rot="SR0">0.087in/2.21mm</text>
<text x="-3.7592" y="-9.525" size="0.635" layer="47" ratio="4" rot="SR0">0.26in/6.604mm</text>
<wire x1="-3.429" y1="-3.429" x2="3.429" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-3.429" x2="3.429" y2="-0.9398" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.429" x2="-3.429" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="3.429" x2="-3.429" y2="0.9398" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-0.9398" x2="-3.429" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="0.9398" x2="3.429" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.651" x2="-1.651" y2="3.302" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-1.651" x2="-1.651" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-3.302" x2="3.302" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-3.302" x2="3.302" y2="3.302" width="0.1524" layer="51"/>
<wire x1="3.302" y1="3.302" x2="-3.302" y2="3.302" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="3.302" x2="-3.302" y2="-3.302" width="0.1524" layer="51"/>
<polygon width="0.0254" layer="41">
<vertex x="-1.3462" y="0.6604"/>
<vertex x="1.3462" y="0.6604"/>
<vertex x="1.3462" y="-0.6604"/>
<vertex x="-1.3462" y="-0.6604"/>
</polygon>
<polygon width="0.0254" layer="41">
<vertex x="-3.2512" y="3.2512"/>
<vertex x="3.2512" y="3.2512"/>
<vertex x="3.2512" y="0.6604"/>
<vertex x="-3.2512" y="0.6604"/>
</polygon>
<polygon width="0.0254" layer="41">
<vertex x="-3.2512" y="-0.6604"/>
<vertex x="3.2512" y="-0.6604"/>
<vertex x="3.2512" y="-3.2512"/>
<vertex x="-3.2512" y="-3.2512"/>
</polygon>
<polygon width="0.0254" layer="41">
<vertex x="-1.3462" y="0.6604"/>
<vertex x="1.3462" y="0.6604"/>
<vertex x="1.3462" y="-0.6604"/>
<vertex x="-1.3462" y="-0.6604"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="U2-I_NCH-M">
<smd name="1" x="-2.7559" y="0" dx="2.921" dy="1.3208" layer="1"/>
<smd name="2" x="2.7559" y="0" dx="2.921" dy="1.3208" layer="1"/>
<wire x1="4.4704" y1="0.4064" x2="6.7564" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="0.4064" x2="7.1374" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="4.4704" y1="-0.4064" x2="6.7564" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="-0.4064" x2="7.1374" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="0.4064" x2="6.7564" y2="1.6764" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="-0.4064" x2="6.7564" y2="-1.6764" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="0.4064" x2="6.6294" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="0.4064" x2="6.8834" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="6.6294" y1="0.6604" x2="6.8834" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="-0.4064" x2="6.6294" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="-0.4064" x2="6.8834" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="6.6294" y1="-0.6604" x2="6.8834" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="0.9144" x2="-3.5052" y2="5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="-3.5052" y2="6.223" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="0.9144" x2="3.5052" y2="5.842" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="5.842" x2="3.5052" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="3.5052" y2="5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="-3.2512" y2="5.969" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="-3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="-3.2512" y1="5.969" x2="-3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="5.842" x2="3.2512" y2="5.969" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="5.842" x2="3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="3.2512" y1="5.969" x2="3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="3.302" x2="-5.842" y2="3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-6.223" y2="3.302" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-3.302" x2="-5.842" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="-3.302" x2="-6.223" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-5.842" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-5.969" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-5.715" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-5.969" y1="3.048" x2="-5.715" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="-3.302" x2="-5.969" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="-3.302" x2="-5.715" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="-5.969" y1="-3.048" x2="-5.715" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-0.9144" x2="-3.5052" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-3.5052" y2="-6.223" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-0.4064" x2="-1.2954" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-1.2954" y2="-6.223" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-4.7752" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-0.0254" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-3.7592" y2="-5.715" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-3.7592" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="-5.715" x2="-3.7592" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-1.0414" y2="-5.715" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-1.0414" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-1.0414" y1="-5.715" x2="-1.0414" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-3.302" x2="-3.302" y2="-8.382" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="-3.302" y2="-8.763" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-3.302" x2="3.302" y2="-8.382" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-8.382" x2="3.302" y2="-8.763" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="3.302" y2="-8.382" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="-3.048" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="-3.048" y2="-8.509" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-8.255" x2="-3.048" y2="-8.509" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-8.382" x2="3.048" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-8.382" x2="3.048" y2="-8.509" width="0.1524" layer="47"/>
<wire x1="3.048" y1="-8.255" x2="3.048" y2="-8.509" width="0.1524" layer="47"/>
<text x="-15.7734" y="-11.4046" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX115Y52D0T</text>
<text x="-18.0848" y="-13.9446" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-16.4846" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="7.2644" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.032in/0.813mm</text>
<text x="-3.7592" y="6.35" size="0.635" layer="47" ratio="4" rot="SR0">0.276in/7.01mm</text>
<text x="-13.8684" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.26in/6.604mm</text>
<text x="-6.1468" y="-6.985" size="0.635" layer="47" ratio="4" rot="SR0">0.087in/2.21mm</text>
<text x="-3.7592" y="-9.525" size="0.635" layer="47" ratio="4" rot="SR0">0.26in/6.604mm</text>
<wire x1="-3.429" y1="-3.429" x2="3.429" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-3.429" x2="3.429" y2="-0.9906" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.429" x2="-3.429" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="3.429" x2="-3.429" y2="0.9906" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-0.9906" x2="-3.429" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="0.9906" x2="3.429" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-4.9022" y1="0" x2="-5.0546" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.0546" y1="0" x2="-4.9022" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-3.302" y1="1.651" x2="-1.651" y2="3.302" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-1.651" x2="-1.651" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-3.302" x2="3.302" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-3.302" x2="3.302" y2="3.302" width="0.1524" layer="51"/>
<wire x1="3.302" y1="3.302" x2="-3.302" y2="3.302" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="3.302" x2="-3.302" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="-2.7178" y1="0" x2="-2.8702" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-2.8702" y1="0" x2="-2.7178" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41">
<vertex x="-1.2446" y="0.7112"/>
<vertex x="1.2446" y="0.7112"/>
<vertex x="1.2446" y="-0.7112"/>
<vertex x="-1.2446" y="-0.7112"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-3.2512" y="3.2512"/>
<vertex x="3.2512" y="3.2512"/>
<vertex x="3.2512" y="0.7112"/>
<vertex x="-3.2512" y="0.7112"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-3.2512" y="-0.7112"/>
<vertex x="3.2512" y="-0.7112"/>
<vertex x="3.2512" y="-3.2512"/>
<vertex x="-3.2512" y="-3.2512"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-1.2446" y="0.7112"/>
<vertex x="1.2446" y="0.7112"/>
<vertex x="1.2446" y="-0.7112"/>
<vertex x="-1.2446" y="-0.7112"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="U2-I_NCH-L">
<smd name="1" x="-2.6543" y="0" dx="2.3114" dy="1.1176" layer="1"/>
<smd name="2" x="2.6543" y="0" dx="2.3114" dy="1.1176" layer="1"/>
<wire x1="4.064" y1="0.4064" x2="6.35" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="6.35" y1="0.4064" x2="6.731" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="4.064" y1="-0.4064" x2="6.35" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="6.35" y1="-0.4064" x2="6.731" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="6.35" y1="0.4064" x2="6.35" y2="1.6764" width="0.1524" layer="47"/>
<wire x1="6.35" y1="-0.4064" x2="6.35" y2="-1.6764" width="0.1524" layer="47"/>
<wire x1="6.35" y1="0.4064" x2="6.223" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="6.35" y1="0.4064" x2="6.477" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="6.223" y1="0.6604" x2="6.477" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="6.35" y1="-0.4064" x2="6.223" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="6.35" y1="-0.4064" x2="6.477" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="6.223" y1="-0.6604" x2="6.477" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="0.8128" x2="-3.5052" y2="5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="-3.5052" y2="6.223" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="0.8128" x2="3.5052" y2="5.842" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="5.842" x2="3.5052" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="3.5052" y2="5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="-3.2512" y2="5.969" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="5.842" x2="-3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="-3.2512" y1="5.969" x2="-3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="5.842" x2="3.2512" y2="5.969" width="0.1524" layer="47"/>
<wire x1="3.5052" y1="5.842" x2="3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="3.2512" y1="5.969" x2="3.2512" y2="5.715" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="3.302" x2="-5.842" y2="3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-6.223" y2="3.302" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-3.302" x2="-5.842" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="-3.302" x2="-6.223" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-5.842" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-5.969" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="3.302" x2="-5.715" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-5.969" y1="3.048" x2="-5.715" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="-3.302" x2="-5.969" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="-5.842" y1="-3.302" x2="-5.715" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="-5.969" y1="-3.048" x2="-5.715" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-0.8128" x2="-3.5052" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-3.5052" y2="-6.223" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-0.3048" x2="-1.2954" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-1.2954" y2="-6.223" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-4.7752" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-0.0254" y2="-5.842" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-3.7592" y2="-5.715" width="0.1524" layer="47"/>
<wire x1="-3.5052" y1="-5.842" x2="-3.7592" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-3.7592" y1="-5.715" x2="-3.7592" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-1.0414" y2="-5.715" width="0.1524" layer="47"/>
<wire x1="-1.2954" y1="-5.842" x2="-1.0414" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-1.0414" y1="-5.715" x2="-1.0414" y2="-5.969" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-3.302" x2="-3.302" y2="-8.382" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="-3.302" y2="-8.763" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-3.302" x2="3.302" y2="-8.382" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-8.382" x2="3.302" y2="-8.763" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="3.302" y2="-8.382" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="-3.048" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-8.382" x2="-3.048" y2="-8.509" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-8.255" x2="-3.048" y2="-8.509" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-8.382" x2="3.048" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="3.302" y1="-8.382" x2="3.048" y2="-8.509" width="0.1524" layer="47"/>
<wire x1="3.048" y1="-8.255" x2="3.048" y2="-8.509" width="0.1524" layer="47"/>
<text x="-15.2146" y="-11.5062" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX91Y44D0T</text>
<text x="-18.0848" y="-14.0462" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-16.5862" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="6.858" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.032in/0.813mm</text>
<text x="-3.7592" y="6.35" size="0.635" layer="47" ratio="4" rot="SR0">0.276in/7.01mm</text>
<text x="-13.8684" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.26in/6.604mm</text>
<text x="-6.1468" y="-6.985" size="0.635" layer="47" ratio="4" rot="SR0">0.087in/2.21mm</text>
<text x="-3.7592" y="-9.525" size="0.635" layer="47" ratio="4" rot="SR0">0.26in/6.604mm</text>
<wire x1="-3.429" y1="-3.429" x2="3.429" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-3.429" x2="3.429" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.429" x2="-3.429" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="3.429" x2="-3.429" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-0.889" x2="-3.429" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="0.889" x2="3.429" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-4.4958" y1="0" x2="-4.6482" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.6482" y1="0" x2="-4.4958" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-3.302" y1="1.651" x2="-1.651" y2="3.302" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-1.651" x2="-1.651" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-3.302" x2="3.302" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-3.302" x2="3.302" y2="3.302" width="0.1524" layer="51"/>
<wire x1="3.302" y1="3.302" x2="-3.302" y2="3.302" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="3.302" x2="-3.302" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="-2.7178" y1="0" x2="-2.8702" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-2.8702" y1="0" x2="-2.7178" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41">
<vertex x="-1.4478" y="0.6096"/>
<vertex x="1.4478" y="0.6096"/>
<vertex x="1.4478" y="-0.6096"/>
<vertex x="-1.4478" y="-0.6096"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-3.2512" y="3.2512"/>
<vertex x="3.2512" y="3.2512"/>
<vertex x="3.2512" y="0.6096"/>
<vertex x="-3.2512" y="0.6096"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-3.2512" y="-0.6096"/>
<vertex x="3.2512" y="-0.6096"/>
<vertex x="3.2512" y="-3.2512"/>
<vertex x="-3.2512" y="-3.2512"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-1.4478" y="0.6096"/>
<vertex x="1.4478" y="0.6096"/>
<vertex x="1.4478" y="-0.6096"/>
<vertex x="-1.4478" y="-0.6096"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="CAP_UWF_4X5P4_NCH">
<smd name="1" x="-1.8034" y="0" dx="2.413" dy="1.2192" layer="1"/>
<smd name="2" x="1.8034" y="0" dx="2.413" dy="1.2192" layer="1"/>
<wire x1="3.2512" y1="0.4064" x2="5.5372" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="5.5372" y1="0.4064" x2="5.9436" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="3.2512" y1="-0.4064" x2="5.5372" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="5.5372" y1="-0.4064" x2="5.9436" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="5.5372" y1="0.4064" x2="5.5372" y2="1.6764" width="0.1524" layer="47"/>
<wire x1="5.5372" y1="-0.4064" x2="5.5372" y2="-1.6764" width="0.1524" layer="47"/>
<wire x1="5.5372" y1="0.4064" x2="5.4356" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="5.5372" y1="0.4064" x2="5.6896" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="5.4356" y1="0.6604" x2="5.6896" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="5.5372" y1="-0.4064" x2="5.4356" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="5.5372" y1="-0.4064" x2="5.6896" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="5.4356" y1="-0.6604" x2="5.6896" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="0.8636" x2="-2.4892" y2="4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="-2.4892" y2="5.08" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="0.8636" x2="2.4892" y2="4.6736" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="4.6736" x2="2.4892" y2="5.08" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="2.4892" y2="4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="-2.2352" y2="4.826" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="-2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="-2.2352" y1="4.826" x2="-2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="4.6736" x2="2.2352" y2="4.826" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="4.6736" x2="2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="2.2352" y1="4.826" x2="2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="2.1336" x2="-4.6736" y2="2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-5.08" y2="2.1336" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-2.1336" x2="-4.6736" y2="-2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="-2.1336" x2="-5.08" y2="-2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-4.6736" y2="-2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-4.826" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-4.572" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="-4.826" y1="1.8796" x2="-4.572" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="-2.1336" x2="-4.826" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="-2.1336" x2="-4.572" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="-4.826" y1="-1.8796" x2="-4.572" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-0.8636" x2="-2.4892" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-2.4892" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-0.3556" x2="-0.508" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="-0.508" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-3.7592" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="0.762" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-2.7432" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-2.7432" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-2.7432" y1="-4.572" x2="-2.7432" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="-0.254" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="-0.254" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-0.254" y1="-4.572" x2="-0.254" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-2.1336" x2="-2.1336" y2="-7.2136" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="-2.1336" y2="-7.62" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-2.1336" x2="2.1336" y2="-7.2136" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-7.2136" x2="2.1336" y2="-7.62" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="2.1336" y2="-7.2136" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="-1.8796" y2="-7.112" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="-1.8796" y2="-7.366" width="0.1524" layer="47"/>
<wire x1="-1.8796" y1="-7.112" x2="-1.8796" y2="-7.366" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-7.2136" x2="1.8796" y2="-7.112" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-7.2136" x2="1.8796" y2="-7.366" width="0.1524" layer="47"/>
<wire x1="1.8796" y1="-7.112" x2="1.8796" y2="-7.366" width="0.1524" layer="47"/>
<text x="-15.2146" y="-11.4554" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX95Y48D0T</text>
<text x="-18.0848" y="-13.9954" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-16.5354" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="6.0452" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.032in/0.813mm</text>
<text x="-4.0386" y="5.1816" size="0.635" layer="47" ratio="4" rot="SR0">0.197in/5.004mm</text>
<text x="-13.2842" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.169in/4.293mm</text>
<text x="-5.5372" y="-5.842" size="0.635" layer="47" ratio="4" rot="SR0">0.079in/2.007mm</text>
<text x="-4.0386" y="-8.382" size="0.635" layer="47" ratio="4" rot="SR0">0.169in/4.293mm</text>
<wire x1="-2.286" y1="-2.286" x2="2.286" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-2.286" x2="2.286" y2="-0.9398" width="0.1524" layer="21"/>
<wire x1="2.286" y1="2.286" x2="-2.286" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="2.286" x2="-2.286" y2="0.9398" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-0.9398" x2="-2.286" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.286" y1="0.9398" x2="2.286" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="1.0668" x2="-1.0668" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-1.0668" x2="-1.0668" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-2.1336" x2="2.1336" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-2.1336" x2="2.1336" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="2.1336" x2="-2.1336" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="2.1336" x2="-2.1336" y2="-2.1336" width="0.1524" layer="51"/>
<polygon width="0.0254" layer="41">
<vertex x="-0.5461" y="0.6604"/>
<vertex x="0.5461" y="0.6604"/>
<vertex x="0.5461" y="-0.6604"/>
<vertex x="-0.5461" y="-0.6604"/>
</polygon>
<polygon width="0.0254" layer="41">
<vertex x="-2.0955" y="2.0955"/>
<vertex x="2.0955" y="2.0955"/>
<vertex x="2.0955" y="0.6604"/>
<vertex x="-2.0955" y="0.6604"/>
</polygon>
<polygon width="0.0254" layer="41">
<vertex x="-2.0955" y="-0.6604"/>
<vertex x="2.0955" y="-0.6604"/>
<vertex x="2.0955" y="-2.0955"/>
<vertex x="-2.0955" y="-2.0955"/>
</polygon>
<polygon width="0.0254" layer="41">
<vertex x="-0.5461" y="0.6604"/>
<vertex x="0.5461" y="0.6604"/>
<vertex x="0.5461" y="-0.6604"/>
<vertex x="-0.5461" y="-0.6604"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="CAP_UWF_4X5P4_NCH-M">
<smd name="1" x="-1.8542" y="0" dx="2.7178" dy="1.3208" layer="1"/>
<smd name="2" x="1.8542" y="0" dx="2.7178" dy="1.3208" layer="1"/>
<wire x1="3.4544" y1="0.4064" x2="5.7404" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="5.7404" y1="0.4064" x2="6.1468" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="3.4544" y1="-0.4064" x2="5.7404" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="5.7404" y1="-0.4064" x2="6.1468" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="5.7404" y1="0.4064" x2="5.7404" y2="1.6764" width="0.1524" layer="47"/>
<wire x1="5.7404" y1="-0.4064" x2="5.7404" y2="-1.6764" width="0.1524" layer="47"/>
<wire x1="5.7404" y1="0.4064" x2="5.6388" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="5.7404" y1="0.4064" x2="5.8928" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="5.6388" y1="0.6604" x2="5.8928" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="5.7404" y1="-0.4064" x2="5.6388" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="5.7404" y1="-0.4064" x2="5.8928" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="5.6388" y1="-0.6604" x2="5.8928" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="0.9144" x2="-2.4892" y2="4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="-2.4892" y2="5.08" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="0.9144" x2="2.4892" y2="4.6736" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="4.6736" x2="2.4892" y2="5.08" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="2.4892" y2="4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="-2.2352" y2="4.826" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="-2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="-2.2352" y1="4.826" x2="-2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="4.6736" x2="2.2352" y2="4.826" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="4.6736" x2="2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="2.2352" y1="4.826" x2="2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="2.1336" x2="-4.6736" y2="2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-5.08" y2="2.1336" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-2.1336" x2="-4.6736" y2="-2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="-2.1336" x2="-5.08" y2="-2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-4.6736" y2="-2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-4.826" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-4.572" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="-4.826" y1="1.8796" x2="-4.572" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="-2.1336" x2="-4.826" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="-2.1336" x2="-4.572" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="-4.826" y1="-1.8796" x2="-4.572" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-0.9144" x2="-2.4892" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-2.4892" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-0.4064" x2="-0.508" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="-0.508" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-3.7592" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="0.762" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-2.7432" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-2.7432" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-2.7432" y1="-4.572" x2="-2.7432" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="-0.254" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="-0.254" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-0.254" y1="-4.572" x2="-0.254" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-2.1336" x2="-2.1336" y2="-7.2136" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="-2.1336" y2="-7.62" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-2.1336" x2="2.1336" y2="-7.2136" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-7.2136" x2="2.1336" y2="-7.62" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="2.1336" y2="-7.2136" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="-1.8796" y2="-7.112" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="-1.8796" y2="-7.366" width="0.1524" layer="47"/>
<wire x1="-1.8796" y1="-7.112" x2="-1.8796" y2="-7.366" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-7.2136" x2="1.8796" y2="-7.112" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-7.2136" x2="1.8796" y2="-7.366" width="0.1524" layer="47"/>
<wire x1="1.8796" y1="-7.112" x2="1.8796" y2="-7.366" width="0.1524" layer="47"/>
<text x="-15.7734" y="-11.4046" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX107Y52D0T</text>
<text x="-18.0848" y="-13.9446" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-16.4846" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="6.2484" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.032in/0.813mm</text>
<text x="-4.0386" y="5.1816" size="0.635" layer="47" ratio="4" rot="SR0">0.197in/5.004mm</text>
<text x="-13.2842" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.169in/4.293mm</text>
<text x="-5.5372" y="-5.842" size="0.635" layer="47" ratio="4" rot="SR0">0.079in/2.007mm</text>
<text x="-4.0386" y="-8.382" size="0.635" layer="47" ratio="4" rot="SR0">0.169in/4.293mm</text>
<wire x1="-2.286" y1="-2.286" x2="2.286" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-2.286" x2="2.286" y2="-0.9906" width="0.1524" layer="21"/>
<wire x1="2.286" y1="2.286" x2="-2.286" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="2.286" x2="-2.286" y2="0.9906" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-0.9906" x2="-2.286" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.286" y1="0.9906" x2="2.286" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-3.9116" y1="0" x2="-4.064" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.064" y1="0" x2="-3.9116" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.1336" y1="1.0668" x2="-1.0668" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-1.0668" x2="-1.0668" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-2.1336" x2="2.1336" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-2.1336" x2="2.1336" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="2.1336" x2="-2.1336" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="2.1336" x2="-2.1336" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-1.5748" y1="0" x2="-1.7272" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-1.7272" y1="0" x2="-1.5748" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41">
<vertex x="-0.4445" y="0.7112"/>
<vertex x="0.4445" y="0.7112"/>
<vertex x="0.4445" y="-0.7112"/>
<vertex x="-0.4445" y="-0.7112"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-2.0955" y="2.0955"/>
<vertex x="2.0955" y="2.0955"/>
<vertex x="2.0955" y="0.7112"/>
<vertex x="-2.0955" y="0.7112"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-2.0955" y="-0.7112"/>
<vertex x="2.0955" y="-0.7112"/>
<vertex x="2.0955" y="-2.0955"/>
<vertex x="-2.0955" y="-2.0955"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-0.4445" y="0.7112"/>
<vertex x="0.4445" y="0.7112"/>
<vertex x="0.4445" y="-0.7112"/>
<vertex x="-0.4445" y="-0.7112"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="CAP_UWF_4X5P4_NCH-L">
<smd name="1" x="-1.7526" y="0" dx="2.1082" dy="1.1176" layer="1"/>
<smd name="2" x="1.7526" y="0" dx="2.1082" dy="1.1176" layer="1"/>
<wire x1="3.048" y1="0.4064" x2="5.334" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="5.334" y1="0.4064" x2="5.7404" y2="0.4064" width="0.1524" layer="47"/>
<wire x1="3.048" y1="-0.4064" x2="5.334" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="5.334" y1="-0.4064" x2="5.7404" y2="-0.4064" width="0.1524" layer="47"/>
<wire x1="5.334" y1="0.4064" x2="5.334" y2="1.6764" width="0.1524" layer="47"/>
<wire x1="5.334" y1="-0.4064" x2="5.334" y2="-1.6764" width="0.1524" layer="47"/>
<wire x1="5.334" y1="0.4064" x2="5.2324" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="5.334" y1="0.4064" x2="5.4864" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="5.2324" y1="0.6604" x2="5.4864" y2="0.6604" width="0.1524" layer="47"/>
<wire x1="5.334" y1="-0.4064" x2="5.2324" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="5.334" y1="-0.4064" x2="5.4864" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="5.2324" y1="-0.6604" x2="5.4864" y2="-0.6604" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="0.8128" x2="-2.4892" y2="4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="-2.4892" y2="5.08" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="0.8128" x2="2.4892" y2="4.6736" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="4.6736" x2="2.4892" y2="5.08" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="2.4892" y2="4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="-2.2352" y2="4.826" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="4.6736" x2="-2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="-2.2352" y1="4.826" x2="-2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="4.6736" x2="2.2352" y2="4.826" width="0.1524" layer="47"/>
<wire x1="2.4892" y1="4.6736" x2="2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="2.2352" y1="4.826" x2="2.2352" y2="4.572" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="2.1336" x2="-4.6736" y2="2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-5.08" y2="2.1336" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-2.1336" x2="-4.6736" y2="-2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="-2.1336" x2="-5.08" y2="-2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-4.6736" y2="-2.1336" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-4.826" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="2.1336" x2="-4.572" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="-4.826" y1="1.8796" x2="-4.572" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="-2.1336" x2="-4.826" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="-4.6736" y1="-2.1336" x2="-4.572" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="-4.826" y1="-1.8796" x2="-4.572" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-0.8128" x2="-2.4892" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-2.4892" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-0.3048" x2="-0.508" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="-0.508" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-3.7592" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="0.762" y2="-4.6736" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-2.7432" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="-2.4892" y1="-4.6736" x2="-2.7432" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-2.7432" y1="-4.572" x2="-2.7432" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="-0.254" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="-4.6736" x2="-0.254" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-0.254" y1="-4.572" x2="-0.254" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-2.1336" x2="-2.1336" y2="-7.2136" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="-2.1336" y2="-7.62" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-2.1336" x2="2.1336" y2="-7.2136" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-7.2136" x2="2.1336" y2="-7.62" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="2.1336" y2="-7.2136" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="-1.8796" y2="-7.112" width="0.1524" layer="47"/>
<wire x1="-2.1336" y1="-7.2136" x2="-1.8796" y2="-7.366" width="0.1524" layer="47"/>
<wire x1="-1.8796" y1="-7.112" x2="-1.8796" y2="-7.366" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-7.2136" x2="1.8796" y2="-7.112" width="0.1524" layer="47"/>
<wire x1="2.1336" y1="-7.2136" x2="1.8796" y2="-7.366" width="0.1524" layer="47"/>
<wire x1="1.8796" y1="-7.112" x2="1.8796" y2="-7.366" width="0.1524" layer="47"/>
<text x="-15.2146" y="-11.5062" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX83Y44D0T</text>
<text x="-18.0848" y="-14.0462" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-16.5862" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="5.842" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.032in/0.813mm</text>
<text x="-4.0386" y="5.1816" size="0.635" layer="47" ratio="4" rot="SR0">0.197in/5.004mm</text>
<text x="-13.2842" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.169in/4.293mm</text>
<text x="-5.5372" y="-5.842" size="0.635" layer="47" ratio="4" rot="SR0">0.079in/2.007mm</text>
<text x="-4.0386" y="-8.382" size="0.635" layer="47" ratio="4" rot="SR0">0.169in/4.293mm</text>
<wire x1="-2.286" y1="-2.286" x2="2.286" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-2.286" x2="2.286" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="2.286" x2="-2.286" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="2.286" x2="-2.286" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-0.889" x2="-2.286" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.286" y1="0.889" x2="2.286" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="0" x2="-3.6576" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-3.6576" y1="0" x2="-3.5052" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.1336" y1="1.0668" x2="-1.0668" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-1.0668" x2="-1.0668" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-2.1336" x2="2.1336" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-2.1336" x2="2.1336" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="2.1336" x2="-2.1336" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="2.1336" x2="-2.1336" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-1.5748" y1="0" x2="-1.7272" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-1.7272" y1="0" x2="-1.5748" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41">
<vertex x="-0.6477" y="0.6096"/>
<vertex x="0.6477" y="0.6096"/>
<vertex x="0.6477" y="-0.6096"/>
<vertex x="-0.6477" y="-0.6096"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-2.0955" y="2.0955"/>
<vertex x="2.0955" y="2.0955"/>
<vertex x="2.0955" y="0.6096"/>
<vertex x="-2.0955" y="0.6096"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-2.0955" y="-0.6096"/>
<vertex x="2.0955" y="-0.6096"/>
<vertex x="2.0955" y="-2.0955"/>
<vertex x="-2.0955" y="-2.0955"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-0.6477" y="0.6096"/>
<vertex x="0.6477" y="0.6096"/>
<vertex x="0.6477" y="-0.6096"/>
<vertex x="-0.6477" y="-0.6096"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="DPAK_045S-M3_VIS">
<smd name="1" x="-2.54" y="-9.652" dx="1.0414" dy="3.5052" layer="1"/>
<smd name="3" x="2.54" y="-9.652" dx="1.0414" dy="3.5052" layer="1"/>
<smd name="2" x="0" y="2.6543" dx="10.7188" dy="8.7122" layer="1"/>
<wire x1="-2.032" y1="-4.826" x2="-3.048" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-4.826" x2="-3.048" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-11.049" x2="-2.032" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="-11.049" x2="-2.032" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-4.826" x2="2.032" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="2.032" y1="-4.826" x2="2.0574" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="2.0574" y1="-11.049" x2="3.048" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-11.049" x2="3.048" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-4.826" x2="5.334" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-4.826" x2="5.334" y2="4.826" width="0.1524" layer="51"/>
<wire x1="5.334" y1="4.826" x2="-5.334" y2="4.826" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="4.826" x2="-5.334" y2="-4.826" width="0.1524" layer="51"/>
<text x="-3.1242" y="-5.207" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-3.048" y1="-5.4356" x2="-3.048" y2="-7.5438" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-5.4356" x2="2.032" y2="-7.5438" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-5.4356" x2="-2.032" y2="-7.5438" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-5.4356" x2="3.048" y2="-7.5438" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-4.953" x2="5.461" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-4.953" x2="5.461" y2="-2.0066" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-2.0066" x2="-5.461" y2="-4.953" width="0.1524" layer="21"/>
<text x="-6.2992" y="-10.287" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="0" y1="4.826" x2="7.874" y2="4.826" width="0.1524" layer="47"/>
<wire x1="0" y1="-4.826" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.874" y1="-4.826" x2="8.255" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="7.747" y2="4.572" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="8.001" y2="4.572" width="0.1524" layer="47"/>
<wire x1="7.747" y1="4.572" x2="8.001" y2="4.572" width="0.1524" layer="47"/>
<wire x1="7.874" y1="-4.826" x2="7.747" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="7.874" y1="-4.826" x2="8.001" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-4.572" x2="8.001" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="0" y1="6.477" x2="-7.874" y2="6.477" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-8.255" y2="6.477" width="0.1524" layer="47"/>
<wire x1="0" y1="-1.524" x2="-7.874" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-1.524" x2="-8.255" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-7.874" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-8.001" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-7.747" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="6.223" x2="-7.747" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-1.524" x2="-8.001" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-1.524" x2="-7.747" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="-1.27" x2="-7.747" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="-5.334" y2="10.287" width="0.1524" layer="47"/>
<wire x1="5.334" y1="7.366" x2="5.334" y2="9.906" width="0.1524" layer="47"/>
<wire x1="5.334" y1="9.906" x2="5.334" y2="10.287" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="5.334" y2="9.906" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="-5.08" y2="10.033" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="-5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="-5.08" y1="10.033" x2="-5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="5.334" y1="9.906" x2="5.08" y2="10.033" width="0.1524" layer="47"/>
<wire x1="5.334" y1="9.906" x2="5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="5.08" y1="10.033" x2="5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="0" x2="-5.334" y2="7.366" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="-5.334" y2="9.906" width="0.1524" layer="47"/>
<wire x1="5.334" y1="0" x2="5.334" y2="7.366" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="5.334" y2="7.366" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="-5.08" y2="7.493" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="-5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="-5.08" y1="7.493" x2="-5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="5.334" y1="7.366" x2="5.08" y2="7.493" width="0.1524" layer="47"/>
<wire x1="5.334" y1="7.366" x2="5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="5.08" y1="7.493" x2="5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="10.414" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.795" y2="4.826" width="0.1524" layer="47"/>
<wire x1="-8.255" y1="-11.049" x2="-7.874" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="10.414" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="10.414" y1="-11.049" x2="10.795" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.414" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.287" y2="4.572" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.541" y2="4.572" width="0.1524" layer="47"/>
<wire x1="10.287" y1="4.572" x2="10.541" y2="4.572" width="0.1524" layer="47"/>
<wire x1="10.414" y1="-11.049" x2="10.287" y2="-10.795" width="0.1524" layer="47"/>
<wire x1="10.414" y1="-11.049" x2="10.541" y2="-10.795" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-10.795" x2="10.541" y2="-10.795" width="0.1524" layer="47"/>
<wire x1="0" y1="-8.255" x2="-7.874" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-8.255" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-7.874" y2="-6.985" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="-7.874" y2="-12.319" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-8.001" y2="-8.001" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-7.747" y2="-8.001" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="-8.001" x2="-7.747" y2="-8.001" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="-8.001" y2="-11.303" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="-7.747" y2="-11.303" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="-11.303" x2="-7.747" y2="-11.303" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-7.9248" x2="-3.048" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-3.048" y2="-11.4808" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-7.9248" x2="-2.032" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-2.032" y2="-11.4808" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-4.318" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-0.762" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-3.302" y2="-10.9728" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-3.302" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-10.9728" x2="-3.302" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-1.778" y2="-10.9728" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-1.778" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-1.778" y1="-10.9728" x2="-1.778" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-7.9248" x2="-2.54" y2="-13.6652" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="-2.54" y2="-14.0208" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-7.9248" x2="2.54" y2="-13.6652" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-13.6652" x2="2.54" y2="-14.0208" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="2.54" y2="-13.6652" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="-2.286" y2="-13.5128" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="-2.286" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="-2.286" y1="-13.5128" x2="-2.286" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-13.6652" x2="2.286" y2="-13.5128" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-13.6652" x2="2.286" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="2.286" y1="-13.5128" x2="2.286" y2="-13.7668" width="0.1524" layer="47"/>
<text x="-15.7734" y="-19.939" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX41Y138D0T</text>
<text x="-15.7734" y="-21.844" size="1.27" layer="47" ratio="6" rot="SR0">Large Padstyle: RX422Y343D0T</text>
<text x="-14.8082" y="-23.749" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-25.654" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.382" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.38in/9.652mm</text>
<text x="-16.4592" y="2.159" size="0.635" layer="47" ratio="4" rot="SR0">0.315in/8.001mm</text>
<text x="-4.0386" y="10.414" size="0.635" layer="47" ratio="4" rot="SR0">0.42in/10.668mm</text>
<text x="-4.0386" y="7.874" size="0.635" layer="47" ratio="4" rot="SR0">0.42in/10.668mm</text>
<text x="10.922" y="-5.1308" size="0.635" layer="47" ratio="4" rot="SR0">0.625in/15.875mm</text>
<text x="-15.9004" y="-9.9568" size="0.635" layer="47" ratio="4" rot="SR0">0.11in/2.794mm</text>
<text x="-6.5786" y="-12.2428" size="0.635" layer="47" ratio="4" rot="SR0">0.039in/0.991mm</text>
<text x="-3.175" y="-14.7828" size="0.635" layer="47" ratio="4" rot="SR0">0.2in/5.08mm</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="DPAK_045S-M3_VIS-M">
<smd name="1" x="-2.54" y="-9.7028" dx="1.0414" dy="3.81" layer="1"/>
<smd name="3" x="2.54" y="-9.7028" dx="1.0414" dy="3.81" layer="1"/>
<smd name="2" x="0" y="2.7559" dx="10.7696" dy="9.017" layer="1"/>
<wire x1="-2.032" y1="-4.826" x2="-3.048" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-4.826" x2="-3.048" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-11.049" x2="-2.032" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="-11.049" x2="-2.032" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-4.826" x2="2.032" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="2.032" y1="-4.826" x2="2.0574" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="2.0574" y1="-11.049" x2="3.048" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-11.049" x2="3.048" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-4.826" x2="5.334" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-4.826" x2="5.334" y2="4.826" width="0.1524" layer="51"/>
<wire x1="5.334" y1="4.826" x2="-5.334" y2="4.826" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="4.826" x2="-5.334" y2="-4.826" width="0.1524" layer="51"/>
<text x="-3.1242" y="-5.207" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-3.048" y1="-5.4356" x2="-3.048" y2="-7.4422" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-5.4356" x2="2.032" y2="-7.4422" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-5.4356" x2="-2.032" y2="-7.4422" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-5.4356" x2="3.048" y2="-7.4422" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-4.953" x2="5.461" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-4.953" x2="5.461" y2="-2.0828" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-2.0828" x2="-5.461" y2="-4.953" width="0.1524" layer="21"/>
<text x="-6.2992" y="-10.3378" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="0" y1="4.826" x2="7.874" y2="4.826" width="0.1524" layer="47"/>
<wire x1="0" y1="-4.826" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.874" y1="-4.826" x2="8.255" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="7.747" y2="4.572" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="8.001" y2="4.572" width="0.1524" layer="47"/>
<wire x1="7.747" y1="4.572" x2="8.001" y2="4.572" width="0.1524" layer="47"/>
<wire x1="7.874" y1="-4.826" x2="7.747" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="7.874" y1="-4.826" x2="8.001" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-4.572" x2="8.001" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="0" y1="6.477" x2="-7.874" y2="6.477" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-8.255" y2="6.477" width="0.1524" layer="47"/>
<wire x1="0" y1="-1.524" x2="-7.874" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-1.524" x2="-8.255" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-7.874" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-8.001" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-7.747" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="6.223" x2="-7.747" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-1.524" x2="-8.001" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-1.524" x2="-7.747" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="-1.27" x2="-7.747" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="-5.334" y2="10.287" width="0.1524" layer="47"/>
<wire x1="5.334" y1="7.366" x2="5.334" y2="9.906" width="0.1524" layer="47"/>
<wire x1="5.334" y1="9.906" x2="5.334" y2="10.287" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="5.334" y2="9.906" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="-5.08" y2="10.033" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="-5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="-5.08" y1="10.033" x2="-5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="5.334" y1="9.906" x2="5.08" y2="10.033" width="0.1524" layer="47"/>
<wire x1="5.334" y1="9.906" x2="5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="5.08" y1="10.033" x2="5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="0" x2="-5.334" y2="7.366" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="-5.334" y2="9.906" width="0.1524" layer="47"/>
<wire x1="5.334" y1="0" x2="5.334" y2="7.366" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="5.334" y2="7.366" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="-5.08" y2="7.493" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="-5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="-5.08" y1="7.493" x2="-5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="5.334" y1="7.366" x2="5.08" y2="7.493" width="0.1524" layer="47"/>
<wire x1="5.334" y1="7.366" x2="5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="5.08" y1="7.493" x2="5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="10.414" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.795" y2="4.826" width="0.1524" layer="47"/>
<wire x1="-8.255" y1="-11.049" x2="-7.874" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="10.414" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="10.414" y1="-11.049" x2="10.795" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.414" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.287" y2="4.572" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.541" y2="4.572" width="0.1524" layer="47"/>
<wire x1="10.287" y1="4.572" x2="10.541" y2="4.572" width="0.1524" layer="47"/>
<wire x1="10.414" y1="-11.049" x2="10.287" y2="-10.795" width="0.1524" layer="47"/>
<wire x1="10.414" y1="-11.049" x2="10.541" y2="-10.795" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-10.795" x2="10.541" y2="-10.795" width="0.1524" layer="47"/>
<wire x1="0" y1="-8.255" x2="-7.874" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-8.255" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-7.874" y2="-6.985" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="-7.874" y2="-12.319" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-8.001" y2="-8.001" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-7.747" y2="-8.001" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="-8.001" x2="-7.747" y2="-8.001" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="-8.001" y2="-11.303" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="-7.747" y2="-11.303" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="-11.303" x2="-7.747" y2="-11.303" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-7.9248" x2="-3.048" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-3.048" y2="-11.4808" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-7.9248" x2="-2.032" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-2.032" y2="-11.4808" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-4.318" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-0.762" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-3.302" y2="-10.9728" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-3.302" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-10.9728" x2="-3.302" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-1.778" y2="-10.9728" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-1.778" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-1.778" y1="-10.9728" x2="-1.778" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-7.9248" x2="-2.54" y2="-13.6652" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="-2.54" y2="-14.0208" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-7.9248" x2="2.54" y2="-13.6652" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-13.6652" x2="2.54" y2="-14.0208" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="2.54" y2="-13.6652" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="-2.286" y2="-13.5128" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="-2.286" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="-2.286" y1="-13.5128" x2="-2.286" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-13.6652" x2="2.286" y2="-13.5128" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-13.6652" x2="2.286" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="2.286" y1="-13.5128" x2="2.286" y2="-13.7668" width="0.1524" layer="47"/>
<text x="-15.7734" y="-19.939" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX41Y150D0T</text>
<text x="-15.7734" y="-21.844" size="1.27" layer="47" ratio="6" rot="SR0">Large Padstyle: RX424Y355D0T</text>
<text x="-14.8082" y="-23.749" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-25.654" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.382" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.38in/9.652mm</text>
<text x="-16.4592" y="2.159" size="0.635" layer="47" ratio="4" rot="SR0">0.315in/8.001mm</text>
<text x="-4.0386" y="10.414" size="0.635" layer="47" ratio="4" rot="SR0">0.42in/10.668mm</text>
<text x="-4.0386" y="7.874" size="0.635" layer="47" ratio="4" rot="SR0">0.42in/10.668mm</text>
<text x="10.922" y="-5.1816" size="0.635" layer="47" ratio="4" rot="SR0">0.625in/15.875mm</text>
<text x="-15.9004" y="-9.9568" size="0.635" layer="47" ratio="4" rot="SR0">0.11in/2.794mm</text>
<text x="-6.5786" y="-12.2428" size="0.635" layer="47" ratio="4" rot="SR0">0.039in/0.991mm</text>
<text x="-3.175" y="-14.7828" size="0.635" layer="47" ratio="4" rot="SR0">0.2in/5.08mm</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="DPAK_045S-M3_VIS-L">
<smd name="1" x="-2.54" y="-9.6012" dx="0.9906" dy="3.2004" layer="1"/>
<smd name="3" x="2.54" y="-9.6012" dx="0.9906" dy="3.2004" layer="1"/>
<smd name="2" x="0" y="2.5527" dx="10.668" dy="8.4074" layer="1"/>
<wire x1="-2.032" y1="-4.826" x2="-3.048" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-4.826" x2="-3.048" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-11.049" x2="-2.032" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="-11.049" x2="-2.032" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-4.826" x2="2.032" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="2.032" y1="-4.826" x2="2.0574" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="2.0574" y1="-11.049" x2="3.048" y2="-11.049" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-11.049" x2="3.048" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-4.826" x2="5.334" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-4.826" x2="5.334" y2="4.826" width="0.1524" layer="51"/>
<wire x1="5.334" y1="4.826" x2="-5.334" y2="4.826" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="4.826" x2="-5.334" y2="-4.826" width="0.1524" layer="51"/>
<text x="-3.1242" y="-5.207" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-3.048" y1="-5.4356" x2="-3.048" y2="-7.6454" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-5.4356" x2="2.032" y2="-7.6454" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-5.4356" x2="-2.032" y2="-7.6454" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-5.4356" x2="3.048" y2="-7.6454" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-4.953" x2="5.461" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-4.953" x2="5.461" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-1.9558" x2="-5.461" y2="-4.953" width="0.1524" layer="21"/>
<text x="-6.2992" y="-10.2362" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="0" y1="4.826" x2="7.874" y2="4.826" width="0.1524" layer="47"/>
<wire x1="0" y1="-4.826" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.874" y1="-4.826" x2="8.255" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="7.747" y2="4.572" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="8.001" y2="4.572" width="0.1524" layer="47"/>
<wire x1="7.747" y1="4.572" x2="8.001" y2="4.572" width="0.1524" layer="47"/>
<wire x1="7.874" y1="-4.826" x2="7.747" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="7.874" y1="-4.826" x2="8.001" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-4.572" x2="8.001" y2="-4.572" width="0.1524" layer="47"/>
<wire x1="0" y1="6.477" x2="-7.874" y2="6.477" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-8.255" y2="6.477" width="0.1524" layer="47"/>
<wire x1="0" y1="-1.524" x2="-7.874" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-1.524" x2="-8.255" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-7.874" y2="-1.524" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-8.001" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="6.477" x2="-7.747" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="6.223" x2="-7.747" y2="6.223" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-1.524" x2="-8.001" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-1.524" x2="-7.747" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="-1.27" x2="-7.747" y2="-1.27" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="-5.334" y2="10.287" width="0.1524" layer="47"/>
<wire x1="5.334" y1="7.366" x2="5.334" y2="9.906" width="0.1524" layer="47"/>
<wire x1="5.334" y1="9.906" x2="5.334" y2="10.287" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="5.334" y2="9.906" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="-5.08" y2="10.033" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="9.906" x2="-5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="-5.08" y1="10.033" x2="-5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="5.334" y1="9.906" x2="5.08" y2="10.033" width="0.1524" layer="47"/>
<wire x1="5.334" y1="9.906" x2="5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="5.08" y1="10.033" x2="5.08" y2="9.779" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="0" x2="-5.334" y2="7.366" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="-5.334" y2="9.906" width="0.1524" layer="47"/>
<wire x1="5.334" y1="0" x2="5.334" y2="7.366" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="5.334" y2="7.366" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="-5.08" y2="7.493" width="0.1524" layer="47"/>
<wire x1="-5.334" y1="7.366" x2="-5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="-5.08" y1="7.493" x2="-5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="5.334" y1="7.366" x2="5.08" y2="7.493" width="0.1524" layer="47"/>
<wire x1="5.334" y1="7.366" x2="5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="5.08" y1="7.493" x2="5.08" y2="7.239" width="0.1524" layer="47"/>
<wire x1="7.874" y1="4.826" x2="10.414" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.795" y2="4.826" width="0.1524" layer="47"/>
<wire x1="-8.255" y1="-11.049" x2="-7.874" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="10.414" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="10.414" y1="-11.049" x2="10.795" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.414" y2="-11.049" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.287" y2="4.572" width="0.1524" layer="47"/>
<wire x1="10.414" y1="4.826" x2="10.541" y2="4.572" width="0.1524" layer="47"/>
<wire x1="10.287" y1="4.572" x2="10.541" y2="4.572" width="0.1524" layer="47"/>
<wire x1="10.414" y1="-11.049" x2="10.287" y2="-10.795" width="0.1524" layer="47"/>
<wire x1="10.414" y1="-11.049" x2="10.541" y2="-10.795" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-10.795" x2="10.541" y2="-10.795" width="0.1524" layer="47"/>
<wire x1="0" y1="-8.255" x2="-7.874" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-8.255" y2="-8.255" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-7.874" y2="-6.985" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="-7.874" y2="-12.319" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-8.001" y2="-8.001" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-8.255" x2="-7.747" y2="-8.001" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="-8.001" x2="-7.747" y2="-8.001" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="-8.001" y2="-11.303" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-11.049" x2="-7.747" y2="-11.303" width="0.1524" layer="47"/>
<wire x1="-8.001" y1="-11.303" x2="-7.747" y2="-11.303" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-7.9248" x2="-3.048" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-3.048" y2="-11.4808" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-7.9248" x2="-2.032" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-2.032" y2="-11.4808" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-4.318" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-0.762" y2="-11.1252" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-3.302" y2="-10.9728" width="0.1524" layer="47"/>
<wire x1="-3.048" y1="-11.1252" x2="-3.302" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-3.302" y1="-10.9728" x2="-3.302" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-1.778" y2="-10.9728" width="0.1524" layer="47"/>
<wire x1="-2.032" y1="-11.1252" x2="-1.778" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-1.778" y1="-10.9728" x2="-1.778" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-7.9248" x2="-2.54" y2="-13.6652" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="-2.54" y2="-14.0208" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-7.9248" x2="2.54" y2="-13.6652" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-13.6652" x2="2.54" y2="-14.0208" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="2.54" y2="-13.6652" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="-2.286" y2="-13.5128" width="0.1524" layer="47"/>
<wire x1="-2.54" y1="-13.6652" x2="-2.286" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="-2.286" y1="-13.5128" x2="-2.286" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-13.6652" x2="2.286" y2="-13.5128" width="0.1524" layer="47"/>
<wire x1="2.54" y1="-13.6652" x2="2.286" y2="-13.7668" width="0.1524" layer="47"/>
<wire x1="2.286" y1="-13.5128" x2="2.286" y2="-13.7668" width="0.1524" layer="47"/>
<text x="-15.7734" y="-19.939" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX39Y126D0T</text>
<text x="-15.7734" y="-21.844" size="1.27" layer="47" ratio="6" rot="SR0">Large Padstyle: RX420Y331D0T</text>
<text x="-14.8082" y="-23.749" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-25.654" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.382" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.38in/9.652mm</text>
<text x="-16.4592" y="2.159" size="0.635" layer="47" ratio="4" rot="SR0">0.315in/8.001mm</text>
<text x="-4.0386" y="10.414" size="0.635" layer="47" ratio="4" rot="SR0">0.42in/10.668mm</text>
<text x="-4.0386" y="7.874" size="0.635" layer="47" ratio="4" rot="SR0">0.42in/10.668mm</text>
<text x="10.922" y="-5.08" size="0.635" layer="47" ratio="4" rot="SR0">0.625in/15.875mm</text>
<text x="-15.9004" y="-9.9568" size="0.635" layer="47" ratio="4" rot="SR0">0.11in/2.794mm</text>
<text x="-6.5786" y="-12.2428" size="0.635" layer="47" ratio="4" rot="SR0">0.039in/0.991mm</text>
<text x="-3.175" y="-14.7828" size="0.635" layer="47" ratio="4" rot="SR0">0.2in/5.08mm</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="IND_2300LL-V_59_66">
<pad name="1" x="0" y="0" drill="1.9304" diameter="2.4384" shape="square"/>
<pad name="2" x="14.986" y="0" drill="1.9304" diameter="2.4384" rot="R180"/>
<wire x1="15.748" y1="16.256" x2="-0.762" y2="16.256" width="0.1524" layer="51"/>
<wire x1="15.748" y1="-16.256" x2="-0.762" y2="-16.256" width="0.1524" layer="51"/>
<wire x1="15.748" y1="16.256" x2="15.748" y2="-16.256" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="16.256" x2="-0.762" y2="-16.256" width="0.1524" layer="51"/>
<wire x1="0" y1="0" x2="0" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="0" y1="-9.525" x2="0" y2="-9.906" width="0.1524" layer="47"/>
<wire x1="14.986" y1="0" x2="14.986" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="14.986" y1="-9.525" x2="14.986" y2="-9.906" width="0.1524" layer="47"/>
<wire x1="0" y1="-9.525" x2="14.986" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="0" y1="-9.525" x2="0.254" y2="-9.398" width="0.1524" layer="47"/>
<wire x1="0" y1="-9.525" x2="0.254" y2="-9.652" width="0.1524" layer="47"/>
<wire x1="0.254" y1="-9.398" x2="0.254" y2="-9.652" width="0.1524" layer="47"/>
<wire x1="14.986" y1="-9.525" x2="14.732" y2="-9.398" width="0.1524" layer="47"/>
<wire x1="14.986" y1="-9.525" x2="14.732" y2="-9.652" width="0.1524" layer="47"/>
<wire x1="14.732" y1="-9.398" x2="14.732" y2="-9.652" width="0.1524" layer="47"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="9.525" width="0.1524" layer="47"/>
<wire x1="-0.762" y1="9.525" x2="-0.762" y2="9.906" width="0.1524" layer="47"/>
<wire x1="15.748" y1="0" x2="15.748" y2="9.525" width="0.1524" layer="47"/>
<wire x1="15.748" y1="9.525" x2="15.748" y2="9.906" width="0.1524" layer="47"/>
<wire x1="-0.762" y1="9.525" x2="15.748" y2="9.525" width="0.1524" layer="47"/>
<wire x1="-0.762" y1="9.525" x2="-0.508" y2="9.652" width="0.1524" layer="47"/>
<wire x1="-0.762" y1="9.525" x2="-0.508" y2="9.398" width="0.1524" layer="47"/>
<wire x1="-0.508" y1="9.652" x2="-0.508" y2="9.398" width="0.1524" layer="47"/>
<wire x1="15.748" y1="9.525" x2="15.494" y2="9.652" width="0.1524" layer="47"/>
<wire x1="15.748" y1="9.525" x2="15.494" y2="9.398" width="0.1524" layer="47"/>
<wire x1="15.494" y1="9.652" x2="15.494" y2="9.398" width="0.1524" layer="47"/>
<wire x1="7.493" y1="16.256" x2="17.018" y2="16.256" width="0.1524" layer="47"/>
<wire x1="17.018" y1="16.256" x2="17.399" y2="16.256" width="0.1524" layer="47"/>
<wire x1="7.493" y1="-16.256" x2="17.018" y2="-16.256" width="0.1524" layer="47"/>
<wire x1="17.018" y1="-16.256" x2="17.399" y2="-16.256" width="0.1524" layer="47"/>
<wire x1="17.018" y1="16.256" x2="17.018" y2="-16.256" width="0.1524" layer="47"/>
<wire x1="17.018" y1="16.256" x2="16.891" y2="16.002" width="0.1524" layer="47"/>
<wire x1="17.018" y1="16.256" x2="17.145" y2="16.002" width="0.1524" layer="47"/>
<wire x1="16.891" y1="16.002" x2="17.145" y2="16.002" width="0.1524" layer="47"/>
<wire x1="17.018" y1="-16.256" x2="16.891" y2="-16.002" width="0.1524" layer="47"/>
<wire x1="17.018" y1="-16.256" x2="17.145" y2="-16.002" width="0.1524" layer="47"/>
<wire x1="16.891" y1="-16.002" x2="17.145" y2="-16.002" width="0.1524" layer="47"/>
<text x="-8.0772" y="-21.336" size="1.27" layer="47" ratio="6" rot="SR0">Pin 1 Pad Style: SX96Y96D76P</text>
<text x="-8.8646" y="-23.241" size="1.27" layer="47" ratio="6" rot="SR0">Default Pad Style: EX96Y96D76P</text>
<text x="-7.8994" y="-25.146" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Pad Style: OX60Y90D30P</text>
<text x="-7.8994" y="-27.051" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Pad Style: OX90Y60D30P</text>
<text x="3.4544" y="-10.668" size="0.635" layer="47" ratio="4" rot="SR0">0.59in/14.986mm</text>
<text x="3.7338" y="10.033" size="0.635" layer="47" ratio="4" rot="SR0">0.65in/16.51mm</text>
<text x="17.526" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">1.28in/32.512mm</text>
<wire x1="15.875" y1="16.383" x2="-0.889" y2="16.383" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-16.383" x2="-0.889" y2="-16.383" width="0.1524" layer="21"/>
<wire x1="15.875" y1="16.383" x2="15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="16.383" x2="-0.889" y2="1.5494" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.5494" x2="-0.889" y2="-16.383" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="15.875" y2="-16.383" width="0.1524" layer="21"/>
<text x="4.2164" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="5.7658" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="CAP_UCD_12P5X13P5_NCH">
<smd name="1" x="-4.8006" y="0" dx="5.4102" dy="1.8034" layer="1"/>
<smd name="2" x="4.8006" y="0" dx="5.4102" dy="1.8034" layer="1"/>
<wire x1="7.7724" y1="0.7112" x2="10.0584" y2="0.7112" width="0.1524" layer="47"/>
<wire x1="10.0584" y1="0.7112" x2="10.414" y2="0.7112" width="0.1524" layer="47"/>
<wire x1="7.7724" y1="-0.7112" x2="10.0584" y2="-0.7112" width="0.1524" layer="47"/>
<wire x1="10.0584" y1="-0.7112" x2="10.414" y2="-0.7112" width="0.1524" layer="47"/>
<wire x1="10.0584" y1="0.7112" x2="10.0584" y2="1.9812" width="0.1524" layer="47"/>
<wire x1="10.0584" y1="-0.7112" x2="10.0584" y2="-1.9812" width="0.1524" layer="47"/>
<wire x1="10.0584" y1="0.7112" x2="9.906" y2="0.9652" width="0.1524" layer="47"/>
<wire x1="10.0584" y1="0.7112" x2="10.16" y2="0.9652" width="0.1524" layer="47"/>
<wire x1="9.906" y1="0.9652" x2="10.16" y2="0.9652" width="0.1524" layer="47"/>
<wire x1="10.0584" y1="-0.7112" x2="9.906" y2="-0.9652" width="0.1524" layer="47"/>
<wire x1="10.0584" y1="-0.7112" x2="10.16" y2="-0.9652" width="0.1524" layer="47"/>
<wire x1="9.906" y1="-0.9652" x2="10.16" y2="-0.9652" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="1.1684" x2="-7.0104" y2="9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="-7.0104" y2="9.7028" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="1.1684" x2="7.0104" y2="9.3472" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="9.3472" x2="7.0104" y2="9.7028" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="7.0104" y2="9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="-6.7564" y2="9.4488" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="-6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="-6.7564" y1="9.4488" x2="-6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="9.3472" x2="6.7564" y2="9.4488" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="9.3472" x2="6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="9.4488" x2="6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="6.8072" x2="-9.3472" y2="6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.7028" y2="6.8072" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-6.8072" x2="-9.3472" y2="-6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="-6.8072" x2="-9.7028" y2="-6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.3472" y2="-6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.4488" y2="6.5532" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.1948" y2="6.5532" width="0.1524" layer="47"/>
<wire x1="-9.4488" y1="6.5532" x2="-9.1948" y2="6.5532" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="-6.8072" x2="-9.4488" y2="-6.5532" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="-6.8072" x2="-9.1948" y2="-6.5532" width="0.1524" layer="47"/>
<wire x1="-9.4488" y1="-6.5532" x2="-9.1948" y2="-6.5532" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-1.1684" x2="-7.0104" y2="-9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-7.0104" y2="-9.7028" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-0.6604" x2="-1.9812" y2="-9.3472" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-9.3472" x2="-1.9812" y2="-9.7028" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-1.9812" y2="-9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-6.7564" y2="-9.1948" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-6.7564" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-6.7564" y1="-9.1948" x2="-6.7564" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-9.3472" x2="-2.2352" y2="-9.1948" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-9.3472" x2="-2.2352" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-2.2352" y1="-9.1948" x2="-2.2352" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-6.8072" x2="-6.8072" y2="-11.8872" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="-6.8072" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-6.8072" x2="6.8072" y2="-11.8872" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-11.8872" x2="6.8072" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="6.8072" y2="-11.8872" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="-6.5532" y2="-11.7348" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="-6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<wire x1="-6.5532" y1="-11.7348" x2="-6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-11.8872" x2="6.5532" y2="-11.7348" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-11.8872" x2="6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="-11.7348" x2="6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<text x="-15.7734" y="-11.176" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX213Y71D0T</text>
<text x="-18.0848" y="-13.716" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-16.256" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="10.5664" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.055in/1.397mm</text>
<text x="-4.318" y="9.8552" size="0.635" layer="47" ratio="4" rot="SR0">0.551in/13.995mm</text>
<text x="-18.4912" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.535in/13.589mm</text>
<text x="-8.5344" y="-10.4648" size="0.635" layer="47" ratio="4" rot="SR0">0.197in/5.004mm</text>
<text x="-4.318" y="-13.0048" size="0.635" layer="47" ratio="4" rot="SR0">0.535in/13.589mm</text>
<wire x1="-6.9088" y1="-6.9088" x2="6.9088" y2="-6.9088" width="0.1524" layer="21"/>
<wire x1="6.9088" y1="-6.9088" x2="6.9088" y2="-1.2446" width="0.1524" layer="21"/>
<wire x1="6.9088" y1="6.9088" x2="-6.9088" y2="6.9088" width="0.1524" layer="21"/>
<wire x1="-6.9088" y1="6.9088" x2="-6.9088" y2="1.2446" width="0.1524" layer="21"/>
<wire x1="-6.9088" y1="-1.2446" x2="-6.9088" y2="-6.9088" width="0.1524" layer="21"/>
<wire x1="6.9088" y1="1.2446" x2="6.9088" y2="6.9088" width="0.1524" layer="21"/>
<wire x1="-6.8072" y1="3.4036" x2="-3.4036" y2="6.8072" width="0.1524" layer="51"/>
<wire x1="-6.8072" y1="-3.4036" x2="-3.4036" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="-6.8072" y1="-6.8072" x2="6.8072" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="6.8072" y1="-6.8072" x2="6.8072" y2="6.8072" width="0.1524" layer="51"/>
<wire x1="6.8072" y1="6.8072" x2="-6.8072" y2="6.8072" width="0.1524" layer="51"/>
<wire x1="-6.8072" y1="6.8072" x2="-6.8072" y2="-6.8072" width="0.1524" layer="51"/>
<polygon width="0.0254" layer="41">
<vertex x="-2.0447" y="0.9525"/>
<vertex x="2.0447" y="0.9525"/>
<vertex x="2.0447" y="-0.9525"/>
<vertex x="-2.0447" y="-0.9525"/>
</polygon>
<polygon width="0.0254" layer="41">
<vertex x="-6.7437" y="6.7437"/>
<vertex x="6.7437" y="6.7437"/>
<vertex x="6.7437" y="0.9525"/>
<vertex x="-6.7437" y="0.9525"/>
</polygon>
<polygon width="0.0254" layer="41">
<vertex x="-6.7437" y="-0.9525"/>
<vertex x="6.7437" y="-0.9525"/>
<vertex x="6.7437" y="-6.7437"/>
<vertex x="-6.7437" y="-6.7437"/>
</polygon>
<polygon width="0.0254" layer="41">
<vertex x="-2.0447" y="0.9525"/>
<vertex x="2.0447" y="0.9525"/>
<vertex x="2.0447" y="-0.9525"/>
<vertex x="-2.0447" y="-0.9525"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="CAP_UCD_12P5X13P5_NCH-M">
<smd name="1" x="-4.8514" y="0" dx="5.715" dy="1.905" layer="1"/>
<smd name="2" x="4.8514" y="0" dx="5.715" dy="1.905" layer="1"/>
<wire x1="7.9756" y1="0.7112" x2="10.2616" y2="0.7112" width="0.1524" layer="47"/>
<wire x1="10.2616" y1="0.7112" x2="10.6172" y2="0.7112" width="0.1524" layer="47"/>
<wire x1="7.9756" y1="-0.7112" x2="10.2616" y2="-0.7112" width="0.1524" layer="47"/>
<wire x1="10.2616" y1="-0.7112" x2="10.6172" y2="-0.7112" width="0.1524" layer="47"/>
<wire x1="10.2616" y1="0.7112" x2="10.2616" y2="1.9812" width="0.1524" layer="47"/>
<wire x1="10.2616" y1="-0.7112" x2="10.2616" y2="-1.9812" width="0.1524" layer="47"/>
<wire x1="10.2616" y1="0.7112" x2="10.1092" y2="0.9652" width="0.1524" layer="47"/>
<wire x1="10.2616" y1="0.7112" x2="10.3632" y2="0.9652" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="0.9652" x2="10.3632" y2="0.9652" width="0.1524" layer="47"/>
<wire x1="10.2616" y1="-0.7112" x2="10.1092" y2="-0.9652" width="0.1524" layer="47"/>
<wire x1="10.2616" y1="-0.7112" x2="10.3632" y2="-0.9652" width="0.1524" layer="47"/>
<wire x1="10.1092" y1="-0.9652" x2="10.3632" y2="-0.9652" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="1.2192" x2="-7.0104" y2="9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="-7.0104" y2="9.7028" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="1.2192" x2="7.0104" y2="9.3472" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="9.3472" x2="7.0104" y2="9.7028" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="7.0104" y2="9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="-6.7564" y2="9.4488" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="-6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="-6.7564" y1="9.4488" x2="-6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="9.3472" x2="6.7564" y2="9.4488" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="9.3472" x2="6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="9.4488" x2="6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="6.8072" x2="-9.3472" y2="6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.7028" y2="6.8072" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-6.8072" x2="-9.3472" y2="-6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="-6.8072" x2="-9.7028" y2="-6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.3472" y2="-6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.4488" y2="6.5532" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.1948" y2="6.5532" width="0.1524" layer="47"/>
<wire x1="-9.4488" y1="6.5532" x2="-9.1948" y2="6.5532" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="-6.8072" x2="-9.4488" y2="-6.5532" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="-6.8072" x2="-9.1948" y2="-6.5532" width="0.1524" layer="47"/>
<wire x1="-9.4488" y1="-6.5532" x2="-9.1948" y2="-6.5532" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-1.2192" x2="-7.0104" y2="-9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-7.0104" y2="-9.7028" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-0.7112" x2="-1.9812" y2="-9.3472" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-9.3472" x2="-1.9812" y2="-9.7028" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-1.9812" y2="-9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-6.7564" y2="-9.1948" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-6.7564" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-6.7564" y1="-9.1948" x2="-6.7564" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-9.3472" x2="-2.2352" y2="-9.1948" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-9.3472" x2="-2.2352" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-2.2352" y1="-9.1948" x2="-2.2352" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-6.8072" x2="-6.8072" y2="-11.8872" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="-6.8072" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-6.8072" x2="6.8072" y2="-11.8872" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-11.8872" x2="6.8072" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="6.8072" y2="-11.8872" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="-6.5532" y2="-11.7348" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="-6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<wire x1="-6.5532" y1="-11.7348" x2="-6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-11.8872" x2="6.5532" y2="-11.7348" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-11.8872" x2="6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="-11.7348" x2="6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<text x="-15.7734" y="-11.1252" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX225Y75D0T</text>
<text x="-18.0848" y="-13.6652" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-16.2052" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="10.7696" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.055in/1.397mm</text>
<text x="-4.318" y="9.8552" size="0.635" layer="47" ratio="4" rot="SR0">0.551in/13.995mm</text>
<text x="-18.4912" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.535in/13.589mm</text>
<text x="-8.5344" y="-10.4648" size="0.635" layer="47" ratio="4" rot="SR0">0.197in/5.004mm</text>
<text x="-4.318" y="-13.0048" size="0.635" layer="47" ratio="4" rot="SR0">0.535in/13.589mm</text>
<wire x1="-6.9088" y1="-6.9088" x2="6.9088" y2="-6.9088" width="0.1524" layer="21"/>
<wire x1="6.9088" y1="-6.9088" x2="6.9088" y2="-1.2954" width="0.1524" layer="21"/>
<wire x1="6.9088" y1="6.9088" x2="-6.9088" y2="6.9088" width="0.1524" layer="21"/>
<wire x1="-6.9088" y1="6.9088" x2="-6.9088" y2="1.2954" width="0.1524" layer="21"/>
<wire x1="-6.9088" y1="-1.2954" x2="-6.9088" y2="-6.9088" width="0.1524" layer="21"/>
<wire x1="6.9088" y1="1.2954" x2="6.9088" y2="6.9088" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="0" x2="-8.5344" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-8.5344" y1="0" x2="-8.382" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-6.8072" y1="3.4036" x2="-3.4036" y2="6.8072" width="0.1524" layer="51"/>
<wire x1="-6.8072" y1="-3.4036" x2="-3.4036" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="-6.8072" y1="-6.8072" x2="6.8072" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="6.8072" y1="-6.8072" x2="6.8072" y2="6.8072" width="0.1524" layer="51"/>
<wire x1="6.8072" y1="6.8072" x2="-6.8072" y2="6.8072" width="0.1524" layer="51"/>
<wire x1="-6.8072" y1="6.8072" x2="-6.8072" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="-6.1976" y1="0" x2="-6.35" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-6.35" y1="0" x2="-6.1976" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41">
<vertex x="-1.9431" y="1.0033"/>
<vertex x="1.9431" y="1.0033"/>
<vertex x="1.9431" y="-1.0033"/>
<vertex x="-1.9431" y="-1.0033"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-6.7437" y="6.7437"/>
<vertex x="6.7437" y="6.7437"/>
<vertex x="6.7437" y="1.0033"/>
<vertex x="-6.7437" y="1.0033"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-6.7437" y="-1.0033"/>
<vertex x="6.7437" y="-1.0033"/>
<vertex x="6.7437" y="-6.7437"/>
<vertex x="-6.7437" y="-6.7437"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-1.9431" y="1.0033"/>
<vertex x="1.9431" y="1.0033"/>
<vertex x="1.9431" y="-1.0033"/>
<vertex x="-1.9431" y="-1.0033"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="CAP_UCD_12P5X13P5_NCH-L">
<smd name="1" x="-4.7498" y="0" dx="5.1054" dy="1.7018" layer="1"/>
<smd name="2" x="4.7498" y="0" dx="5.1054" dy="1.7018" layer="1"/>
<wire x1="7.5692" y1="0.7112" x2="9.8552" y2="0.7112" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="0.7112" x2="10.2108" y2="0.7112" width="0.1524" layer="47"/>
<wire x1="7.5692" y1="-0.7112" x2="9.8552" y2="-0.7112" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="-0.7112" x2="10.2108" y2="-0.7112" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="0.7112" x2="9.8552" y2="1.9812" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="-0.7112" x2="9.8552" y2="-1.9812" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="0.7112" x2="9.7028" y2="0.9652" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="0.7112" x2="9.9568" y2="0.9652" width="0.1524" layer="47"/>
<wire x1="9.7028" y1="0.9652" x2="9.9568" y2="0.9652" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="-0.7112" x2="9.7028" y2="-0.9652" width="0.1524" layer="47"/>
<wire x1="9.8552" y1="-0.7112" x2="9.9568" y2="-0.9652" width="0.1524" layer="47"/>
<wire x1="9.7028" y1="-0.9652" x2="9.9568" y2="-0.9652" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="1.1176" x2="-7.0104" y2="9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="-7.0104" y2="9.7028" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="1.1176" x2="7.0104" y2="9.3472" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="9.3472" x2="7.0104" y2="9.7028" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="7.0104" y2="9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="-6.7564" y2="9.4488" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="9.3472" x2="-6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="-6.7564" y1="9.4488" x2="-6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="9.3472" x2="6.7564" y2="9.4488" width="0.1524" layer="47"/>
<wire x1="7.0104" y1="9.3472" x2="6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="6.7564" y1="9.4488" x2="6.7564" y2="9.1948" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="6.8072" x2="-9.3472" y2="6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.7028" y2="6.8072" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-6.8072" x2="-9.3472" y2="-6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="-6.8072" x2="-9.7028" y2="-6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.3472" y2="-6.8072" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.4488" y2="6.5532" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="6.8072" x2="-9.1948" y2="6.5532" width="0.1524" layer="47"/>
<wire x1="-9.4488" y1="6.5532" x2="-9.1948" y2="6.5532" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="-6.8072" x2="-9.4488" y2="-6.5532" width="0.1524" layer="47"/>
<wire x1="-9.3472" y1="-6.8072" x2="-9.1948" y2="-6.5532" width="0.1524" layer="47"/>
<wire x1="-9.4488" y1="-6.5532" x2="-9.1948" y2="-6.5532" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-1.1176" x2="-7.0104" y2="-9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-7.0104" y2="-9.7028" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-0.6096" x2="-1.9812" y2="-9.3472" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-9.3472" x2="-1.9812" y2="-9.7028" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-1.9812" y2="-9.3472" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-6.7564" y2="-9.1948" width="0.1524" layer="47"/>
<wire x1="-7.0104" y1="-9.3472" x2="-6.7564" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-6.7564" y1="-9.1948" x2="-6.7564" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-9.3472" x2="-2.2352" y2="-9.1948" width="0.1524" layer="47"/>
<wire x1="-1.9812" y1="-9.3472" x2="-2.2352" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-2.2352" y1="-9.1948" x2="-2.2352" y2="-9.4488" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-6.8072" x2="-6.8072" y2="-11.8872" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="-6.8072" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-6.8072" x2="6.8072" y2="-11.8872" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-11.8872" x2="6.8072" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="6.8072" y2="-11.8872" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="-6.5532" y2="-11.7348" width="0.1524" layer="47"/>
<wire x1="-6.8072" y1="-11.8872" x2="-6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<wire x1="-6.5532" y1="-11.7348" x2="-6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-11.8872" x2="6.5532" y2="-11.7348" width="0.1524" layer="47"/>
<wire x1="6.8072" y1="-11.8872" x2="6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<wire x1="6.5532" y1="-11.7348" x2="6.5532" y2="-11.9888" width="0.1524" layer="47"/>
<text x="-15.7734" y="-11.2268" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX201Y67D0T</text>
<text x="-18.0848" y="-13.7668" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-16.3068" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="10.3632" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.055in/1.397mm</text>
<text x="-4.318" y="9.8552" size="0.635" layer="47" ratio="4" rot="SR0">0.551in/13.995mm</text>
<text x="-18.4912" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.535in/13.589mm</text>
<text x="-8.5344" y="-10.4648" size="0.635" layer="47" ratio="4" rot="SR0">0.197in/5.004mm</text>
<text x="-4.318" y="-13.0048" size="0.635" layer="47" ratio="4" rot="SR0">0.535in/13.589mm</text>
<wire x1="-6.9088" y1="-6.9088" x2="6.9088" y2="-6.9088" width="0.1524" layer="21"/>
<wire x1="6.9088" y1="-6.9088" x2="6.9088" y2="-1.1938" width="0.1524" layer="21"/>
<wire x1="6.9088" y1="6.9088" x2="-6.9088" y2="6.9088" width="0.1524" layer="21"/>
<wire x1="-6.9088" y1="6.9088" x2="-6.9088" y2="1.1938" width="0.1524" layer="21"/>
<wire x1="-6.9088" y1="-1.1938" x2="-6.9088" y2="-6.9088" width="0.1524" layer="21"/>
<wire x1="6.9088" y1="1.1938" x2="6.9088" y2="6.9088" width="0.1524" layer="21"/>
<wire x1="-7.9756" y1="0" x2="-8.128" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-8.128" y1="0" x2="-7.9756" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-6.8072" y1="3.4036" x2="-3.4036" y2="6.8072" width="0.1524" layer="51"/>
<wire x1="-6.8072" y1="-3.4036" x2="-3.4036" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="-6.8072" y1="-6.8072" x2="6.8072" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="6.8072" y1="-6.8072" x2="6.8072" y2="6.8072" width="0.1524" layer="51"/>
<wire x1="6.8072" y1="6.8072" x2="-6.8072" y2="6.8072" width="0.1524" layer="51"/>
<wire x1="-6.8072" y1="6.8072" x2="-6.8072" y2="-6.8072" width="0.1524" layer="51"/>
<wire x1="-6.1976" y1="0" x2="-6.35" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-6.35" y1="0" x2="-6.1976" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41">
<vertex x="-2.1463" y="0.9017"/>
<vertex x="2.1463" y="0.9017"/>
<vertex x="2.1463" y="-0.9017"/>
<vertex x="-2.1463" y="-0.9017"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-6.7437" y="6.7437"/>
<vertex x="6.7437" y="6.7437"/>
<vertex x="6.7437" y="0.9017"/>
<vertex x="-6.7437" y="0.9017"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-6.7437" y="-0.9017"/>
<vertex x="6.7437" y="-0.9017"/>
<vertex x="6.7437" y="-6.7437"/>
<vertex x="-6.7437" y="-6.7437"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-2.1463" y="0.9017"/>
<vertex x="2.1463" y="0.9017"/>
<vertex x="2.1463" y="-0.9017"/>
<vertex x="-2.1463" y="-0.9017"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="G-21_MUR">
<smd name="1" x="-0.9271" y="0" dx="0.8636" dy="1.2446" layer="1"/>
<smd name="2" x="0.9271" y="0" dx="0.8636" dy="1.2446" layer="1"/>
<wire x1="0" y1="0.6096" x2="3.556" y2="0.6096" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.9116" y2="0.6096" width="0.1524" layer="47"/>
<wire x1="0" y1="-0.6096" x2="3.556" y2="-0.6096" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.9116" y2="-0.6096" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.556" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.556" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.4036" y2="0.8636" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.6576" y2="0.8636" width="0.1524" layer="47"/>
<wire x1="3.4036" y1="0.8636" x2="3.6576" y2="0.8636" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.4036" y2="-0.8636" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.6576" y2="-0.8636" width="0.1524" layer="47"/>
<wire x1="3.4036" y1="-0.8636" x2="3.6576" y2="-0.8636" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="0" x2="-1.016" y2="3.1496" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-1.016" y2="3.556" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.016" y2="3.556" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-2.286" y2="3.1496" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="2.286" y2="3.1496" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-1.27" y2="3.302" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-1.27" y1="3.302" x2="-1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.27" y2="3.302" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="1.27" y1="3.302" x2="1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="0.508" y2="-3.556" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.016" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="1.016" y2="-3.556" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="-0.762" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="2.286" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="0.254" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="0.254" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="0.254" y1="-3.048" x2="0.254" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="1.27" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="1.27" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-3.048" x2="1.27" y2="-3.302" width="0.1524" layer="47"/>
<text x="-15.2146" y="-7.4676" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX34Y49D0T</text>
<text x="-18.0848" y="-10.0076" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.5476" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="4.064" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.049in/1.245mm</text>
<text x="-4.0386" y="3.6576" size="0.635" layer="47" ratio="4" rot="SR0">0.079in/2.007mm</text>
<text x="-2.9972" y="-4.318" size="0.635" layer="47" ratio="4" rot="SR0">0.02in/0.508mm</text>
<wire x1="-0.1778" y1="-0.762" x2="0.1778" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.1778" y1="0.762" x2="-0.1778" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="-0.6096" x2="-0.508" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.6096" x2="-1.016" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.6096" x2="-0.508" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.6096" x2="0.508" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.6096" x2="1.016" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.6096" x2="1.016" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.635" x2="0.508" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.6096" x2="0.508" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.6096" x2="1.016" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.6096" x2="-0.508" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="0.6096" x2="-1.016" y2="-0.6096" width="0.1524" layer="51"/>
<polygon width="0.0254" layer="41">
<vertex x="-0.4445" y="0.5715"/>
<vertex x="0.4445" y="0.5715"/>
<vertex x="0.4445" y="-0.5715"/>
<vertex x="-0.4445" y="-0.5715"/>
</polygon>
<polygon width="0.0254" layer="41">
<vertex x="-0.4445" y="0.6223"/>
<vertex x="0.4445" y="0.6223"/>
<vertex x="0.4445" y="-0.6223"/>
<vertex x="-0.4445" y="-0.6223"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="G-21_MUR-M">
<smd name="1" x="-1.0287" y="0" dx="1.0668" dy="1.2954" layer="1"/>
<smd name="2" x="1.0287" y="0" dx="1.0668" dy="1.2954" layer="1"/>
<wire x1="0" y1="0.6096" x2="3.556" y2="0.6096" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.9116" y2="0.6096" width="0.1524" layer="47"/>
<wire x1="0" y1="-0.6096" x2="3.556" y2="-0.6096" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.9116" y2="-0.6096" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.556" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.556" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.4036" y2="0.8636" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.6576" y2="0.8636" width="0.1524" layer="47"/>
<wire x1="3.4036" y1="0.8636" x2="3.6576" y2="0.8636" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.4036" y2="-0.8636" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.6576" y2="-0.8636" width="0.1524" layer="47"/>
<wire x1="3.4036" y1="-0.8636" x2="3.6576" y2="-0.8636" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="0" x2="-1.016" y2="3.1496" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-1.016" y2="3.556" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.016" y2="3.556" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-2.286" y2="3.1496" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="2.286" y2="3.1496" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-1.27" y2="3.302" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-1.27" y1="3.302" x2="-1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.27" y2="3.302" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="1.27" y1="3.302" x2="1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="0.508" y2="-3.556" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.016" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="1.016" y2="-3.556" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="-0.762" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="2.286" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="0.254" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="0.254" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="0.254" y1="-3.048" x2="0.254" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="1.27" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="1.27" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-3.048" x2="1.27" y2="-3.302" width="0.1524" layer="47"/>
<text x="-15.2146" y="-7.5184" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX42Y51D0T</text>
<text x="-18.0848" y="-10.0584" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.5984" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="4.064" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.049in/1.245mm</text>
<text x="-4.0386" y="3.6576" size="0.635" layer="47" ratio="4" rot="SR0">0.079in/2.007mm</text>
<text x="-2.9972" y="-4.318" size="0.635" layer="47" ratio="4" rot="SR0">0.02in/0.508mm</text>
<wire x1="-0.1778" y1="-0.762" x2="0.1778" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.1778" y1="0.762" x2="-0.1778" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.3368" y1="0" x2="-2.4892" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.4892" y1="0" x2="-2.3368" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-0.508" y1="-0.6096" x2="-0.508" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.6096" x2="-1.016" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.6096" x2="-0.508" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.6096" x2="0.508" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.6096" x2="1.016" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.6096" x2="1.016" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.635" x2="0.508" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.6096" x2="0.508" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.6096" x2="1.016" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.6096" x2="-0.508" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="0.6096" x2="-1.016" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="0" x2="-0.9652" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-0.9652" y1="0" x2="-0.8128" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41">
<vertex x="-0.4445" y="0.5715"/>
<vertex x="0.4445" y="0.5715"/>
<vertex x="0.4445" y="-0.5715"/>
<vertex x="-0.4445" y="-0.5715"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-0.4445" y="0.6223"/>
<vertex x="0.4445" y="0.6223"/>
<vertex x="0.4445" y="-0.6223"/>
<vertex x="-0.4445" y="-0.6223"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="G-21_MUR-L">
<smd name="1" x="-0.8255" y="0" dx="0.6604" dy="1.1938" layer="1"/>
<smd name="2" x="0.8255" y="0" dx="0.6604" dy="1.1938" layer="1"/>
<wire x1="0" y1="0.6096" x2="3.556" y2="0.6096" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.9116" y2="0.6096" width="0.1524" layer="47"/>
<wire x1="0" y1="-0.6096" x2="3.556" y2="-0.6096" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.9116" y2="-0.6096" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.556" y2="1.8796" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.556" y2="-1.8796" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.4036" y2="0.8636" width="0.1524" layer="47"/>
<wire x1="3.556" y1="0.6096" x2="3.6576" y2="0.8636" width="0.1524" layer="47"/>
<wire x1="3.4036" y1="0.8636" x2="3.6576" y2="0.8636" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.4036" y2="-0.8636" width="0.1524" layer="47"/>
<wire x1="3.556" y1="-0.6096" x2="3.6576" y2="-0.8636" width="0.1524" layer="47"/>
<wire x1="3.4036" y1="-0.8636" x2="3.6576" y2="-0.8636" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="0" x2="-1.016" y2="3.1496" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-1.016" y2="3.556" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.016" y2="3.556" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-2.286" y2="3.1496" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="2.286" y2="3.1496" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-1.27" y2="3.302" width="0.1524" layer="47"/>
<wire x1="-1.016" y1="3.1496" x2="-1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="-1.27" y1="3.302" x2="-1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.27" y2="3.302" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="1.27" y1="3.302" x2="1.27" y2="3.048" width="0.1524" layer="47"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="0.508" y2="-3.556" width="0.1524" layer="47"/>
<wire x1="1.016" y1="3.1496" x2="1.016" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="1.016" y2="-3.556" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="-0.762" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="2.286" y2="-3.1496" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="0.254" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="0.508" y1="-3.1496" x2="0.254" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="0.254" y1="-3.048" x2="0.254" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="1.27" y2="-3.048" width="0.1524" layer="47"/>
<wire x1="1.016" y1="-3.1496" x2="1.27" y2="-3.302" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-3.048" x2="1.27" y2="-3.302" width="0.1524" layer="47"/>
<text x="-15.2146" y="-7.4676" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX26Y47D0T</text>
<text x="-18.0848" y="-10.0076" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 1 Padstyle: OX60Y90D30P</text>
<text x="-18.0848" y="-12.5476" size="1.27" layer="47" ratio="6" rot="SR0">Alternate 2 Padstyle: OX90Y60D30P</text>
<text x="4.064" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.049in/1.245mm</text>
<text x="-4.0386" y="3.6576" size="0.635" layer="47" ratio="4" rot="SR0">0.079in/2.007mm</text>
<text x="-2.9972" y="-4.318" size="0.635" layer="47" ratio="4" rot="SR0">0.02in/0.508mm</text>
<wire x1="-0.2032" y1="-0.762" x2="0.2032" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.2032" y1="0.762" x2="-0.2032" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.9304" y1="0" x2="-2.0828" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.0828" y1="0" x2="-1.9304" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-0.508" y1="-0.6096" x2="-0.508" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.6096" x2="-1.016" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.6096" x2="-0.508" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.6096" x2="0.508" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.6096" x2="1.016" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.6096" x2="1.016" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.635" x2="0.508" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.6096" x2="0.508" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.6096" x2="1.016" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.6096" x2="-0.508" y2="0.6096" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="0.6096" x2="-1.016" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="-0.6096" y1="0" x2="-0.762" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-0.762" y1="0" x2="-0.6096" y2="0" width="0" layer="51" curve="-180"/>
<polygon width="0.1524" layer="41">
<vertex x="-0.4445" y="0.5715"/>
<vertex x="0.4445" y="0.5715"/>
<vertex x="0.4445" y="-0.5715"/>
<vertex x="-0.4445" y="-0.5715"/>
</polygon>
<polygon width="0.1524" layer="41">
<vertex x="-0.4445" y="0.6223"/>
<vertex x="0.4445" y="0.6223"/>
<vertex x="0.4445" y="-0.6223"/>
<vertex x="-0.4445" y="-0.6223"/>
</polygon>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="TS7B">
<smd name="1" x="-3.81" y="-8.2804" dx="0.8636" dy="2.6924" layer="1"/>
<smd name="2" x="-2.54" y="-8.2804" dx="0.8636" dy="2.6924" layer="1"/>
<smd name="3" x="-1.27" y="-8.2804" dx="0.8636" dy="2.6924" layer="1"/>
<smd name="4" x="0" y="-8.2804" dx="0.8636" dy="2.6924" layer="1"/>
<smd name="5" x="1.27" y="-8.2804" dx="0.8636" dy="2.6924" layer="1"/>
<smd name="6" x="2.54" y="-8.2804" dx="0.8636" dy="2.6924" layer="1"/>
<smd name="7" x="3.81" y="-8.2804" dx="0.8636" dy="2.6924" layer="1"/>
<smd name="8" x="0" y="0.1524" dx="10.414" dy="10.4648" layer="1"/>
<wire x1="-5.207" y1="-5.08" x2="-4.2164" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-3.4036" y1="-5.08" x2="-2.9464" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-5.08" x2="-1.6764" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-5.08" x2="-0.4064" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="0.4064" y1="-5.08" x2="0.8636" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="1.6764" y1="-5.08" x2="2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="2.9464" y1="-5.08" x2="3.4036" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.08" x2="5.207" y2="-5.08" width="0.1524" layer="51"/>
<text x="-5.6642" y="-8.9154" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-5.6642" y="-8.9154" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="0" y1="5.08" x2="7.747" y2="5.08" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-5.08" x2="8.128" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="-5.207" y2="8.001" width="0.1524" layer="47"/>
<wire x1="5.207" y1="0" x2="5.207" y2="7.62" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.668" y2="5.08" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-9.271" x2="10.668" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="0" y1="-7.2898" x2="-7.747" y2="-7.2898" width="0.1524" layer="47"/>
<text x="-15.7734" y="-13.081" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX34Y106D0T</text>
<text x="-15.7734" y="-14.986" size="1.27" layer="47" ratio="6" rot="SR0">Large Padstyle: RX410Y412D0T</text>
<text x="-14.8082" y="-16.891" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-18.796" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.255" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">.4in/10.16mm</text>
<text x="-3.7592" y="8.128" size="0.635" layer="47" ratio="4" rot="SR0">.41in/10.414mm</text>
<text x="10.795" y="-3.5052" size="0.635" layer="47" ratio="4" rot="SR0">.565in/14.351mm</text>
<text x="-15.7734" y="-8.5852" size="0.635" layer="47" ratio="4" rot="SR0">.078in/1.981mm</text>
<polygon width="0.1524" layer="41">
<vertex x="-4.2418" y="-5.334"/>
<vertex x="4.2418" y="-5.334"/>
<vertex x="4.2418" y="-6.9342"/>
<vertex x="-4.2418" y="-6.9342"/>
</polygon>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<wire x1="-3.4036" y1="-5.08" x2="-4.2164" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-5.08" x2="-4.2164" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-9.271" x2="-3.4036" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-3.4036" y1="-9.271" x2="-3.4036" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-5.08" x2="-2.9464" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.9464" y1="-5.08" x2="-2.9464" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-2.9464" y1="-9.271" x2="-2.1336" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-9.271" x2="-2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-5.08" x2="-1.6764" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-1.6764" y1="-5.08" x2="-1.6764" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-1.6764" y1="-9.271" x2="-0.8636" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-9.271" x2="-0.8636" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="0.4064" y1="-5.08" x2="-0.4064" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-0.4064" y1="-5.08" x2="-0.4064" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-0.4064" y1="-9.271" x2="0.4064" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="0.4064" y1="-9.271" x2="0.4064" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="1.6764" y1="-5.08" x2="0.8636" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-5.08" x2="0.8636" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-9.271" x2="1.6764" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="1.6764" y1="-9.271" x2="1.6764" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="2.9464" y1="-5.08" x2="2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-5.08" x2="2.1336" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-9.271" x2="2.9464" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="2.9464" y1="-9.271" x2="2.9464" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.08" x2="3.4036" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="3.4036" y1="-5.08" x2="3.4036" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="3.4036" y1="-9.271" x2="4.2164" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-9.271" x2="4.2164" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-5.08" x2="2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="5.207" y1="-5.08" x2="5.207" y2="5.08" width="0.1524" layer="51"/>
<wire x1="5.207" y1="5.08" x2="-5.207" y2="5.08" width="0.1524" layer="51"/>
<wire x1="-5.207" y1="5.08" x2="-5.207" y2="-5.08" width="0.1524" layer="51"/>
<text x="-5.6642" y="-8.9154" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-4.2164" y1="-5.6896" x2="-4.2164" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="-2.9464" y1="-5.6896" x2="-2.9464" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="-1.6764" y1="-5.6896" x2="-1.6764" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="-0.4064" y1="-5.6896" x2="-0.4064" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="0.8636" y1="-5.6896" x2="0.8636" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="-5.6896" x2="2.1336" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="3.4036" y1="-5.6896" x2="3.4036" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="-3.4036" y1="-5.6896" x2="-3.4036" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="-5.6896" x2="-2.1336" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="-5.6896" x2="-0.8636" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="0.4064" y1="-5.6896" x2="0.4064" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="1.6764" y1="-5.6896" x2="1.6764" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="2.9464" y1="-5.6896" x2="2.9464" y2="-6.5786" width="0.1524" layer="21"/>
<wire x1="4.2164" y1="-5.6896" x2="4.2164" y2="-6.5786" width="0.1524" layer="21"/>
<text x="-5.6642" y="-8.9154" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="0" y1="-5.08" x2="7.747" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="7.747" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="7.62" y2="4.826" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="7.874" y2="4.826" width="0.1524" layer="47"/>
<wire x1="7.62" y1="4.826" x2="7.874" y2="4.826" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-5.08" x2="7.62" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-5.08" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.62" y1="-4.826" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="0" x2="-5.207" y2="7.62" width="0.1524" layer="47"/>
<wire x1="5.207" y1="7.62" x2="5.207" y2="8.001" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="5.207" y2="7.62" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="-4.953" y2="7.747" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="-4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="-4.953" y1="7.747" x2="-4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="5.207" y1="7.62" x2="4.953" y2="7.747" width="0.1524" layer="47"/>
<wire x1="5.207" y1="7.62" x2="4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="4.953" y1="7.747" x2="4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="10.287" y2="5.08" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="10.287" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.287" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.16" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.414" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.16" y1="4.826" x2="10.414" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-9.271" x2="10.16" y2="-9.017" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-9.271" x2="10.414" y2="-9.017" width="0.1524" layer="47"/>
<wire x1="10.16" y1="-9.017" x2="10.414" y2="-9.017" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-8.128" y2="-7.2898" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-8.128" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-7.747" y2="-6.0198" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-7.747" y2="-10.541" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-7.874" y2="-7.0358" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-7.62" y2="-7.0358" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-7.0358" x2="-7.62" y2="-7.0358" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-7.874" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-7.62" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-9.525" x2="-7.62" y2="-9.525" width="0.1524" layer="47"/>
<text x="-15.7734" y="-13.081" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX34Y106D0T</text>
<text x="-15.7734" y="-14.986" size="1.27" layer="47" ratio="6" rot="SR0">Large Padstyle: RX410Y412D0T</text>
<text x="-14.8082" y="-16.891" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-18.796" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.255" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">.4in/10.16mm</text>
<text x="-3.7592" y="8.128" size="0.635" layer="47" ratio="4" rot="SR0">.41in/10.414mm</text>
<text x="10.795" y="-3.5052" size="0.635" layer="47" ratio="4" rot="SR0">.565in/14.351mm</text>
<text x="-15.7734" y="-8.5852" size="0.635" layer="47" ratio="4" rot="SR0">.078in/1.981mm</text>
<polygon width="0.1524" layer="41">
<vertex x="-4.2418" y="-5.334"/>
<vertex x="4.2418" y="-5.334"/>
<vertex x="4.2418" y="-6.9342"/>
<vertex x="-4.2418" y="-6.9342"/>
</polygon>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="TS7B-L">
<smd name="1" x="-3.81" y="-8.2296" dx="0.8128" dy="2.3876" layer="1"/>
<smd name="2" x="-2.54" y="-8.2296" dx="0.8128" dy="2.3876" layer="1"/>
<smd name="3" x="-1.27" y="-8.2296" dx="0.8128" dy="2.3876" layer="1"/>
<smd name="4" x="0" y="-8.2296" dx="0.8128" dy="2.3876" layer="1"/>
<smd name="5" x="1.27" y="-8.2296" dx="0.8128" dy="2.3876" layer="1"/>
<smd name="6" x="2.54" y="-8.2296" dx="0.8128" dy="2.3876" layer="1"/>
<smd name="7" x="3.81" y="-8.2296" dx="0.8128" dy="2.3876" layer="1"/>
<smd name="8" x="0" y="-0.0508" dx="10.414" dy="10.5664" layer="1"/>
<wire x1="-5.207" y1="-5.08" x2="-4.2164" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-3.4036" y1="-5.08" x2="-2.9464" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-5.08" x2="-1.6764" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-5.08" x2="-0.4064" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="0.4064" y1="-5.08" x2="0.8636" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="1.6764" y1="-5.08" x2="2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="2.9464" y1="-5.08" x2="3.4036" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.08" x2="5.207" y2="-5.08" width="0.1524" layer="51"/>
<text x="-4.3942" y="-5.461" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-5.6642" y="-8.8646" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="0" y1="5.08" x2="7.747" y2="5.08" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-5.08" x2="8.128" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="-5.207" y2="8.001" width="0.1524" layer="47"/>
<wire x1="5.207" y1="0" x2="5.207" y2="7.62" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.668" y2="5.08" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="0" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-9.271" x2="10.668" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="0" y1="-7.2898" x2="-7.747" y2="-7.2898" width="0.1524" layer="47"/>
<wire x1="0" y1="-7.1628" x2="0" y2="-7.2898" width="0.1524" layer="47"/>
<wire x1="0" y1="-7.2898" x2="0" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="0" y1="-12.2428" x2="0" y2="-12.6492" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-7.1628" x2="1.27" y2="-12.2428" width="0.1524" layer="47"/>
<text x="-15.2146" y="-18.161" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX32Y94D0T</text>
<text x="-15.7734" y="-20.066" size="1.27" layer="47" ratio="6" rot="SR0">Large Padstyle: RX410Y416D0T</text>
<text x="-14.8082" y="-21.971" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-23.876" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.255" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.4in/10.16mm</text>
<text x="-4.0386" y="8.128" size="0.635" layer="47" ratio="4" rot="SR0">0.41in/10.414mm</text>
<text x="10.795" y="-3.4544" size="0.635" layer="47" ratio="4" rot="SR0">0.565in/14.351mm</text>
<text x="-16.3322" y="-8.5852" size="0.635" layer="47" ratio="4" rot="SR0">0.078in/1.981mm</text>
<text x="-2.8194" y="-13.4112" size="0.635" layer="47" ratio="4" rot="SR0">0.05in/1.27mm</text>
<polygon width="0.1524" layer="41">
<vertex x="-4.2164" y="-5.334"/>
<vertex x="4.2164" y="-5.334"/>
<vertex x="4.2164" y="-7.0358"/>
<vertex x="-4.2164" y="-7.0358"/>
</polygon>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-3.4036" y1="-5.08" x2="-4.2164" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-5.08" x2="-4.2164" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-9.271" x2="-3.4036" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-3.4036" y1="-9.271" x2="-3.4036" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-5.08" x2="-2.9464" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.9464" y1="-5.08" x2="-2.9464" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-2.9464" y1="-9.271" x2="-2.1336" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-9.271" x2="-2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-5.08" x2="-1.6764" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-1.6764" y1="-5.08" x2="-1.6764" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-1.6764" y1="-9.271" x2="-0.8636" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-9.271" x2="-0.8636" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="0.4064" y1="-5.08" x2="-0.4064" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-0.4064" y1="-5.08" x2="-0.4064" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="-0.4064" y1="-9.271" x2="0.4064" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="0.4064" y1="-9.271" x2="0.4064" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="1.6764" y1="-5.08" x2="0.8636" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-5.08" x2="0.8636" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-9.271" x2="1.6764" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="1.6764" y1="-9.271" x2="1.6764" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="2.9464" y1="-5.08" x2="2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-5.08" x2="2.1336" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-9.271" x2="2.9464" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="2.9464" y1="-9.271" x2="2.9464" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.08" x2="3.4036" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="3.4036" y1="-5.08" x2="3.4036" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="3.4036" y1="-9.271" x2="4.2164" y2="-9.271" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-9.271" x2="4.2164" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-5.08" x2="2.1336" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="5.207" y1="-5.08" x2="5.207" y2="5.08" width="0.1524" layer="51"/>
<wire x1="5.207" y1="5.08" x2="-5.207" y2="5.08" width="0.1524" layer="51"/>
<wire x1="-5.207" y1="5.08" x2="-5.207" y2="-5.08" width="0.1524" layer="51"/>
<text x="-4.3942" y="-5.461" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-4.2164" y1="-5.6896" x2="-4.2164" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="-2.9464" y1="-5.6896" x2="-2.9464" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="-1.6764" y1="-5.6896" x2="-1.6764" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="-0.4064" y1="-5.6896" x2="-0.4064" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="0.8636" y1="-5.6896" x2="0.8636" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="-5.6896" x2="2.1336" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="3.4036" y1="-5.6896" x2="3.4036" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="-3.4036" y1="-5.6896" x2="-3.4036" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="-5.6896" x2="-2.1336" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="-5.6896" x2="-0.8636" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="0.4064" y1="-5.6896" x2="0.4064" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="1.6764" y1="-5.6896" x2="1.6764" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="2.9464" y1="-5.6896" x2="2.9464" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="4.2164" y1="-5.6896" x2="4.2164" y2="-6.6802" width="0.1524" layer="21"/>
<text x="-5.6642" y="-8.8646" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="0" y1="-5.08" x2="7.747" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="7.747" y2="-5.08" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="7.62" y2="4.826" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="7.874" y2="4.826" width="0.1524" layer="47"/>
<wire x1="7.62" y1="4.826" x2="7.874" y2="4.826" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-5.08" x2="7.62" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.747" y1="-5.08" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="7.62" y1="-4.826" x2="7.874" y2="-4.826" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="0" x2="-5.207" y2="7.62" width="0.1524" layer="47"/>
<wire x1="5.207" y1="7.62" x2="5.207" y2="8.001" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="5.207" y2="7.62" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="-4.953" y2="7.747" width="0.1524" layer="47"/>
<wire x1="-5.207" y1="7.62" x2="-4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="-4.953" y1="7.747" x2="-4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="5.207" y1="7.62" x2="4.953" y2="7.747" width="0.1524" layer="47"/>
<wire x1="5.207" y1="7.62" x2="4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="4.953" y1="7.747" x2="4.953" y2="7.493" width="0.1524" layer="47"/>
<wire x1="7.747" y1="5.08" x2="10.287" y2="5.08" width="0.1524" layer="47"/>
<wire x1="0" y1="-9.271" x2="10.287" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.287" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.16" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.287" y1="5.08" x2="10.414" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.16" y1="4.826" x2="10.414" y2="4.826" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-9.271" x2="10.16" y2="-9.017" width="0.1524" layer="47"/>
<wire x1="10.287" y1="-9.271" x2="10.414" y2="-9.017" width="0.1524" layer="47"/>
<wire x1="10.16" y1="-9.017" x2="10.414" y2="-9.017" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-8.128" y2="-7.2898" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-8.128" y2="-9.271" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-7.747" y2="-6.0198" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-7.747" y2="-10.541" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-7.874" y2="-7.0358" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-7.2898" x2="-7.62" y2="-7.0358" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-7.0358" x2="-7.62" y2="-7.0358" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-7.874" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="-7.747" y1="-9.271" x2="-7.62" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="-7.874" y1="-9.525" x2="-7.62" y2="-9.525" width="0.1524" layer="47"/>
<wire x1="0" y1="-9.271" x2="0" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-12.2428" x2="1.27" y2="-12.6492" width="0.1524" layer="47"/>
<wire x1="0" y1="-12.2428" x2="-1.27" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-12.2428" x2="2.54" y2="-12.2428" width="0.1524" layer="47"/>
<wire x1="0" y1="-12.2428" x2="-0.254" y2="-12.1412" width="0.1524" layer="47"/>
<wire x1="0" y1="-12.2428" x2="-0.254" y2="-12.3952" width="0.1524" layer="47"/>
<wire x1="-0.254" y1="-12.1412" x2="-0.254" y2="-12.3952" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-12.2428" x2="1.524" y2="-12.1412" width="0.1524" layer="47"/>
<wire x1="1.27" y1="-12.2428" x2="1.524" y2="-12.3952" width="0.1524" layer="47"/>
<wire x1="1.524" y1="-12.1412" x2="1.524" y2="-12.3952" width="0.1524" layer="47"/>
<text x="-15.2146" y="-18.161" size="1.27" layer="47" ratio="6" rot="SR0">Default Padstyle: RX32Y94D0T</text>
<text x="-15.7734" y="-20.066" size="1.27" layer="47" ratio="6" rot="SR0">Large Padstyle: RX410Y416D0T</text>
<text x="-14.8082" y="-21.971" size="1.27" layer="47" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-23.876" size="1.27" layer="47" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.255" y="-0.3048" size="0.635" layer="47" ratio="4" rot="SR0">0.4in/10.16mm</text>
<text x="-4.0386" y="8.128" size="0.635" layer="47" ratio="4" rot="SR0">0.41in/10.414mm</text>
<text x="10.795" y="-3.4544" size="0.635" layer="47" ratio="4" rot="SR0">0.565in/14.351mm</text>
<text x="-16.3322" y="-8.5852" size="0.635" layer="47" ratio="4" rot="SR0">0.078in/1.981mm</text>
<text x="-2.8194" y="-13.4112" size="0.635" layer="47" ratio="4" rot="SR0">0.05in/1.27mm</text>
<polygon width="0.1524" layer="41">
<vertex x="-4.2164" y="-5.334"/>
<vertex x="4.2164" y="-5.334"/>
<vertex x="4.2164" y="-7.0358"/>
<vertex x="-4.2164" y="-7.0358"/>
</polygon>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="STM32F746ZGT6G_A">
<pin name="PE2" x="2.54" y="0" length="middle"/>
<pin name="PE3" x="2.54" y="-2.54" length="middle"/>
<pin name="PE4" x="2.54" y="-5.08" length="middle"/>
<pin name="PE5" x="2.54" y="-7.62" length="middle"/>
<pin name="PE6" x="2.54" y="-10.16" length="middle"/>
<pin name="VBAT" x="2.54" y="-12.7" length="middle" direction="pwr"/>
<pin name="PC13" x="2.54" y="-15.24" length="middle"/>
<pin name="PC14" x="2.54" y="-17.78" length="middle"/>
<pin name="PC15" x="2.54" y="-20.32" length="middle"/>
<pin name="PF0" x="2.54" y="-22.86" length="middle"/>
<pin name="PF1" x="2.54" y="-25.4" length="middle"/>
<pin name="PF2" x="2.54" y="-27.94" length="middle"/>
<pin name="PF3" x="2.54" y="-30.48" length="middle"/>
<pin name="PF4" x="2.54" y="-33.02" length="middle"/>
<pin name="PF5" x="2.54" y="-35.56" length="middle"/>
<pin name="VSS_2" x="2.54" y="-38.1" length="middle" direction="pas"/>
<pin name="VDD_2" x="2.54" y="-40.64" length="middle" direction="pwr"/>
<pin name="PF6" x="2.54" y="-43.18" length="middle"/>
<pin name="PF7" x="2.54" y="-45.72" length="middle"/>
<pin name="PF8" x="2.54" y="-48.26" length="middle"/>
<pin name="PF9" x="2.54" y="-50.8" length="middle"/>
<pin name="PF10" x="2.54" y="-53.34" length="middle"/>
<pin name="PH0" x="2.54" y="-55.88" length="middle"/>
<pin name="PH1" x="2.54" y="-58.42" length="middle"/>
<pin name="NRST" x="2.54" y="-60.96" length="middle"/>
<pin name="PC0" x="2.54" y="-63.5" length="middle"/>
<pin name="PC1" x="2.54" y="-66.04" length="middle"/>
<pin name="PC2" x="2.54" y="-68.58" length="middle"/>
<pin name="PC3" x="2.54" y="-71.12" length="middle"/>
<pin name="VDD_3" x="2.54" y="-73.66" length="middle" direction="pwr"/>
<pin name="VSSA" x="2.54" y="-76.2" length="middle" direction="pas"/>
<pin name="VREF+" x="2.54" y="-78.74" length="middle" direction="pwr"/>
<pin name="VDDA" x="2.54" y="-81.28" length="middle" direction="pwr"/>
<pin name="PA0" x="2.54" y="-83.82" length="middle"/>
<pin name="PA1" x="2.54" y="-86.36" length="middle"/>
<pin name="PA2" x="2.54" y="-88.9" length="middle"/>
<pin name="PA3" x="43.18" y="-88.9" length="middle" rot="R180"/>
<pin name="VSS_3" x="43.18" y="-86.36" length="middle" direction="pas" rot="R180"/>
<pin name="VDD_4" x="43.18" y="-83.82" length="middle" direction="pwr" rot="R180"/>
<pin name="PA4" x="43.18" y="-81.28" length="middle" rot="R180"/>
<pin name="PA5" x="43.18" y="-78.74" length="middle" rot="R180"/>
<pin name="PA6" x="43.18" y="-76.2" length="middle" rot="R180"/>
<pin name="PA7" x="43.18" y="-73.66" length="middle" rot="R180"/>
<pin name="PC4" x="43.18" y="-71.12" length="middle" rot="R180"/>
<pin name="PC5" x="43.18" y="-68.58" length="middle" rot="R180"/>
<pin name="PB0" x="43.18" y="-66.04" length="middle" rot="R180"/>
<pin name="PB1" x="43.18" y="-63.5" length="middle" rot="R180"/>
<pin name="PB2" x="43.18" y="-60.96" length="middle" rot="R180"/>
<pin name="PF11" x="43.18" y="-58.42" length="middle" rot="R180"/>
<pin name="PF12" x="43.18" y="-55.88" length="middle" rot="R180"/>
<pin name="VSS_4" x="43.18" y="-53.34" length="middle" direction="pas" rot="R180"/>
<pin name="VDD_5" x="43.18" y="-50.8" length="middle" direction="pwr" rot="R180"/>
<pin name="PF13" x="43.18" y="-48.26" length="middle" rot="R180"/>
<pin name="PF14" x="43.18" y="-45.72" length="middle" rot="R180"/>
<pin name="PF15" x="43.18" y="-43.18" length="middle" rot="R180"/>
<pin name="PG0" x="43.18" y="-40.64" length="middle" rot="R180"/>
<pin name="PG1" x="43.18" y="-38.1" length="middle" rot="R180"/>
<pin name="PE7" x="43.18" y="-35.56" length="middle" rot="R180"/>
<pin name="PE8" x="43.18" y="-33.02" length="middle" rot="R180"/>
<pin name="PE9" x="43.18" y="-30.48" length="middle" rot="R180"/>
<pin name="VSS" x="43.18" y="-27.94" length="middle" direction="pas" rot="R180"/>
<pin name="VDD_6" x="43.18" y="-25.4" length="middle" direction="pwr" rot="R180"/>
<pin name="PE10" x="43.18" y="-22.86" length="middle" rot="R180"/>
<pin name="PE11" x="43.18" y="-20.32" length="middle" rot="R180"/>
<pin name="PE12" x="43.18" y="-17.78" length="middle" rot="R180"/>
<pin name="PE13" x="43.18" y="-15.24" length="middle" rot="R180"/>
<pin name="PE14" x="43.18" y="-12.7" length="middle" rot="R180"/>
<pin name="PE15" x="43.18" y="-10.16" length="middle" rot="R180"/>
<pin name="PB10" x="43.18" y="-7.62" length="middle" rot="R180"/>
<pin name="PB11" x="43.18" y="-5.08" length="middle" rot="R180"/>
<pin name="VCAP_1" x="43.18" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD" x="43.18" y="0" length="middle" direction="pwr" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-93.98" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-93.98" x2="38.1" y2="-93.98" width="0.1524" layer="94"/>
<wire x1="38.1" y1="-93.98" x2="38.1" y2="5.08" width="0.1524" layer="94"/>
<wire x1="38.1" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="17.5006" y="1.4986" size="2.0828" layer="97" ratio="6" rot="SR0">1 of 2</text>
<text x="18.1356" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="17.5006" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="STM32F746ZGT6G_B">
<pin name="PB12" x="2.54" y="0" length="middle"/>
<pin name="PB13" x="2.54" y="-2.54" length="middle"/>
<pin name="PB14" x="2.54" y="-5.08" length="middle"/>
<pin name="PB15" x="2.54" y="-7.62" length="middle"/>
<pin name="PD8" x="2.54" y="-10.16" length="middle"/>
<pin name="PD9" x="2.54" y="-12.7" length="middle"/>
<pin name="PD10" x="2.54" y="-15.24" length="middle"/>
<pin name="PD11" x="2.54" y="-17.78" length="middle"/>
<pin name="PD12" x="2.54" y="-20.32" length="middle"/>
<pin name="PD13" x="2.54" y="-22.86" length="middle"/>
<pin name="VSS_2" x="2.54" y="-25.4" length="middle" direction="pas"/>
<pin name="VDD_2" x="2.54" y="-27.94" length="middle" direction="pwr"/>
<pin name="PD14" x="2.54" y="-30.48" length="middle"/>
<pin name="PD15" x="2.54" y="-33.02" length="middle"/>
<pin name="PG2" x="2.54" y="-35.56" length="middle"/>
<pin name="PG3" x="2.54" y="-38.1" length="middle"/>
<pin name="PG4" x="2.54" y="-40.64" length="middle"/>
<pin name="PG5" x="2.54" y="-43.18" length="middle"/>
<pin name="PG6" x="2.54" y="-45.72" length="middle"/>
<pin name="PG7" x="2.54" y="-48.26" length="middle"/>
<pin name="PG8" x="2.54" y="-50.8" length="middle"/>
<pin name="VSS_3" x="2.54" y="-53.34" length="middle" direction="pas"/>
<pin name="VDDUSB" x="2.54" y="-55.88" length="middle" direction="pwr"/>
<pin name="PC6" x="2.54" y="-58.42" length="middle"/>
<pin name="PC7" x="2.54" y="-60.96" length="middle"/>
<pin name="PC8" x="2.54" y="-63.5" length="middle"/>
<pin name="PC9" x="2.54" y="-66.04" length="middle"/>
<pin name="PA8" x="2.54" y="-68.58" length="middle"/>
<pin name="PA9" x="2.54" y="-71.12" length="middle"/>
<pin name="PA10" x="2.54" y="-73.66" length="middle"/>
<pin name="PA11" x="2.54" y="-76.2" length="middle"/>
<pin name="PA12" x="2.54" y="-78.74" length="middle"/>
<pin name="PA13" x="2.54" y="-81.28" length="middle"/>
<pin name="VCAP_2" x="2.54" y="-83.82" length="middle" direction="pwr"/>
<pin name="VSS_4" x="2.54" y="-86.36" length="middle" direction="pas"/>
<pin name="VDD_3" x="2.54" y="-88.9" length="middle" direction="pwr"/>
<pin name="PA14" x="48.26" y="-88.9" length="middle" rot="R180"/>
<pin name="PA15" x="48.26" y="-86.36" length="middle" rot="R180"/>
<pin name="PC10" x="48.26" y="-83.82" length="middle" rot="R180"/>
<pin name="PC11" x="48.26" y="-81.28" length="middle" rot="R180"/>
<pin name="PC12" x="48.26" y="-78.74" length="middle" rot="R180"/>
<pin name="PD0" x="48.26" y="-76.2" length="middle" rot="R180"/>
<pin name="PD1" x="48.26" y="-73.66" length="middle" rot="R180"/>
<pin name="PD2" x="48.26" y="-71.12" length="middle" rot="R180"/>
<pin name="PD3" x="48.26" y="-68.58" length="middle" rot="R180"/>
<pin name="PD4" x="48.26" y="-66.04" length="middle" rot="R180"/>
<pin name="PD5" x="48.26" y="-63.5" length="middle" rot="R180"/>
<pin name="VSS_5" x="48.26" y="-60.96" length="middle" direction="pas" rot="R180"/>
<pin name="VDD_4" x="48.26" y="-58.42" length="middle" direction="pwr" rot="R180"/>
<pin name="PD6" x="48.26" y="-55.88" length="middle" rot="R180"/>
<pin name="PD7" x="48.26" y="-53.34" length="middle" rot="R180"/>
<pin name="PG9" x="48.26" y="-50.8" length="middle" rot="R180"/>
<pin name="PG10" x="48.26" y="-48.26" length="middle" rot="R180"/>
<pin name="PG11" x="48.26" y="-45.72" length="middle" rot="R180"/>
<pin name="PG12" x="48.26" y="-43.18" length="middle" rot="R180"/>
<pin name="PG13" x="48.26" y="-40.64" length="middle" rot="R180"/>
<pin name="PG14" x="48.26" y="-38.1" length="middle" rot="R180"/>
<pin name="VSS" x="48.26" y="-35.56" length="middle" direction="pas" rot="R180"/>
<pin name="VDD_5" x="48.26" y="-33.02" length="middle" direction="pwr" rot="R180"/>
<pin name="PG15" x="48.26" y="-30.48" length="middle" rot="R180"/>
<pin name="PB3" x="48.26" y="-27.94" length="middle" rot="R180"/>
<pin name="PB4" x="48.26" y="-25.4" length="middle" rot="R180"/>
<pin name="PB5" x="48.26" y="-22.86" length="middle" rot="R180"/>
<pin name="PB6" x="48.26" y="-20.32" length="middle" rot="R180"/>
<pin name="PB7" x="48.26" y="-17.78" length="middle" rot="R180"/>
<pin name="BOOT0" x="48.26" y="-15.24" length="middle" direction="in" rot="R180"/>
<pin name="PB8" x="48.26" y="-12.7" length="middle" rot="R180"/>
<pin name="PB9" x="48.26" y="-10.16" length="middle" rot="R180"/>
<pin name="PE0" x="48.26" y="-7.62" length="middle" rot="R180"/>
<pin name="PE1" x="48.26" y="-5.08" length="middle" rot="R180"/>
<pin name="PDR_ON" x="48.26" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD" x="48.26" y="0" length="middle" direction="pwr" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-93.98" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-93.98" x2="43.18" y2="-93.98" width="0.1524" layer="94"/>
<wire x1="43.18" y1="-93.98" x2="43.18" y2="5.08" width="0.1524" layer="94"/>
<wire x1="43.18" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="20.0406" y="1.4986" size="2.0828" layer="97" ratio="6" rot="SR0">2 of 2</text>
<text x="20.6756" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="20.0406" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="LM2678S-12">
<pin name="VSW" x="2.54" y="0" length="middle" direction="out"/>
<pin name="VIN" x="2.54" y="-2.54" length="middle" direction="in"/>
<pin name="CB" x="2.54" y="-5.08" length="middle" direction="pas"/>
<pin name="GND" x="2.54" y="-7.62" length="middle" direction="pas"/>
<pin name="NC" x="63.5" y="-7.62" length="middle" direction="pas" rot="R180"/>
<pin name="FB" x="63.5" y="-5.08" length="middle" direction="pas" rot="R180"/>
<pin name="ON/~OFF" x="63.5" y="-2.54" length="middle" direction="pas" rot="R180"/>
<pin name="TAB" x="63.5" y="0" length="middle" direction="pas" rot="R180"/>
<text x="28.2956" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="27.6606" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="58.42" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="58.42" y1="-12.7" x2="58.42" y2="5.08" width="0.1524" layer="94"/>
<wire x1="58.42" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="28.2956" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="27.6606" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="CAPH">
<pin name="2" x="7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="3.4798" y1="0" x2="3.4798" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="4.1148" y2="1.905" width="0.2032" layer="94"/>
<text x="-5.1562" y="-5.5372" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;Value</text>
<text x="-4.0894" y="2.0828" size="3.4798" layer="95" ratio="10" rot="SR0">&gt;Name</text>
<text x="-5.1562" y="-5.5372" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;Value</text>
<text x="-4.0894" y="2.0828" size="3.4798" layer="95" ratio="10" rot="SR0">&gt;Name</text>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="0.9652" y1="0.9652" x2="1.5748" y2="0.9652" width="0.1524" layer="94"/>
<text x="-5.1562" y="-5.5372" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;Value</text>
<text x="-4.0894" y="2.0828" size="3.4798" layer="95" ratio="10" rot="SR0">&gt;Name</text>
<wire x1="3.4798" y1="-1.905" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="-1.905" x2="4.1148" y2="0" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="5.08" y2="0" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<text x="-5.1562" y="-5.5372" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;Value</text>
<text x="-4.0894" y="2.0828" size="3.4798" layer="95" ratio="10" rot="SR0">&gt;Name</text>
</symbol>
<symbol name="VS-6TQ045S-M3">
<pin name="N/C" x="2.54" y="0" length="middle" direction="nc"/>
<pin name="ANODE" x="2.54" y="-10.16" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="35.56" y="-5.08" length="middle" direction="pas" rot="R180"/>
<wire x1="7.62" y1="0" x2="17.78" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="17.78" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-10.16" x2="17.78" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-5.08" x2="22.86" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="22.86" y1="-5.08" x2="22.86" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="22.86" y1="-5.08" x2="22.86" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="22.86" y1="-7.62" x2="25.4" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="25.4" y1="-5.08" x2="22.86" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="25.4" y1="-7.62" x2="25.4" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="25.4" y1="-5.08" x2="25.4" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="25.4" y1="-5.08" x2="30.48" y2="-5.08" width="0.1524" layer="94"/>
<text x="15.5956" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="14.9606" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="IND">
<pin name="1" x="15.24" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="2" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="5.08" y1="0" x2="5.08" y2="1.27" width="0.2032" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="1.27" width="0.2032" layer="94"/>
<wire x1="12.7" y1="0" x2="12.7" y2="1.27" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.2032" layer="94"/>
<wire x1="10.16" y1="0" x2="10.16" y2="1.27" width="0.2032" layer="94"/>
<wire x1="5.08" y1="1.27" x2="7.62" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="2.54" y1="1.27" x2="5.08" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="7.62" y1="1.27" x2="10.16" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="10.16" y1="1.27" x2="12.7" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<text x="-1.9812" y="-4.2672" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;Value</text>
<text x="-0.9144" y="3.3528" size="3.4798" layer="95" ratio="10" rot="SR0">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32F746ZGT6G" prefix="U">
<gates>
<gate name="A" symbol="STM32F746ZGT6G_A" x="0" y="0"/>
<gate name="B" symbol="STM32F746ZGT6G_B" x="59.436" y="0"/>
</gates>
<devices>
<device name="" package="LQFP144_STM">
<connects>
<connect gate="A" pin="NRST" pad="25"/>
<connect gate="A" pin="PA0" pad="34"/>
<connect gate="A" pin="PA1" pad="35"/>
<connect gate="A" pin="PA2" pad="36"/>
<connect gate="A" pin="PA3" pad="37"/>
<connect gate="A" pin="PA4" pad="40"/>
<connect gate="A" pin="PA5" pad="41"/>
<connect gate="A" pin="PA6" pad="42"/>
<connect gate="A" pin="PA7" pad="43"/>
<connect gate="A" pin="PB0" pad="46"/>
<connect gate="A" pin="PB1" pad="47"/>
<connect gate="A" pin="PB10" pad="69"/>
<connect gate="A" pin="PB11" pad="70"/>
<connect gate="A" pin="PB2" pad="48"/>
<connect gate="A" pin="PC0" pad="26"/>
<connect gate="A" pin="PC1" pad="27"/>
<connect gate="A" pin="PC13" pad="7"/>
<connect gate="A" pin="PC14" pad="8"/>
<connect gate="A" pin="PC15" pad="9"/>
<connect gate="A" pin="PC2" pad="28"/>
<connect gate="A" pin="PC3" pad="29"/>
<connect gate="A" pin="PC4" pad="44"/>
<connect gate="A" pin="PC5" pad="45"/>
<connect gate="A" pin="PE10" pad="63"/>
<connect gate="A" pin="PE11" pad="64"/>
<connect gate="A" pin="PE12" pad="65"/>
<connect gate="A" pin="PE13" pad="66"/>
<connect gate="A" pin="PE14" pad="67"/>
<connect gate="A" pin="PE15" pad="68"/>
<connect gate="A" pin="PE2" pad="1"/>
<connect gate="A" pin="PE3" pad="2"/>
<connect gate="A" pin="PE4" pad="3"/>
<connect gate="A" pin="PE5" pad="4"/>
<connect gate="A" pin="PE6" pad="5"/>
<connect gate="A" pin="PE7" pad="58"/>
<connect gate="A" pin="PE8" pad="59"/>
<connect gate="A" pin="PE9" pad="60"/>
<connect gate="A" pin="PF0" pad="10"/>
<connect gate="A" pin="PF1" pad="11"/>
<connect gate="A" pin="PF10" pad="22"/>
<connect gate="A" pin="PF11" pad="49"/>
<connect gate="A" pin="PF12" pad="50"/>
<connect gate="A" pin="PF13" pad="53"/>
<connect gate="A" pin="PF14" pad="54"/>
<connect gate="A" pin="PF15" pad="55"/>
<connect gate="A" pin="PF2" pad="12"/>
<connect gate="A" pin="PF3" pad="13"/>
<connect gate="A" pin="PF4" pad="14"/>
<connect gate="A" pin="PF5" pad="15"/>
<connect gate="A" pin="PF6" pad="18"/>
<connect gate="A" pin="PF7" pad="19"/>
<connect gate="A" pin="PF8" pad="20"/>
<connect gate="A" pin="PF9" pad="21"/>
<connect gate="A" pin="PG0" pad="56"/>
<connect gate="A" pin="PG1" pad="57"/>
<connect gate="A" pin="PH0" pad="23"/>
<connect gate="A" pin="PH1" pad="24"/>
<connect gate="A" pin="VBAT" pad="6"/>
<connect gate="A" pin="VCAP_1" pad="71"/>
<connect gate="A" pin="VDD" pad="72"/>
<connect gate="A" pin="VDDA" pad="33"/>
<connect gate="A" pin="VDD_2" pad="17"/>
<connect gate="A" pin="VDD_3" pad="30"/>
<connect gate="A" pin="VDD_4" pad="39"/>
<connect gate="A" pin="VDD_5" pad="52"/>
<connect gate="A" pin="VDD_6" pad="62"/>
<connect gate="A" pin="VREF+" pad="32"/>
<connect gate="A" pin="VSS" pad="61"/>
<connect gate="A" pin="VSSA" pad="31"/>
<connect gate="A" pin="VSS_2" pad="16"/>
<connect gate="A" pin="VSS_3" pad="38"/>
<connect gate="A" pin="VSS_4" pad="51"/>
<connect gate="B" pin="BOOT0" pad="138"/>
<connect gate="B" pin="PA10" pad="102"/>
<connect gate="B" pin="PA11" pad="103"/>
<connect gate="B" pin="PA12" pad="104"/>
<connect gate="B" pin="PA13" pad="105"/>
<connect gate="B" pin="PA14" pad="109"/>
<connect gate="B" pin="PA15" pad="110"/>
<connect gate="B" pin="PA8" pad="100"/>
<connect gate="B" pin="PA9" pad="101"/>
<connect gate="B" pin="PB12" pad="73"/>
<connect gate="B" pin="PB13" pad="74"/>
<connect gate="B" pin="PB14" pad="75"/>
<connect gate="B" pin="PB15" pad="76"/>
<connect gate="B" pin="PB3" pad="133"/>
<connect gate="B" pin="PB4" pad="134"/>
<connect gate="B" pin="PB5" pad="135"/>
<connect gate="B" pin="PB6" pad="136"/>
<connect gate="B" pin="PB7" pad="137"/>
<connect gate="B" pin="PB8" pad="139"/>
<connect gate="B" pin="PB9" pad="140"/>
<connect gate="B" pin="PC10" pad="111"/>
<connect gate="B" pin="PC11" pad="112"/>
<connect gate="B" pin="PC12" pad="113"/>
<connect gate="B" pin="PC6" pad="96"/>
<connect gate="B" pin="PC7" pad="97"/>
<connect gate="B" pin="PC8" pad="98"/>
<connect gate="B" pin="PC9" pad="99"/>
<connect gate="B" pin="PD0" pad="114"/>
<connect gate="B" pin="PD1" pad="115"/>
<connect gate="B" pin="PD10" pad="79"/>
<connect gate="B" pin="PD11" pad="80"/>
<connect gate="B" pin="PD12" pad="81"/>
<connect gate="B" pin="PD13" pad="82"/>
<connect gate="B" pin="PD14" pad="85"/>
<connect gate="B" pin="PD15" pad="86"/>
<connect gate="B" pin="PD2" pad="116"/>
<connect gate="B" pin="PD3" pad="117"/>
<connect gate="B" pin="PD4" pad="118"/>
<connect gate="B" pin="PD5" pad="119"/>
<connect gate="B" pin="PD6" pad="122"/>
<connect gate="B" pin="PD7" pad="123"/>
<connect gate="B" pin="PD8" pad="77"/>
<connect gate="B" pin="PD9" pad="78"/>
<connect gate="B" pin="PDR_ON" pad="143"/>
<connect gate="B" pin="PE0" pad="141"/>
<connect gate="B" pin="PE1" pad="142"/>
<connect gate="B" pin="PG10" pad="125"/>
<connect gate="B" pin="PG11" pad="126"/>
<connect gate="B" pin="PG12" pad="127"/>
<connect gate="B" pin="PG13" pad="128"/>
<connect gate="B" pin="PG14" pad="129"/>
<connect gate="B" pin="PG15" pad="132"/>
<connect gate="B" pin="PG2" pad="87"/>
<connect gate="B" pin="PG3" pad="88"/>
<connect gate="B" pin="PG4" pad="89"/>
<connect gate="B" pin="PG5" pad="90"/>
<connect gate="B" pin="PG6" pad="91"/>
<connect gate="B" pin="PG7" pad="92"/>
<connect gate="B" pin="PG8" pad="93"/>
<connect gate="B" pin="PG9" pad="124"/>
<connect gate="B" pin="VCAP_2" pad="106"/>
<connect gate="B" pin="VDD" pad="144"/>
<connect gate="B" pin="VDDUSB" pad="95"/>
<connect gate="B" pin="VDD_2" pad="84"/>
<connect gate="B" pin="VDD_3" pad="108"/>
<connect gate="B" pin="VDD_4" pad="121"/>
<connect gate="B" pin="VDD_5" pad="131"/>
<connect gate="B" pin="VSS" pad="130"/>
<connect gate="B" pin="VSS_2" pad="83"/>
<connect gate="B" pin="VSS_3" pad="94"/>
<connect gate="B" pin="VSS_4" pad="107"/>
<connect gate="B" pin="VSS_5" pad="120"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="STM32F746ZGT6G" constant="no"/>
<attribute name="MFR_NAME" value="STMicroelectronics" constant="no"/>
</technology>
</technologies>
</device>
<device name="LQFP144_STM-M" package="LQFP144_STM-M">
<connects>
<connect gate="A" pin="NRST" pad="25"/>
<connect gate="A" pin="PA0" pad="34"/>
<connect gate="A" pin="PA1" pad="35"/>
<connect gate="A" pin="PA2" pad="36"/>
<connect gate="A" pin="PA3" pad="37"/>
<connect gate="A" pin="PA4" pad="40"/>
<connect gate="A" pin="PA5" pad="41"/>
<connect gate="A" pin="PA6" pad="42"/>
<connect gate="A" pin="PA7" pad="43"/>
<connect gate="A" pin="PB0" pad="46"/>
<connect gate="A" pin="PB1" pad="47"/>
<connect gate="A" pin="PB10" pad="69"/>
<connect gate="A" pin="PB11" pad="70"/>
<connect gate="A" pin="PB2" pad="48"/>
<connect gate="A" pin="PC0" pad="26"/>
<connect gate="A" pin="PC1" pad="27"/>
<connect gate="A" pin="PC13" pad="7"/>
<connect gate="A" pin="PC14" pad="8"/>
<connect gate="A" pin="PC15" pad="9"/>
<connect gate="A" pin="PC2" pad="28"/>
<connect gate="A" pin="PC3" pad="29"/>
<connect gate="A" pin="PC4" pad="44"/>
<connect gate="A" pin="PC5" pad="45"/>
<connect gate="A" pin="PE10" pad="63"/>
<connect gate="A" pin="PE11" pad="64"/>
<connect gate="A" pin="PE12" pad="65"/>
<connect gate="A" pin="PE13" pad="66"/>
<connect gate="A" pin="PE14" pad="67"/>
<connect gate="A" pin="PE15" pad="68"/>
<connect gate="A" pin="PE2" pad="1"/>
<connect gate="A" pin="PE3" pad="2"/>
<connect gate="A" pin="PE4" pad="3"/>
<connect gate="A" pin="PE5" pad="4"/>
<connect gate="A" pin="PE6" pad="5"/>
<connect gate="A" pin="PE7" pad="58"/>
<connect gate="A" pin="PE8" pad="59"/>
<connect gate="A" pin="PE9" pad="60"/>
<connect gate="A" pin="PF0" pad="10"/>
<connect gate="A" pin="PF1" pad="11"/>
<connect gate="A" pin="PF10" pad="22"/>
<connect gate="A" pin="PF11" pad="49"/>
<connect gate="A" pin="PF12" pad="50"/>
<connect gate="A" pin="PF13" pad="53"/>
<connect gate="A" pin="PF14" pad="54"/>
<connect gate="A" pin="PF15" pad="55"/>
<connect gate="A" pin="PF2" pad="12"/>
<connect gate="A" pin="PF3" pad="13"/>
<connect gate="A" pin="PF4" pad="14"/>
<connect gate="A" pin="PF5" pad="15"/>
<connect gate="A" pin="PF6" pad="18"/>
<connect gate="A" pin="PF7" pad="19"/>
<connect gate="A" pin="PF8" pad="20"/>
<connect gate="A" pin="PF9" pad="21"/>
<connect gate="A" pin="PG0" pad="56"/>
<connect gate="A" pin="PG1" pad="57"/>
<connect gate="A" pin="PH0" pad="23"/>
<connect gate="A" pin="PH1" pad="24"/>
<connect gate="A" pin="VBAT" pad="6"/>
<connect gate="A" pin="VCAP_1" pad="71"/>
<connect gate="A" pin="VDD" pad="72"/>
<connect gate="A" pin="VDDA" pad="33"/>
<connect gate="A" pin="VDD_2" pad="17"/>
<connect gate="A" pin="VDD_3" pad="30"/>
<connect gate="A" pin="VDD_4" pad="39"/>
<connect gate="A" pin="VDD_5" pad="52"/>
<connect gate="A" pin="VDD_6" pad="62"/>
<connect gate="A" pin="VREF+" pad="32"/>
<connect gate="A" pin="VSS" pad="61"/>
<connect gate="A" pin="VSSA" pad="31"/>
<connect gate="A" pin="VSS_2" pad="16"/>
<connect gate="A" pin="VSS_3" pad="38"/>
<connect gate="A" pin="VSS_4" pad="51"/>
<connect gate="B" pin="BOOT0" pad="138"/>
<connect gate="B" pin="PA10" pad="102"/>
<connect gate="B" pin="PA11" pad="103"/>
<connect gate="B" pin="PA12" pad="104"/>
<connect gate="B" pin="PA13" pad="105"/>
<connect gate="B" pin="PA14" pad="109"/>
<connect gate="B" pin="PA15" pad="110"/>
<connect gate="B" pin="PA8" pad="100"/>
<connect gate="B" pin="PA9" pad="101"/>
<connect gate="B" pin="PB12" pad="73"/>
<connect gate="B" pin="PB13" pad="74"/>
<connect gate="B" pin="PB14" pad="75"/>
<connect gate="B" pin="PB15" pad="76"/>
<connect gate="B" pin="PB3" pad="133"/>
<connect gate="B" pin="PB4" pad="134"/>
<connect gate="B" pin="PB5" pad="135"/>
<connect gate="B" pin="PB6" pad="136"/>
<connect gate="B" pin="PB7" pad="137"/>
<connect gate="B" pin="PB8" pad="139"/>
<connect gate="B" pin="PB9" pad="140"/>
<connect gate="B" pin="PC10" pad="111"/>
<connect gate="B" pin="PC11" pad="112"/>
<connect gate="B" pin="PC12" pad="113"/>
<connect gate="B" pin="PC6" pad="96"/>
<connect gate="B" pin="PC7" pad="97"/>
<connect gate="B" pin="PC8" pad="98"/>
<connect gate="B" pin="PC9" pad="99"/>
<connect gate="B" pin="PD0" pad="114"/>
<connect gate="B" pin="PD1" pad="115"/>
<connect gate="B" pin="PD10" pad="79"/>
<connect gate="B" pin="PD11" pad="80"/>
<connect gate="B" pin="PD12" pad="81"/>
<connect gate="B" pin="PD13" pad="82"/>
<connect gate="B" pin="PD14" pad="85"/>
<connect gate="B" pin="PD15" pad="86"/>
<connect gate="B" pin="PD2" pad="116"/>
<connect gate="B" pin="PD3" pad="117"/>
<connect gate="B" pin="PD4" pad="118"/>
<connect gate="B" pin="PD5" pad="119"/>
<connect gate="B" pin="PD6" pad="122"/>
<connect gate="B" pin="PD7" pad="123"/>
<connect gate="B" pin="PD8" pad="77"/>
<connect gate="B" pin="PD9" pad="78"/>
<connect gate="B" pin="PDR_ON" pad="143"/>
<connect gate="B" pin="PE0" pad="141"/>
<connect gate="B" pin="PE1" pad="142"/>
<connect gate="B" pin="PG10" pad="125"/>
<connect gate="B" pin="PG11" pad="126"/>
<connect gate="B" pin="PG12" pad="127"/>
<connect gate="B" pin="PG13" pad="128"/>
<connect gate="B" pin="PG14" pad="129"/>
<connect gate="B" pin="PG15" pad="132"/>
<connect gate="B" pin="PG2" pad="87"/>
<connect gate="B" pin="PG3" pad="88"/>
<connect gate="B" pin="PG4" pad="89"/>
<connect gate="B" pin="PG5" pad="90"/>
<connect gate="B" pin="PG6" pad="91"/>
<connect gate="B" pin="PG7" pad="92"/>
<connect gate="B" pin="PG8" pad="93"/>
<connect gate="B" pin="PG9" pad="124"/>
<connect gate="B" pin="VCAP_2" pad="106"/>
<connect gate="B" pin="VDD" pad="144"/>
<connect gate="B" pin="VDDUSB" pad="95"/>
<connect gate="B" pin="VDD_2" pad="84"/>
<connect gate="B" pin="VDD_3" pad="108"/>
<connect gate="B" pin="VDD_4" pad="121"/>
<connect gate="B" pin="VDD_5" pad="131"/>
<connect gate="B" pin="VSS" pad="130"/>
<connect gate="B" pin="VSS_2" pad="83"/>
<connect gate="B" pin="VSS_3" pad="94"/>
<connect gate="B" pin="VSS_4" pad="107"/>
<connect gate="B" pin="VSS_5" pad="120"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="STM32F746ZGT6G" constant="no"/>
<attribute name="MFR_NAME" value="STMicroelectronics" constant="no"/>
</technology>
</technologies>
</device>
<device name="LQFP144_STM-L" package="LQFP144_STM-L">
<connects>
<connect gate="A" pin="NRST" pad="25"/>
<connect gate="A" pin="PA0" pad="34"/>
<connect gate="A" pin="PA1" pad="35"/>
<connect gate="A" pin="PA2" pad="36"/>
<connect gate="A" pin="PA3" pad="37"/>
<connect gate="A" pin="PA4" pad="40"/>
<connect gate="A" pin="PA5" pad="41"/>
<connect gate="A" pin="PA6" pad="42"/>
<connect gate="A" pin="PA7" pad="43"/>
<connect gate="A" pin="PB0" pad="46"/>
<connect gate="A" pin="PB1" pad="47"/>
<connect gate="A" pin="PB10" pad="69"/>
<connect gate="A" pin="PB11" pad="70"/>
<connect gate="A" pin="PB2" pad="48"/>
<connect gate="A" pin="PC0" pad="26"/>
<connect gate="A" pin="PC1" pad="27"/>
<connect gate="A" pin="PC13" pad="7"/>
<connect gate="A" pin="PC14" pad="8"/>
<connect gate="A" pin="PC15" pad="9"/>
<connect gate="A" pin="PC2" pad="28"/>
<connect gate="A" pin="PC3" pad="29"/>
<connect gate="A" pin="PC4" pad="44"/>
<connect gate="A" pin="PC5" pad="45"/>
<connect gate="A" pin="PE10" pad="63"/>
<connect gate="A" pin="PE11" pad="64"/>
<connect gate="A" pin="PE12" pad="65"/>
<connect gate="A" pin="PE13" pad="66"/>
<connect gate="A" pin="PE14" pad="67"/>
<connect gate="A" pin="PE15" pad="68"/>
<connect gate="A" pin="PE2" pad="1"/>
<connect gate="A" pin="PE3" pad="2"/>
<connect gate="A" pin="PE4" pad="3"/>
<connect gate="A" pin="PE5" pad="4"/>
<connect gate="A" pin="PE6" pad="5"/>
<connect gate="A" pin="PE7" pad="58"/>
<connect gate="A" pin="PE8" pad="59"/>
<connect gate="A" pin="PE9" pad="60"/>
<connect gate="A" pin="PF0" pad="10"/>
<connect gate="A" pin="PF1" pad="11"/>
<connect gate="A" pin="PF10" pad="22"/>
<connect gate="A" pin="PF11" pad="49"/>
<connect gate="A" pin="PF12" pad="50"/>
<connect gate="A" pin="PF13" pad="53"/>
<connect gate="A" pin="PF14" pad="54"/>
<connect gate="A" pin="PF15" pad="55"/>
<connect gate="A" pin="PF2" pad="12"/>
<connect gate="A" pin="PF3" pad="13"/>
<connect gate="A" pin="PF4" pad="14"/>
<connect gate="A" pin="PF5" pad="15"/>
<connect gate="A" pin="PF6" pad="18"/>
<connect gate="A" pin="PF7" pad="19"/>
<connect gate="A" pin="PF8" pad="20"/>
<connect gate="A" pin="PF9" pad="21"/>
<connect gate="A" pin="PG0" pad="56"/>
<connect gate="A" pin="PG1" pad="57"/>
<connect gate="A" pin="PH0" pad="23"/>
<connect gate="A" pin="PH1" pad="24"/>
<connect gate="A" pin="VBAT" pad="6"/>
<connect gate="A" pin="VCAP_1" pad="71"/>
<connect gate="A" pin="VDD" pad="72"/>
<connect gate="A" pin="VDDA" pad="33"/>
<connect gate="A" pin="VDD_2" pad="17"/>
<connect gate="A" pin="VDD_3" pad="30"/>
<connect gate="A" pin="VDD_4" pad="39"/>
<connect gate="A" pin="VDD_5" pad="52"/>
<connect gate="A" pin="VDD_6" pad="62"/>
<connect gate="A" pin="VREF+" pad="32"/>
<connect gate="A" pin="VSS" pad="61"/>
<connect gate="A" pin="VSSA" pad="31"/>
<connect gate="A" pin="VSS_2" pad="16"/>
<connect gate="A" pin="VSS_3" pad="38"/>
<connect gate="A" pin="VSS_4" pad="51"/>
<connect gate="B" pin="BOOT0" pad="138"/>
<connect gate="B" pin="PA10" pad="102"/>
<connect gate="B" pin="PA11" pad="103"/>
<connect gate="B" pin="PA12" pad="104"/>
<connect gate="B" pin="PA13" pad="105"/>
<connect gate="B" pin="PA14" pad="109"/>
<connect gate="B" pin="PA15" pad="110"/>
<connect gate="B" pin="PA8" pad="100"/>
<connect gate="B" pin="PA9" pad="101"/>
<connect gate="B" pin="PB12" pad="73"/>
<connect gate="B" pin="PB13" pad="74"/>
<connect gate="B" pin="PB14" pad="75"/>
<connect gate="B" pin="PB15" pad="76"/>
<connect gate="B" pin="PB3" pad="133"/>
<connect gate="B" pin="PB4" pad="134"/>
<connect gate="B" pin="PB5" pad="135"/>
<connect gate="B" pin="PB6" pad="136"/>
<connect gate="B" pin="PB7" pad="137"/>
<connect gate="B" pin="PB8" pad="139"/>
<connect gate="B" pin="PB9" pad="140"/>
<connect gate="B" pin="PC10" pad="111"/>
<connect gate="B" pin="PC11" pad="112"/>
<connect gate="B" pin="PC12" pad="113"/>
<connect gate="B" pin="PC6" pad="96"/>
<connect gate="B" pin="PC7" pad="97"/>
<connect gate="B" pin="PC8" pad="98"/>
<connect gate="B" pin="PC9" pad="99"/>
<connect gate="B" pin="PD0" pad="114"/>
<connect gate="B" pin="PD1" pad="115"/>
<connect gate="B" pin="PD10" pad="79"/>
<connect gate="B" pin="PD11" pad="80"/>
<connect gate="B" pin="PD12" pad="81"/>
<connect gate="B" pin="PD13" pad="82"/>
<connect gate="B" pin="PD14" pad="85"/>
<connect gate="B" pin="PD15" pad="86"/>
<connect gate="B" pin="PD2" pad="116"/>
<connect gate="B" pin="PD3" pad="117"/>
<connect gate="B" pin="PD4" pad="118"/>
<connect gate="B" pin="PD5" pad="119"/>
<connect gate="B" pin="PD6" pad="122"/>
<connect gate="B" pin="PD7" pad="123"/>
<connect gate="B" pin="PD8" pad="77"/>
<connect gate="B" pin="PD9" pad="78"/>
<connect gate="B" pin="PDR_ON" pad="143"/>
<connect gate="B" pin="PE0" pad="141"/>
<connect gate="B" pin="PE1" pad="142"/>
<connect gate="B" pin="PG10" pad="125"/>
<connect gate="B" pin="PG11" pad="126"/>
<connect gate="B" pin="PG12" pad="127"/>
<connect gate="B" pin="PG13" pad="128"/>
<connect gate="B" pin="PG14" pad="129"/>
<connect gate="B" pin="PG15" pad="132"/>
<connect gate="B" pin="PG2" pad="87"/>
<connect gate="B" pin="PG3" pad="88"/>
<connect gate="B" pin="PG4" pad="89"/>
<connect gate="B" pin="PG5" pad="90"/>
<connect gate="B" pin="PG6" pad="91"/>
<connect gate="B" pin="PG7" pad="92"/>
<connect gate="B" pin="PG8" pad="93"/>
<connect gate="B" pin="PG9" pad="124"/>
<connect gate="B" pin="VCAP_2" pad="106"/>
<connect gate="B" pin="VDD" pad="144"/>
<connect gate="B" pin="VDDUSB" pad="95"/>
<connect gate="B" pin="VDD_2" pad="84"/>
<connect gate="B" pin="VDD_3" pad="108"/>
<connect gate="B" pin="VDD_4" pad="121"/>
<connect gate="B" pin="VDD_5" pad="131"/>
<connect gate="B" pin="VSS" pad="130"/>
<connect gate="B" pin="VSS_2" pad="83"/>
<connect gate="B" pin="VSS_3" pad="94"/>
<connect gate="B" pin="VSS_4" pad="107"/>
<connect gate="B" pin="VSS_5" pad="120"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="STM32F746ZGT6G" constant="no"/>
<attribute name="MFR_NAME" value="STMicroelectronics" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LM2678S-5.0/NOPB" prefix="U">
<gates>
<gate name="A" symbol="LM2678S-12" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TS7B">
<connects>
<connect gate="A" pin="CB" pad="3"/>
<connect gate="A" pin="FB" pad="6"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="NC" pad="5"/>
<connect gate="A" pin="ON/~OFF" pad="7"/>
<connect gate="A" pin="TAB" pad="8"/>
<connect gate="A" pin="VIN" pad="2"/>
<connect gate="A" pin="VSW" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="LM2678S-5.0/NOPB" constant="no"/>
<attribute name="MFR_NAME" value="Texas Instruments" constant="no"/>
<attribute name="TYPE" value="LM2678S-12" constant="no"/>
</technology>
</technologies>
</device>
<device name="TS7B-M" package="TS7B-M">
<connects>
<connect gate="A" pin="CB" pad="3"/>
<connect gate="A" pin="FB" pad="6"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="NC" pad="5"/>
<connect gate="A" pin="ON/~OFF" pad="7"/>
<connect gate="A" pin="TAB" pad="8"/>
<connect gate="A" pin="VIN" pad="2"/>
<connect gate="A" pin="VSW" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="LM2678S-5.0/NOPB" constant="no"/>
<attribute name="MFR_NAME" value="Texas Instruments" constant="no"/>
<attribute name="TYPE" value="LM2678S-12" constant="no"/>
</technology>
</technologies>
</device>
<device name="TS7B-L" package="TS7B-L">
<connects>
<connect gate="A" pin="CB" pad="3"/>
<connect gate="A" pin="FB" pad="6"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="NC" pad="5"/>
<connect gate="A" pin="ON/~OFF" pad="7"/>
<connect gate="A" pin="TAB" pad="8"/>
<connect gate="A" pin="VIN" pad="2"/>
<connect gate="A" pin="VSW" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="LM2678S-5.0/NOPB" constant="no"/>
<attribute name="MFR_NAME" value="Texas Instruments" constant="no"/>
<attribute name="TYPE" value="LM2678S-12" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UUD1H150MCL1GS" prefix="C">
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="U2-I_NCH">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UUD1H150MCL1GS" constant="no"/>
<attribute name="MFR_NAME" value="Nichicon" constant="no"/>
</technology>
</technologies>
</device>
<device name="U2-I_NCH-M" package="U2-I_NCH-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UUD1H150MCL1GS" constant="no"/>
<attribute name="MFR_NAME" value="Nichicon" constant="no"/>
</technology>
</technologies>
</device>
<device name="U2-I_NCH-L" package="U2-I_NCH-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UUD1H150MCL1GS" constant="no"/>
<attribute name="MFR_NAME" value="Nichicon" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UWP1HR47MCL1GB" prefix="C">
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAP_UWF_4X5P4_NCH">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UWP1HR47MCL1GB" constant="no"/>
<attribute name="MFR_NAME" value="Nichicon" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAP_UWF_4X5P4_NCH-M" package="CAP_UWF_4X5P4_NCH-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UWP1HR47MCL1GB" constant="no"/>
<attribute name="MFR_NAME" value="Nichicon" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAP_UWF_4X5P4_NCH-L" package="CAP_UWF_4X5P4_NCH-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UWP1HR47MCL1GB" constant="no"/>
<attribute name="MFR_NAME" value="Nichicon" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VS-6TQ045S-M3" prefix="U">
<gates>
<gate name="A" symbol="VS-6TQ045S-M3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DPAK_045S-M3_VIS">
<connects>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="ANODE" pad="3"/>
<connect gate="A" pin="N/C" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="VS-6TQ045S-M3" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
<device name="DPAK_045S-M3_VIS-M" package="DPAK_045S-M3_VIS-M">
<connects>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="ANODE" pad="3"/>
<connect gate="A" pin="N/C" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="VS-6TQ045S-M3" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
<device name="DPAK_045S-M3_VIS-L" package="DPAK_045S-M3_VIS-L">
<connects>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="ANODE" pad="3"/>
<connect gate="A" pin="N/C" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="VS-6TQ045S-M3" constant="no"/>
<attribute name="MFR_NAME" value="Vishay" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2300LL-220-V-RC" prefix="L">
<gates>
<gate name="A" symbol="IND" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="IND_2300LL-V_59_66">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="2300LL-220-V-RC" constant="no"/>
<attribute name="MFR_NAME" value="Bourns Electronics" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UCZ1J181MNQ1MS" prefix="C">
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAP_UCD_12P5X13P5_NCH">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UCZ1J181MNQ1MS" constant="no"/>
<attribute name="MFR_NAME" value="Nichicon" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAP_UCD_12P5X13P5_NCH-M" package="CAP_UCD_12P5X13P5_NCH-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UCZ1J181MNQ1MS" constant="no"/>
<attribute name="MFR_NAME" value="Nichicon" constant="no"/>
</technology>
</technologies>
</device>
<device name="CAP_UCD_12P5X13P5_NCH-L" package="CAP_UCD_12P5X13P5_NCH-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UCZ1J181MNQ1MS" constant="no"/>
<attribute name="MFR_NAME" value="Nichicon" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GRM2195C1H103JA01D" prefix="C">
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="G-21_MUR">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="GRM2195C1H103JA01D" constant="no"/>
<attribute name="MFR_NAME" value="Murata" constant="no"/>
</technology>
</technologies>
</device>
<device name="G-21_MUR-M" package="G-21_MUR-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="GRM2195C1H103JA01D" constant="no"/>
<attribute name="MFR_NAME" value="Murata" constant="no"/>
</technology>
</technologies>
</device>
<device name="G-21_MUR-L" package="G-21_MUR-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="GRM2195C1H103JA01D" constant="no"/>
<attribute name="MFR_NAME" value="Murata" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LM2678S-3.3/NOPB" prefix="U">
<gates>
<gate name="A" symbol="LM2678S-12" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TS7B">
<connects>
<connect gate="A" pin="CB" pad="3"/>
<connect gate="A" pin="FB" pad="6"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="NC" pad="5"/>
<connect gate="A" pin="ON/~OFF" pad="7"/>
<connect gate="A" pin="TAB" pad="8"/>
<connect gate="A" pin="VIN" pad="2"/>
<connect gate="A" pin="VSW" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="LM2678S-3.3/NOPB" constant="no"/>
<attribute name="MFR_NAME" value="Texas Instruments" constant="no"/>
<attribute name="TYPE" value="LM2678S-12" constant="no"/>
</technology>
</technologies>
</device>
<device name="TS7B-M" package="TS7B-M">
<connects>
<connect gate="A" pin="CB" pad="3"/>
<connect gate="A" pin="FB" pad="6"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="NC" pad="5"/>
<connect gate="A" pin="ON/~OFF" pad="7"/>
<connect gate="A" pin="TAB" pad="8"/>
<connect gate="A" pin="VIN" pad="2"/>
<connect gate="A" pin="VSW" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="LM2678S-3.3/NOPB" constant="no"/>
<attribute name="MFR_NAME" value="Texas Instruments" constant="no"/>
<attribute name="TYPE" value="LM2678S-12" constant="no"/>
</technology>
</technologies>
</device>
<device name="TS7B-L" package="TS7B-L">
<connects>
<connect gate="A" pin="CB" pad="3"/>
<connect gate="A" pin="FB" pad="6"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="NC" pad="5"/>
<connect gate="A" pin="ON/~OFF" pad="7"/>
<connect gate="A" pin="TAB" pad="8"/>
<connect gate="A" pin="VIN" pad="2"/>
<connect gate="A" pin="VSW" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="LM2678S-3.3/NOPB" constant="no"/>
<attribute name="MFR_NAME" value="Texas Instruments" constant="no"/>
<attribute name="TYPE" value="LM2678S-12" constant="no"/>
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
<part name="U1" library="SSW-130-01-G-S" deviceset="STM32F746ZGT6G" device="LQFP144_STM-M"/>
<part name="U2" library="SSW-130-01-G-S" deviceset="LM2678S-5.0/NOPB" device="TS7B-M"/>
<part name="C1" library="SSW-130-01-G-S" deviceset="UUD1H150MCL1GS" device="U2-I_NCH-M"/>
<part name="C2" library="SSW-130-01-G-S" deviceset="UUD1H150MCL1GS" device="U2-I_NCH-M"/>
<part name="C3" library="SSW-130-01-G-S" deviceset="UUD1H150MCL1GS" device="U2-I_NCH-M"/>
<part name="C4" library="SSW-130-01-G-S" deviceset="UWP1HR47MCL1GB" device="CAP_UWF_4X5P4_NCH-M"/>
<part name="U3" library="SSW-130-01-G-S" deviceset="VS-6TQ045S-M3" device="DPAK_045S-M3_VIS-M"/>
<part name="L1" library="SSW-130-01-G-S" deviceset="2300LL-220-V-RC" device=""/>
<part name="C5" library="SSW-130-01-G-S" deviceset="UCZ1J181MNQ1MS" device="CAP_UCD_12P5X13P5_NCH-M"/>
<part name="C6" library="SSW-130-01-G-S" deviceset="UCZ1J181MNQ1MS" device="CAP_UCD_12P5X13P5_NCH-M"/>
<part name="C7" library="SSW-130-01-G-S" deviceset="GRM2195C1H103JA01D" device="G-21_MUR-M"/>
<part name="U4" library="SSW-130-01-G-S" deviceset="LM2678S-3.3/NOPB" device="TS7B-M"/>
<part name="U6" library="SSW-130-01-G-S" deviceset="VS-6TQ045S-M3" device="DPAK_045S-M3_VIS-M"/>
<part name="L2" library="SSW-130-01-G-S" deviceset="2300LL-220-V-RC" device=""/>
<part name="C8" library="SSW-130-01-G-S" deviceset="UCZ1J181MNQ1MS" device="CAP_UCD_12P5X13P5_NCH-M"/>
<part name="C9" library="SSW-130-01-G-S" deviceset="UCZ1J181MNQ1MS" device="CAP_UCD_12P5X13P5_NCH-M"/>
<part name="C10" library="SSW-130-01-G-S" deviceset="GRM2195C1H103JA01D" device="G-21_MUR-M"/>
<part name="C11" library="SSW-130-01-G-S" deviceset="UUD1H150MCL1GS" device="U2-I_NCH-M"/>
<part name="C12" library="SSW-130-01-G-S" deviceset="UUD1H150MCL1GS" device="U2-I_NCH-M"/>
<part name="C13" library="SSW-130-01-G-S" deviceset="UUD1H150MCL1GS" device="U2-I_NCH-M"/>
<part name="C14" library="SSW-130-01-G-S" deviceset="UWP1HR47MCL1GB" device="CAP_UWF_4X5P4_NCH-M"/>
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
<instance part="U1" gate="A" x="40.64" y="233.68" smashed="yes">
<attribute name="NAME" x="58.7756" y="242.7986" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="58.1406" y="240.2586" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="U2" gate="A" x="281.94" y="226.06" smashed="yes">
<attribute name="NAME" x="310.2356" y="235.1786" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="309.6006" y="232.6386" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="C1" gate="A" x="193.04" y="241.3" smashed="yes" rot="R270">
<attribute name="VALUE" x="187.5028" y="246.4562" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="195.1228" y="245.3894" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="C2" gate="A" x="200.66" y="241.3" smashed="yes" rot="R270">
<attribute name="VALUE" x="195.1228" y="246.4562" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="202.7428" y="245.3894" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="C3" gate="A" x="208.28" y="241.3" smashed="yes" rot="R270">
<attribute name="VALUE" x="202.7428" y="246.4562" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="210.3628" y="245.3894" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="C4" gate="A" x="215.9" y="241.3" smashed="yes" rot="R270">
<attribute name="VALUE" x="210.3628" y="246.4562" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="217.9828" y="245.3894" size="3.4798" layer="95" ratio="10" rot="SR270"/>
<attribute name="VALUE" x="210.3628" y="246.4562" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="217.9828" y="245.3894" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="U3" gate="A" x="264.16" y="190.5" smashed="yes" rot="R90">
<attribute name="NAME" x="265.2014" y="211.1756" size="2.0828" layer="95" ratio="6" rot="SR90"/>
<attribute name="VALUE" x="270.2814" y="152.1206" size="2.0828" layer="96" ratio="6" rot="SR90"/>
</instance>
<instance part="L1" gate="A" x="248.92" y="226.06" smashed="yes">
<attribute name="VALUE" x="246.9388" y="221.7928" size="3.4798" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="248.0056" y="229.4128" size="3.4798" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="C5" gate="A" x="243.84" y="226.06" smashed="yes" rot="R270">
<attribute name="VALUE" x="238.3028" y="231.2162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="245.9228" y="230.1494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
<attribute name="VALUE" x="238.3028" y="231.2162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="245.9228" y="230.1494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
<attribute name="VALUE" x="238.3028" y="231.2162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="245.9228" y="230.1494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="C6" gate="A" x="236.22" y="226.06" smashed="yes" rot="R270">
<attribute name="VALUE" x="230.6828" y="231.2162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="238.3028" y="230.1494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
<attribute name="VALUE" x="230.6828" y="231.2162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="238.3028" y="230.1494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
<attribute name="VALUE" x="230.6828" y="231.2162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="238.3028" y="230.1494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="C7" gate="A" x="279.4" y="220.98" smashed="yes" rot="R180">
<attribute name="VALUE" x="284.5562" y="226.5172" size="3.4798" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="283.4894" y="218.8972" size="3.4798" layer="95" ratio="10" rot="SR180"/>
<attribute name="VALUE" x="284.5562" y="226.5172" size="3.4798" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="283.4894" y="218.8972" size="3.4798" layer="95" ratio="10" rot="SR180"/>
<attribute name="VALUE" x="284.5562" y="226.5172" size="3.4798" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="283.4894" y="218.8972" size="3.4798" layer="95" ratio="10" rot="SR180"/>
<attribute name="VALUE" x="284.5562" y="226.5172" size="3.4798" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="283.4894" y="218.8972" size="3.4798" layer="95" ratio="10" rot="SR180"/>
</instance>
<instance part="U4" gate="A" x="281.94" y="142.24" smashed="yes">
<attribute name="NAME" x="310.2356" y="151.3586" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="309.6006" y="148.8186" size="2.0828" layer="96" ratio="6" rot="SR0"/>
<attribute name="NAME" x="310.2356" y="151.3586" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="309.6006" y="148.8186" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="U6" gate="A" x="264.16" y="106.68" smashed="yes" rot="R90">
<attribute name="NAME" x="265.2014" y="127.3556" size="2.0828" layer="95" ratio="6" rot="SR90"/>
<attribute name="VALUE" x="270.2814" y="68.3006" size="2.0828" layer="96" ratio="6" rot="SR90"/>
</instance>
<instance part="L2" gate="A" x="248.92" y="142.24" smashed="yes">
<attribute name="VALUE" x="246.9388" y="137.9728" size="3.4798" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="248.0056" y="145.5928" size="3.4798" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="C8" gate="A" x="243.84" y="142.24" smashed="yes" rot="R270">
<attribute name="VALUE" x="238.3028" y="147.3962" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="245.9228" y="146.3294" size="3.4798" layer="95" ratio="10" rot="SR270"/>
<attribute name="VALUE" x="238.3028" y="147.3962" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="245.9228" y="146.3294" size="3.4798" layer="95" ratio="10" rot="SR270"/>
<attribute name="VALUE" x="238.3028" y="147.3962" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="245.9228" y="146.3294" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="C9" gate="A" x="236.22" y="142.24" smashed="yes" rot="R270">
<attribute name="VALUE" x="230.6828" y="147.3962" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="238.3028" y="146.3294" size="3.4798" layer="95" ratio="10" rot="SR270"/>
<attribute name="VALUE" x="230.6828" y="147.3962" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="238.3028" y="146.3294" size="3.4798" layer="95" ratio="10" rot="SR270"/>
<attribute name="VALUE" x="230.6828" y="147.3962" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="238.3028" y="146.3294" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="C10" gate="A" x="279.4" y="137.16" smashed="yes" rot="R180">
<attribute name="VALUE" x="284.5562" y="142.6972" size="3.4798" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="283.4894" y="135.0772" size="3.4798" layer="95" ratio="10" rot="SR180"/>
<attribute name="VALUE" x="284.5562" y="142.6972" size="3.4798" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="283.4894" y="135.0772" size="3.4798" layer="95" ratio="10" rot="SR180"/>
<attribute name="VALUE" x="284.5562" y="142.6972" size="3.4798" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="283.4894" y="135.0772" size="3.4798" layer="95" ratio="10" rot="SR180"/>
<attribute name="VALUE" x="284.5562" y="142.6972" size="3.4798" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="283.4894" y="135.0772" size="3.4798" layer="95" ratio="10" rot="SR180"/>
</instance>
<instance part="C11" gate="A" x="193.04" y="137.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="187.5028" y="142.3162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="195.1228" y="141.2494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="C12" gate="A" x="200.66" y="137.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="195.1228" y="142.3162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="202.7428" y="141.2494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="C13" gate="A" x="208.28" y="137.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="202.7428" y="142.3162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="210.3628" y="141.2494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="C14" gate="A" x="215.9" y="137.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="210.3628" y="142.3162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="217.9828" y="141.2494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
<attribute name="VALUE" x="210.3628" y="142.3162" size="3.4798" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="217.9828" y="141.2494" size="3.4798" layer="95" ratio="10" rot="SR270"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="+12V" class="0">
<segment>
<pinref part="C3" gate="A" pin="1"/>
<pinref part="C2" gate="A" pin="1"/>
<wire x1="208.28" y1="241.3" x2="200.66" y2="241.3" width="0.1524" layer="91"/>
<pinref part="C1" gate="A" pin="1"/>
<wire x1="200.66" y1="241.3" x2="193.04" y2="241.3" width="0.1524" layer="91"/>
<junction x="200.66" y="241.3"/>
<wire x1="193.04" y1="241.3" x2="180.34" y2="241.3" width="0.1524" layer="91"/>
<junction x="193.04" y="241.3"/>
<label x="180.34" y="241.3" size="1.778" layer="95"/>
<pinref part="C4" gate="A" pin="1"/>
<wire x1="208.28" y1="241.3" x2="215.9" y2="241.3" width="0.1524" layer="91"/>
<junction x="208.28" y="241.3"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="VIN"/>
<wire x1="284.48" y1="223.52" x2="276.86" y2="223.52" width="0.1524" layer="91"/>
<label x="276.86" y="223.52" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="284.48" y1="139.7" x2="276.86" y2="139.7" width="0.1524" layer="91"/>
<label x="276.86" y="139.7" size="1.778" layer="95"/>
<pinref part="U4" gate="A" pin="VIN"/>
<junction x="284.48" y="139.7"/>
</segment>
<segment>
<pinref part="C13" gate="A" pin="1"/>
<pinref part="C12" gate="A" pin="1"/>
<wire x1="208.28" y1="137.16" x2="200.66" y2="137.16" width="0.1524" layer="91"/>
<pinref part="C11" gate="A" pin="1"/>
<wire x1="200.66" y1="137.16" x2="193.04" y2="137.16" width="0.1524" layer="91"/>
<junction x="200.66" y="137.16"/>
<wire x1="193.04" y1="137.16" x2="180.34" y2="137.16" width="0.1524" layer="91"/>
<junction x="193.04" y="137.16"/>
<label x="180.34" y="137.16" size="1.778" layer="95"/>
<pinref part="C14" gate="A" pin="1"/>
<wire x1="208.28" y1="137.16" x2="215.9" y2="137.16" width="0.1524" layer="91"/>
<junction x="208.28" y="137.16"/>
</segment>
</net>
<net name="P_GND" class="0">
<segment>
<pinref part="C3" gate="A" pin="2"/>
<pinref part="C2" gate="A" pin="2"/>
<wire x1="208.28" y1="233.68" x2="200.66" y2="233.68" width="0.1524" layer="91"/>
<pinref part="C1" gate="A" pin="2"/>
<wire x1="200.66" y1="233.68" x2="193.04" y2="233.68" width="0.1524" layer="91"/>
<junction x="200.66" y="233.68"/>
<wire x1="193.04" y1="233.68" x2="180.34" y2="233.68" width="0.1524" layer="91"/>
<junction x="193.04" y="233.68"/>
<label x="180.34" y="233.68" size="1.778" layer="95"/>
<pinref part="C4" gate="A" pin="2"/>
<wire x1="215.9" y1="233.68" x2="208.28" y2="233.68" width="0.1524" layer="91"/>
<junction x="208.28" y="233.68"/>
</segment>
<segment>
<pinref part="C5" gate="A" pin="2"/>
<wire x1="243.84" y1="218.44" x2="243.84" y2="193.04" width="0.1524" layer="91"/>
<pinref part="C6" gate="A" pin="2"/>
<wire x1="236.22" y1="218.44" x2="236.22" y2="193.04" width="0.1524" layer="91"/>
<wire x1="236.22" y1="193.04" x2="243.84" y2="193.04" width="0.1524" layer="91"/>
<pinref part="U3" gate="A" pin="ANODE"/>
<pinref part="U2" gate="A" pin="GND"/>
<wire x1="284.48" y1="218.44" x2="276.86" y2="218.44" width="0.1524" layer="91"/>
<wire x1="276.86" y1="218.44" x2="276.86" y2="193.04" width="0.1524" layer="91"/>
<wire x1="276.86" y1="193.04" x2="274.32" y2="193.04" width="0.1524" layer="91"/>
<label x="276.86" y="218.44" size="1.778" layer="95"/>
<wire x1="243.84" y1="193.04" x2="264.16" y2="193.04" width="0.1524" layer="91"/>
<junction x="243.84" y="193.04"/>
<junction x="274.32" y="193.04"/>
<pinref part="U3" gate="A" pin="N/C"/>
<wire x1="264.16" y1="193.04" x2="274.32" y2="193.04" width="0.1524" layer="91"/>
<junction x="264.16" y="193.04"/>
</segment>
<segment>
<pinref part="C8" gate="A" pin="2"/>
<wire x1="243.84" y1="134.62" x2="243.84" y2="109.22" width="0.1524" layer="91"/>
<pinref part="C9" gate="A" pin="2"/>
<wire x1="236.22" y1="134.62" x2="236.22" y2="109.22" width="0.1524" layer="91"/>
<wire x1="236.22" y1="109.22" x2="243.84" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U6" gate="A" pin="ANODE"/>
<wire x1="284.48" y1="134.62" x2="276.86" y2="134.62" width="0.1524" layer="91"/>
<wire x1="276.86" y1="134.62" x2="276.86" y2="109.22" width="0.1524" layer="91"/>
<wire x1="276.86" y1="109.22" x2="274.32" y2="109.22" width="0.1524" layer="91"/>
<label x="276.86" y="134.62" size="1.778" layer="95"/>
<wire x1="243.84" y1="109.22" x2="264.16" y2="109.22" width="0.1524" layer="91"/>
<junction x="243.84" y="109.22"/>
<junction x="274.32" y="109.22"/>
<pinref part="U6" gate="A" pin="N/C"/>
<wire x1="264.16" y1="109.22" x2="274.32" y2="109.22" width="0.1524" layer="91"/>
<junction x="264.16" y="109.22"/>
<pinref part="U4" gate="A" pin="GND"/>
<junction x="284.48" y="134.62"/>
</segment>
<segment>
<pinref part="C13" gate="A" pin="2"/>
<pinref part="C12" gate="A" pin="2"/>
<wire x1="208.28" y1="129.54" x2="200.66" y2="129.54" width="0.1524" layer="91"/>
<pinref part="C11" gate="A" pin="2"/>
<wire x1="200.66" y1="129.54" x2="193.04" y2="129.54" width="0.1524" layer="91"/>
<junction x="200.66" y="129.54"/>
<wire x1="193.04" y1="129.54" x2="180.34" y2="129.54" width="0.1524" layer="91"/>
<junction x="193.04" y="129.54"/>
<label x="180.34" y="129.54" size="1.778" layer="95"/>
<pinref part="C14" gate="A" pin="2"/>
<wire x1="215.9" y1="129.54" x2="208.28" y2="129.54" width="0.1524" layer="91"/>
<junction x="208.28" y="129.54"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="L1" gate="A" pin="2"/>
<pinref part="C5" gate="A" pin="1"/>
<wire x1="248.92" y1="226.06" x2="243.84" y2="226.06" width="0.1524" layer="91"/>
<pinref part="C6" gate="A" pin="1"/>
<wire x1="243.84" y1="226.06" x2="236.22" y2="226.06" width="0.1524" layer="91"/>
<junction x="243.84" y="226.06"/>
<label x="233.68" y="226.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="C7" gate="A" pin="1"/>
<pinref part="U2" gate="A" pin="CB"/>
<wire x1="279.4" y1="220.98" x2="284.48" y2="220.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SWITCH_OUT_5V" class="0">
<segment>
<pinref part="U2" gate="A" pin="FB"/>
<wire x1="345.44" y1="220.98" x2="350.52" y2="220.98" width="0.1524" layer="91"/>
<label x="347.98" y="220.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="2"/>
<pinref part="U2" gate="A" pin="VSW"/>
<wire x1="269.24" y1="226.06" x2="271.78" y2="226.06" width="0.1524" layer="91"/>
<pinref part="L1" gate="A" pin="1"/>
<wire x1="271.78" y1="226.06" x2="284.48" y2="226.06" width="0.1524" layer="91"/>
<wire x1="264.16" y1="226.06" x2="269.24" y2="226.06" width="0.1524" layer="91"/>
<junction x="269.24" y="226.06"/>
<pinref part="C7" gate="A" pin="2"/>
<wire x1="271.78" y1="220.98" x2="271.78" y2="226.06" width="0.1524" layer="91"/>
<junction x="271.78" y="226.06"/>
<label x="266.7" y="226.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="C10" gate="A" pin="1"/>
<wire x1="279.4" y1="137.16" x2="284.48" y2="137.16" width="0.1524" layer="91"/>
<pinref part="U4" gate="A" pin="CB"/>
<junction x="284.48" y="137.16"/>
</segment>
</net>
<net name="SWITCH_OUT_3.3V" class="0">
<segment>
<pinref part="U6" gate="A" pin="2"/>
<wire x1="269.24" y1="142.24" x2="271.78" y2="142.24" width="0.1524" layer="91"/>
<pinref part="L2" gate="A" pin="1"/>
<wire x1="271.78" y1="142.24" x2="284.48" y2="142.24" width="0.1524" layer="91"/>
<wire x1="264.16" y1="142.24" x2="269.24" y2="142.24" width="0.1524" layer="91"/>
<junction x="269.24" y="142.24"/>
<pinref part="C10" gate="A" pin="2"/>
<wire x1="271.78" y1="137.16" x2="271.78" y2="142.24" width="0.1524" layer="91"/>
<junction x="271.78" y="142.24"/>
<label x="266.7" y="142.24" size="1.778" layer="95"/>
<pinref part="U4" gate="A" pin="VSW"/>
<junction x="284.48" y="142.24"/>
</segment>
<segment>
<pinref part="U4" gate="A" pin="ON/~OFF"/>
<wire x1="345.44" y1="139.7" x2="353.06" y2="139.7" width="0.1524" layer="91"/>
<label x="345.44" y="139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="+3.3V" class="0">
<segment>
<pinref part="L2" gate="A" pin="2"/>
<pinref part="C8" gate="A" pin="1"/>
<wire x1="248.92" y1="142.24" x2="243.84" y2="142.24" width="0.1524" layer="91"/>
<pinref part="C9" gate="A" pin="1"/>
<wire x1="243.84" y1="142.24" x2="236.22" y2="142.24" width="0.1524" layer="91"/>
<junction x="243.84" y="142.24"/>
<label x="233.68" y="142.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VDD"/>
<wire x1="83.82" y1="233.68" x2="93.98" y2="233.68" width="0.1524" layer="91"/>
<label x="88.9" y="233.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VBAT"/>
<wire x1="43.18" y1="220.98" x2="33.02" y2="220.98" width="0.1524" layer="91"/>
<label x="33.02" y="220.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VDD_2"/>
<wire x1="43.18" y1="193.04" x2="33.02" y2="193.04" width="0.1524" layer="91"/>
<label x="33.02" y="193.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VDD_3"/>
<wire x1="43.18" y1="160.02" x2="33.02" y2="160.02" width="0.1524" layer="91"/>
<label x="33.02" y="160.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VDDA"/>
<wire x1="43.18" y1="152.4" x2="33.02" y2="152.4" width="0.1524" layer="91"/>
<label x="33.02" y="152.4" size="1.778" layer="95"/>
<pinref part="U1" gate="A" pin="VREF+"/>
<wire x1="43.18" y1="154.94" x2="33.02" y2="154.94" width="0.1524" layer="91"/>
<wire x1="33.02" y1="152.4" x2="33.02" y2="154.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VDD_4"/>
<wire x1="83.82" y1="149.86" x2="93.98" y2="149.86" width="0.1524" layer="91"/>
<label x="88.9" y="149.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VDD_5"/>
<wire x1="83.82" y1="182.88" x2="93.98" y2="182.88" width="0.1524" layer="91"/>
<label x="88.9" y="182.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VDD_6"/>
<wire x1="83.82" y1="208.28" x2="93.98" y2="208.28" width="0.1524" layer="91"/>
<label x="88.9" y="208.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="S_GND" class="0">
<segment>
<pinref part="U1" gate="A" pin="VSS_2"/>
<wire x1="43.18" y1="195.58" x2="33.02" y2="195.58" width="0.1524" layer="91"/>
<label x="33.02" y="195.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VSSA"/>
<wire x1="43.18" y1="157.48" x2="33.02" y2="157.48" width="0.1524" layer="91"/>
<label x="33.02" y="157.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VSS_3"/>
<wire x1="83.82" y1="147.32" x2="93.98" y2="147.32" width="0.1524" layer="91"/>
<label x="86.36" y="147.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VSS_4"/>
<wire x1="83.82" y1="180.34" x2="93.98" y2="180.34" width="0.1524" layer="91"/>
<label x="86.36" y="180.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VSS"/>
<wire x1="83.82" y1="205.74" x2="93.98" y2="205.74" width="0.1524" layer="91"/>
<label x="86.36" y="205.74" size="1.778" layer="95"/>
</segment>
</net>
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