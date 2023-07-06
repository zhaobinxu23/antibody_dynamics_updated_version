clc
clear
x0(1) = 2.06e6;% self-antigens
x0(2) = 0.0002*1e6;% antibody_1_level
x0(3) = 0.006*1e6;% antibody_2_level
x0(4) = 0.0606*1e6;% antibody_3_level
x0(5) = 0.2417*1e6;% antibody_4_level
x0(6) = 0.3829*1e6;% antibody_5_level
x0(7) = 0.2417*1e6;% antibody_6_level
x0(8) = 0.0606*1e6;% antibody_7_level
x0(9) = 0.006*1e6;% antibody_8_level
x0(10) = 0.0002*1e6;% antibody_9_level
x0(11) = 0;% antibody_1_antigen_complex
x0(12) = 0;% antibody_2_antigen_complex
x0(13) = 0;% antibody_3_antigen_complex
x0(14) = 0;% antibody_4_antigen_complex
x0(15) = 0;% antibody_5_antigen_complex
x0(16) = 0;% antibody_6_antigen_complex
x0(17) = 0;% antibody_7_antigen_complex
x0(18) = 0;% antibody_8_antigen_complex
x0(19) = 0;% antibody_9_antigen_complex




para(1) = 1e-13; 
para(2) = 1e-12;
para(3) = 1e-11; 
para(4) = 1e-10;
para(5) = 1e-9; 
para(6) = 1e-8;
para(7) = 1e-7; 
para(8) = 1e-6;
para(9) = 1e-5;
para(10) = 1e-18;
para(11) = 0.7;
para(12) = 0.02;
para(13) = 0.5; 
para(14) = 0.2; %% 0 in figure5a, 0.2 in figure5b, 0.5 in figure5c

[t, y]=ode15s(@pathway_model_shp_new,[0 100],x0,[],para);

plot(t,y(:,2),'linewidth',2);
hold on
plot(t,y(:,3),'linewidth',2);
hold on
plot(t,y(:,4),'linewidth',2);
hold on
plot(t,y(:,5),'linewidth',2);
hold on
plot(t,y(:,6),'linewidth',2);
hold on
plot(t,y(:,7),'linewidth',2);
hold on
plot(t,y(:,8),'linewidth',2);
hold on
plot(t,y(:,9),'linewidth',2);
hold on
plot(t,y(:,10),'linewidth',2);
hold on
plot(t,y(:,11),'linewidth',2);
% 


