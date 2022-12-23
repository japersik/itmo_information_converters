data;

in_dir = "in/"
out_dir = "out/";
task = "1_r";
w = [0:1:400]
a_xx = [1000/360 0]
pr_xx = a_xx(1)*w+a_xx(2)

x_lable = '$\alpha,^\circ$'
y_lable = "$N$"

% Create figure
figure1 =  figure();
% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');
% Create plot
plot(w,pr_xx,'LineWidth',1.5,'Color', [0 0 0]);
plot(encoder_data(:,1),encoder_data(:,2),'o','LineWidth',1.5,'Color', [0 0 0]);

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

hold(axes1,'off');


saveas(gcf,out_dir+'task'+task+'_0.png')

getmax;