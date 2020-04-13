%3.1%
A=[-2 -2.5 -0.5;1 0 0;0 1 0];
B=[1;0;0];
C=[0 1.5 1];
D=0;
sys=ss(A,B,C,D);
%initial(sys,[2 2 2]) 
[y,t,x]=initial(sys,[2 2 2],60) %60为指定时间
subplot(121)
plot(t,x)
subplot(122)
plot(t,y)

%3.2%
