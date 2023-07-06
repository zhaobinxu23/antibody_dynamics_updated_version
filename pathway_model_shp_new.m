function F=pathway_model_shp_new(t,y,para)
% the rate constant parameters include 9 antibodies

F(1,1) = 0; %% antigens
y(2) = max(y(2),0);
y(3) = max(y(3),0);
y(4) = max(y(4),0);
y(5) = max(y(5),0);
y(6) = max(y(6),0);
y(7) = max(y(7),0);
y(8) = max(y(8),0);
y(9) = max(y(9),0);
y(10) = max(y(10),0);
y(11) = max(y(11),0);
y(12) = max(y(12),0);
y(13) = max(y(13),0);
y(14) = max(y(14),0);
y(15) = max(y(15),0);
y(16) = max(y(16),0);
y(17) = max(y(17),0);
y(18) = max(y(18),0);
y(19) = max(y(19),0);

F(2,1) = -para(1)*y(1)*y(2) + para(10)*y(11) - para(12)*y(2) + para(11)*y(11)*(1-para(14)+(para(14))*0.0002) + para(11)*y(12)*para(14)*0.9998; %% antibody_1
F(3,1) = -para(2)*y(1)*y(3) + para(10)*y(12) - para(12)*y(3) + para(11)*y(12)*(1-para(14)+(para(14))*0.006) + para(11)*y(11)*para(14)*0.9998 + para(11)*y(13)*para(14)*0.0062; %% antibody_2
F(4,1) = -para(3)*y(1)*y(4) + para(10)*y(13) - para(12)*y(4) + para(11)*y(13)*(1-para(14)+(para(14))*0.0606) + para(11)*y(12)*para(14)*0.9938 + para(11)*y(14)*para(14)*0.0668;%% antibody_3
F(5,1) = -para(4)*y(1)*y(5) + para(10)*y(14) - para(12)*y(5) + para(11)*y(14)*(1-para(14)+(para(14))*0.2417) + para(11)*y(13)*para(14)*0.9332 + para(11)*y(15)*para(14)*0.3085;%% antibody_4
F(6,1) = -para(5)*y(1)*y(6) + para(10)*y(15) - para(12)*y(6) + para(11)*y(15)*(1-para(14)+(para(14))*0.3829) + para(11)*y(14)*para(14)*0.6915 + para(11)*y(16)*para(14)*0.6915;%% antibody_5
F(7,1) = -para(10)*y(1)*y(7) + para(10)*y(16) - para(12)*y(7) + para(11)*y(16)*(1-para(14)+(para(14))*0.2417) + para(11)*y(15)*para(14)*0.3085 + para(11)*y(17)*para(14)*0.9332;%% antibody_6
F(8,1) = -para(7)*y(1)*y(8) + para(10)*y(17) - para(12)*y(8) + para(11)*y(17)*(1-para(14)+(para(14))*0.0606) + para(11)*y(16)*para(14)*0.0668 + para(11)*y(18)*para(14)*0.9938;%% antibody_7
F(9,1) = -para(8)*y(1)*y(9) + para(10)*y(18) - para(12)*y(9) + para(11)*y(18)*(1-para(14)+(para(14))*0.006) + para(11)*y(17)*para(14)*0.0062 + para(11)*y(19)*para(14)*0.9998;%% antibody_8
F(10,1) = -para(9)*y(1)*y(10) + para(10)*y(19) - para(12)*y(10) + para(11)*y(19)*(1-para(14)+(para(14))*0.0002) + para(11)*y(18)*para(14)*0.0002;%% antibody_9

F(11,1) = para(1)*y(1)*y(2) - para(10)*y(11) - para(13)*y(11);%% antibody_1_complex
F(12,1) = para(2)*y(1)*y(3) - para(10)*y(12) - para(13)*y(12);%% antibody_2_complex
F(13,1) = para(3)*y(1)*y(4) - para(10)*y(13) - para(13)*y(13);%% antibody_3_complex
F(14,1) = para(4)*y(1)*y(5) - para(10)*y(14) - para(13)*y(14);%% antibody_4_complex
F(15,1) = para(5)*y(1)*y(6) - para(10)*y(15) - para(13)*y(15);%% antibody_5_complex
F(16,1) = para(6)*y(1)*y(7) - para(10)*y(16) - para(13)*y(16);%% antibody_6_complex
F(17,1) = para(7)*y(1)*y(8) - para(10)*y(17) - para(13)*y(17);%% antibody_7_complex
F(18,1) = para(8)*y(1)*y(9) - para(10)*y(18) - para(13)*y(18);%% antibody_8_complex
F(19,1) = para(9)*y(1)*y(10) - para(10)*y(19) - para(13)*y(19);%% antibody_9_complex
end




%created by the program testexcel_IL
