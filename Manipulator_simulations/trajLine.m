%%Trajectory generation



%LINE
T1 = transl(0.6, -0.5, 0.0); % START
T2 = transl(0.4, 0.5, 0.2);	% DESTINATION

% %%For testing the singularity, but using the traj in Problem1
% T1 = transl(0.3, 0.3, 0.2);
% T2 = transl(0.3, 0.3, 0.3);


res=200;
TTl=ctraj(T1,T2,res);
qq=ikine6s(p560,TTl);

qq(:,4)=0;
qq(:,5)=0;
qq(:,6)=0;


%signal for simulink

tfin=2;
timegran=size(qq);
timestep=timegran(1);
t=linspace(0,tfin,timestep);
qqs=[t' qq];

qqs(:,6) = pi/4;