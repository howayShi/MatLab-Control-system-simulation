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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.3%
sys=tf([5 8],[1 4 6 3 3]);
step(sys)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.4%
s=tf('s')
G=147.3*(s+1.5)/((s^2+2*s+5)*(s^2+10*s+26)*(s+1.7));
pzmap(G);%绘制零极点图。[p,z]=pzmap（G）求主导极点
GG=147.3*1.5/(1.7*26)/(s^2+2*s+5)%利用主导极点对系统进行降阶处理
setp(G,'b',GG,'r--',10)%单位阶跃响应绘制
