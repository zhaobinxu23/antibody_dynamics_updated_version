clc
clear
x0(1) = 2e6;% self-antigens
x0(2) = 0;% antibody_1_level
x0(3) = 0;% antibody_2_level
x0(4) = 0;% antibody_3_level
x0(5) = 0;% antibody_4_level
x0(6) = 0;% antibody_5_level
x0(7) = 0;% antibody_6_level
x0(8) = 0;% antibody_7_level
x0(9) = 0;% antibody_8_level
x0(10) = 1e5;% antibody_9_level
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
para(11) = 0.6;
para(12) = 0.02;
para(13) = 0.5; 
para(14) = 0.0; %% mutation_rate 0.4£¬0.3£¬0.2£¬0.1

[t, y]=ode15s(@pathway_model_shp_new,[0 1000],x0,[],para);

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
% hold on
% plot(t,y(:,11),'linewidth',2);
% 
data1_new = interp1(t,y(:,2),[0:10:1000]);
data2_new = interp1(t,y(:,3),[0:10:1000]);
data3_new = interp1(t,y(:,4),[0:10:1000]);
data4_new = interp1(t,y(:,5),[0:10:1000]);
data5_new = interp1(t,y(:,6),[0:10:1000]);
data6_new = interp1(t,y(:,7),[0:10:1000]);
data7_new = interp1(t,y(:,8),[0:10:1000]);
data8_new = interp1(t,y(:,9),[0:10:1000]);
data9_new = interp1(t,y(:,10),[0:10:1000]);

overall = data1_new(101) + data2_new(101)+ data3_new(101)+ data4_new(101)+ data5_new(101)+ data6_new(101)+ data7_new(101)+ data8_new(101)+ data9_new(101);
propo(1) = data1_new(101)/overall;
propo(2) = data2_new(101)/overall;
propo(3) = data3_new(101)/overall;
propo(4) = data4_new(101)/overall;
propo(5) = data5_new(101)/overall;
propo(6) = data6_new(101)/overall;
propo(7) = data7_new(101)/overall;
propo(8) = data8_new(101)/overall;
propo(9) = data9_new(101)/overall;
% overall_complex = data6_new(1101) + data7_new(1101)+ data8_new(1101)+ data9_new(1101)+ data10_new(1101);

