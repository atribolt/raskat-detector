G04*
G04  File:            ADC.GTS, Mon Aug 08 17:16:58 2022*
G04  Source:          P-CAD 2006 PCB, Version 19.02.958, (D:\Proj\ThunderRegistor\sch\adc.PCB)*
G04  Format:          Gerber Format (RS-274-D), ASCII*
G04*
G04  Format Options:  Absolute Positioning*
G04                   Leading-Zero Suppression*
G04                   Scale Factor 1:1*
G04                   NO Circular Interpolation*
G04                   Inch Units*
G04                   Numeric Format: 5.3 (XXXXX.XXX)*
G04                   G54 NOT Used for Aperture Change*
G04                   Apertures Embedded*
G04*
G04  File Options:    Offset = (0.0mil,0.0mil)*
G04                   Drill Symbol Size = 80.0mil*
G04                   No Pad/Via Holes*
G04*
G04  File Contents:   Pads*
G04                   No Vias*
G04                   No Designators*
G04                   No Types*
G04                   No Values*
G04                   No Drill Symbols*
G04                   Top Mask*
G04*
%INADC.GTS*%
%ICAS*%
%MOIN*%
G04*
G04  Aperture MACROs for general use --- invoked via D-code assignment *
G04*
G04  General MACRO for flashed round with rotation and/or offset hole *
%AMROTOFFROUND*
1,1,$1,0.0000,0.0000*
1,0,$2,$3,$4*%
G04*
G04  General MACRO for flashed oval (obround) with rotation and/or offset hole *
%AMROTOFFOVAL*
21,1,$1,$2,0.0000,0.0000,$3*
1,1,$4,$5,$6*
1,1,$4,0-$5,0-$6*
1,0,$7,$8,$9*%
G04*
G04  General MACRO for flashed oval (obround) with rotation and no hole *
%AMROTOVALNOHOLE*
21,1,$1,$2,0.0000,0.0000,$3*
1,1,$4,$5,$6*
1,1,$4,0-$5,0-$6*%
G04*
G04  General MACRO for flashed rectangle with rotation and/or offset hole *
%AMROTOFFRECT*
21,1,$1,$2,0.0000,0.0000,$3*
1,0,$4,$5,$6*%
G04*
G04  General MACRO for flashed rectangle with rotation and no hole *
%AMROTRECTNOHOLE*
21,1,$1,$2,0.0000,0.0000,$3*%
G04*
G04  General MACRO for flashed rounded-rectangle *
%AMROUNDRECT*
21,1,$1,$2-$4,0.0000,0.0000,$3*
21,1,$1-$4,$2,0.0000,0.0000,$3*
1,1,$4,$5,$6*
1,1,$4,$7,$8*
1,1,$4,0-$5,0-$6*
1,1,$4,0-$7,0-$8*
1,0,$9,$10,$11*%
G04*
G04  General MACRO for flashed rounded-rectangle with rotation and no hole *
%AMROUNDRECTNOHOLE*
21,1,$1,$2-$4,0.0000,0.0000,$3*
21,1,$1-$4,$2,0.0000,0.0000,$3*
1,1,$4,$5,$6*
1,1,$4,$7,$8*
1,1,$4,0-$5,0-$6*
1,1,$4,0-$7,0-$8*%
G04*
G04  General MACRO for flashed regular polygon *
%AMREGPOLY*
5,1,$1,0.0000,0.0000,$2,$3+$4*
1,0,$5,$6,$7*%
G04*
G04  General MACRO for flashed regular polygon with no hole *
%AMREGPOLYNOHOLE*
5,1,$1,0.0000,0.0000,$2,$3+$4*%
G04*
G04  General MACRO for target *
%AMTARGET*
6,0,0,$1,$2,$3,4,$4,$5,$6*%
G04*
G04  General MACRO for mounting hole *
%AMMTHOLE*
1,1,$1,0,0*
1,0,$2,0,0*
$1=$1-$2*
$1=$1/2*
21,1,$2+$1,$3,0,0,$4*
21,1,$3,$2+$1,0,0,$4*%
G04*
G04*
G04  D10 : "Ellipse X0.254mm Y0.254mm H0.000mm 0.0deg (0.000mm,0.000mm) Draw"*
G04  Disc: OuterDia=0.0100*
%ADD10C, 0.0100*%
G04  D11 : "Ellipse X0.050mm Y0.050mm H0.000mm 0.0deg (0.000mm,0.000mm) Draw"*
G04  Disc: OuterDia=0.0020*
%ADD11C, 0.0020*%
G04  D12 : "Ellipse X0.200mm Y0.200mm H0.000mm 0.0deg (0.000mm,0.000mm) Draw"*
G04  Disc: OuterDia=0.0079*
%ADD12C, 0.0079*%
G04  D13 : "Ellipse X4.000mm Y4.000mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Disc: OuterDia=0.1575*
%ADD13C, 0.1575*%
G04  D14 : "Ellipse X4.100mm Y4.100mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Disc: OuterDia=0.1614*
%ADD14C, 0.1614*%
G04  D15 : "Ellipse X1.524mm Y1.524mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Disc: OuterDia=0.0600*
%ADD15C, 0.0600*%
G04  D16 : "Ellipse X1.624mm Y1.624mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Disc: OuterDia=0.0639*
%ADD16C, 0.0639*%
G04  D17 : "Rectangle X0.762mm Y0.380mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Rectangular: DimX=0.0300, DimY=0.0150, Rotation=0.0, OffsetX=0.0000, OffsetY=0.0000, HoleDia=0.0000 *
%ADD17R, 0.0300 X0.0150*%
G04  D18 : "Rectangle X0.862mm Y0.480mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Rectangular: DimX=0.0339, DimY=0.0189, Rotation=0.0, OffsetX=0.0000, OffsetY=0.0000, HoleDia=0.0000 *
%ADD18R, 0.0339 X0.0189*%
G04  D19 : "Rectangle X1.000mm Y1.200mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Rectangular: DimX=0.0394, DimY=0.0472, Rotation=0.0, OffsetX=0.0000, OffsetY=0.0000, HoleDia=0.0000 *
%ADD19R, 0.0394 X0.0472*%
G04  D20 : "Rectangle X1.200mm Y1.000mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Rectangular: DimX=0.0472, DimY=0.0394, Rotation=0.0, OffsetX=0.0000, OffsetY=0.0000, HoleDia=0.0000 *
%ADD20R, 0.0472 X0.0394*%
G04  D21 : "Rectangle X1.100mm Y1.300mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Rectangular: DimX=0.0433, DimY=0.0512, Rotation=0.0, OffsetX=0.0000, OffsetY=0.0000, HoleDia=0.0000 *
%ADD21R, 0.0433 X0.0512*%
G04  D22 : "Rectangle X1.300mm Y1.100mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Rectangular: DimX=0.0512, DimY=0.0433, Rotation=0.0, OffsetX=0.0000, OffsetY=0.0000, HoleDia=0.0000 *
%ADD22R, 0.0512 X0.0433*%
G04  D23 : "Rectangle X2.000mm Y1.800mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Rectangular: DimX=0.0787, DimY=0.0709, Rotation=0.0, OffsetX=0.0000, OffsetY=0.0000, HoleDia=0.0000 *
%ADD23R, 0.0787 X0.0709*%
G04  D24 : "Rectangle X2.100mm Y1.900mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Rectangular: DimX=0.0827, DimY=0.0748, Rotation=0.0, OffsetX=0.0000, OffsetY=0.0000, HoleDia=0.0000 *
%ADD24R, 0.0827 X0.0748*%
G04  D25 : "Ellipse X0.700mm Y0.700mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Disc: OuterDia=0.0276*
%ADD25C, 0.0276*%
G04  D26 : "Ellipse X0.800mm Y0.800mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  Disc: OuterDia=0.0315*
%ADD26C, 0.0315*%
G04  D27 : "Rounded Rectangle X0.700mm Y0.700mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  RoundRct: DimX=0.0276, DimY=0.0276, CornerRad=0.0069, Rotation=0.0, OffsetX=0.0000, OffsetY=0.0000, HoleDia=0.0000 *
%ADD27ROUNDRECTNOHOLE, 0.0276 X0.0276 X0.0 X0.0138 X-0.0069 X-0.0069 X-0.0069 X0.0069*%
G04  D28 : "Rounded Rectangle X0.800mm Y0.800mm H0.000mm 0.0deg (0.000mm,0.000mm) Flash"*
G04  RoundRct: DimX=0.0315, DimY=0.0315, CornerRad=0.0079, Rotation=0.0, OffsetX=0.0000, OffsetY=0.0000, HoleDia=0.0000 *
%ADD28ROUNDRECTNOHOLE, 0.0315 X0.0315 X0.0 X0.0157 X-0.0079 X-0.0079 X-0.0079 X0.0079*%
G04  Disc: OuterDia=0.0020*
%ADD29C, 0.0020*%
G04*
%FSLAX53Y53*%
%SFA1B1*%
%OFA0.0000B0.0000*%
G04*
G70*
G90*
G01*
D2*
%LNTop Mask*%
D14*
X149Y153D3*
D22*
X470Y1659D3*
Y1738D3*
D21*
X572Y1574D3*
X493D3*
D22*
X732Y1034D3*
Y1113D3*
X832D3*
Y1034D3*
X707Y1259D3*
Y1338D3*
D21*
X747Y1411D3*
X668D3*
D22*
X1082Y1113D3*
Y1034D3*
D21*
X1043Y1974D3*
X1122D3*
D22*
X1282Y1113D3*
Y1034D3*
X1382Y1113D3*
Y1034D3*
X170Y1472D3*
Y1551D3*
D14*
X149Y2637D3*
D22*
X545Y1001D3*
Y922D3*
D21*
X722Y924D3*
X643D3*
X747Y1486D3*
X668D3*
X1122Y1849D3*
X1043D3*
X1384Y936D3*
X1306D3*
D22*
X632Y1034D3*
Y1113D3*
X932D3*
Y1034D3*
X1182Y1113D3*
Y1034D3*
X570Y1659D3*
Y1738D3*
D14*
X1807Y153D3*
D21*
X321Y1225D3*
X242D3*
D22*
X582Y1488D3*
Y1409D3*
D24*
X750Y1974D3*
X907D3*
X750Y1766D3*
X907D3*
D14*
X1807Y2637D3*
D18*
X1207Y1502D3*
Y1528D3*
Y1554D3*
Y1579D3*
Y1605D3*
Y1630D3*
Y1656D3*
Y1681D3*
Y1477D3*
Y1349D3*
Y1374D3*
Y1400D3*
Y1426D3*
X926Y1681D3*
Y1656D3*
Y1630D3*
Y1605D3*
Y1579D3*
Y1554D3*
Y1528D3*
Y1502D3*
Y1477D3*
Y1426D3*
Y1400D3*
Y1374D3*
Y1349D3*
X1207Y1451D3*
X926D3*
D16*
X1807Y2349D3*
Y2149D3*
Y2049D3*
Y1849D3*
Y1749D3*
Y1149D3*
Y949D3*
Y649D3*
Y549D3*
Y1949D3*
Y2249D3*
Y449D3*
Y749D3*
Y1049D3*
D24*
X132Y1074D3*
Y1374D3*
X432Y1074D3*
Y1224D3*
Y1374D3*
D02M02*
