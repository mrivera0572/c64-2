1 rem ***** start *****
2 t1=ticks: t2=0
3 ? "=> data initialization"

20 rem ***** data *****
21 v=0: f=0: ne=0
22 rx=0:ry=0: x=0:y=0:z=0: cx=0:cy=0:cz=0: tx=0:ty=0:tz=0
23 p1=0: p2=0: p3=0: p4=0: p5=0: p6=0: p7=0: p8=0: p9=0
24 fa=10
25 dim m1(8): dim m2(8)
26 dim d1(8): dim d2(8): dim d3(8) 
27   d1(0)=1: d1(1)=0:   d1(2)=0
28   d1(3)=0: d1(4)=100: d1(5)=100
29   d1(6)=0: d1(7)=100: d1(8)=100
30   d2(0)=100: d2(1)=0:  d2(2)=100
31   d2(3)=0:   d2(4)=1:  d2(5)=0
32   d2(6)=100: d2(7)=0:  d2(8)=100
33   d3(0)=100: d3(1)=100:  d3(2)=0
34   d3(3)=100: d3(4)=100:  d3(5)=0
35   d3(6)=0:   d3(7)=0:    d3(8)=1
36 dim d4(2): dim d5(2)
37   d4(0)=0: d4(1)=0: d4(2)=0
38   d5(0)=0: d5(2)=0: d5(2)=0
39 dim ms(8)
40   ms(0)=0: ms(1)=0: ms(2)=0
41   ms(3)=0: ms(4)=0: ms(5)=0
42   ms(6)=0: ms(7)=0: ms(8)=0
43 dim mv(2)
44 dz=0: nx=0: ny=0: ch=160
45 re=0
46 px=250: py=40: pz=1500

49 gosub 900: goto 1000

50 rem ***** getT *****
51 if f=0 then
52   ne=sin(v)
53 : 
60 if f=1 then
61   ne=cos(v)
62 :
70 return

100 rem ***** transform3into2_new *****
101 f=1: v=tx: gosub 50: d1(4)=ne
299 return

900 rem ****** ticks ******
901 t2 = ticks
902 ? "took:" int((t2-t1)/60*100) " ms"
903 return

1000 rem ****** main ******
1001 ? "=> starting"
1002 ? " => tick"
1003 px=250: py=40: pz=1500
1004 cx=200: cy=335: cz=-250
1005 tx=0: ty=0: tz=0
1006 gosub 100
1007 gosub 900
1008 :

1998 ? "=> finish"
1999 end
