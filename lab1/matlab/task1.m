data;

in_dir = "in/"
out_dir = "out/";
task = "1_r";
w = [0:1:400]
a_xx = polyfit(r_xx(:,1), r_xx(:,2), 1)
pr_xx = a_xx(1)*w+a_xx(2)
a_200 = polyfit(r_200(:,1), r_200(:,2), 1)
pr_200 = a_200(1)*w+a_200(2)
a_400 = polyfit(r_400(:,1), r_400(:,2), 1)
pr_400 = a_400(1)*w+a_400(2)
a_600 = polyfit(r_600(:,1), r_600(:,2), 1)
pr_600 = a_600(1)*w+a_600(2)
a_800 = polyfit(r_800(:,1), r_800(:,2), 1)
pr_800 = a_800(1)*w+a_800(2)
a_1000 = polyfit(r_1000(:,1), r_1000(:,2), 1)
pr_1000 = a_1000(1)*w+a_1000(2)
x_lable = '$\omega,rad/s$'
y_lable = "$Voltage, V$"
legenda = ["$R=--,\Omega$" "$R=200,\Omega$" "$R=400,\Omega$" "$R=600,\Omega$" "$R=800,\Omega$" "$R=1000,\Omega$"]'
% Create figure
figure1 =  figure();
% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');
% Create plot
plot(w,pr_xx,'LineWidth',1.5,'Color', [0.1 0.5 1]);
plot(w,pr_200,'LineWidth',1.5,'Color', [1 0 0]);
plot(w,pr_400,'LineWidth',1.5,'Color', [0 1 0]);
plot(w,pr_600,'LineWidth',1.5,'Color', [0 0 1]);
plot(w,pr_800,'LineWidth',1.5,'Color', [0.5 0.5 0.5]);
plot(w,pr_1000,'LineWidth',1.5,'Color', [0.2 0.2 0.2]);
plot(r_xx(:,1),r_xx(:,2),'o','LineWidth',1.5,'Color', [0.1 0.5  1]);
plot(r_200(:,1),r_200(:,2),'o','LineWidth',1.5,'Color', [1 0 0]);
plot(r_400(:,1),r_400(:,2),'o','LineWidth',1.5,'Color', [0 1 0]);
plot(r_600(:,1),r_600(:,2),'o','LineWidth',1.5,'Color', [0 0 1]);
plot(r_800(:,1),r_800(:,2),'o','LineWidth',1.5,'Color', [0.5 0.5 0.5]);
plot(r_1000(:,1),r_1000(:,2),'o','LineWidth',1.5,'Color', [0.2 0.2 0.2]);

% Create ylabel
ylabel(y_lable,...
'LineStyle','none',...
'HorizontalAlignment','center',...
'Interpreter','latex');
 
% Create xlabel
xlabel(x_lable,'HorizontalAlignment','center','Interpreter','latex');
 
% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 10]);
% Set the remaining axes properties
set(axes1,'FontSize',14,'GridAlpha',0.5,'GridColor',[0 0 0],'XColor',...
[0 0 0],'XGrid','on','XMinorGrid','on','YColor',[0 0 0],'YGrid','on',...
'YMinorGrid','on','ZColor',[0 0 0]);

legend(legenda,'Interpreter','latex','Location','best')
hold(axes1,'off');


saveas(gcf,out_dir+'task'+task+'_0.png')

getmax;