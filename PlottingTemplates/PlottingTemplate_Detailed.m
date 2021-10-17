% INITIAL HOUSE-KEEPING STUFF

% clear->erase workspace variables, clc->clean command window, close all-> close all currently open figures
clear; clc; close all;

% The following file has useful defaults for: Font, Colors etc.
% Have a look at this file. You can customize it according to your needs.
PS = PLOT_STANDARDS();

%========================================================
% GENERATE DATA TO PLOT

% Create variable
total_data_points = 70;
x = linspace(0, pi, total_data_points);
% Generate functions
y1 = sin(x);
y2 = cos(x);
y3 = (x/pi);
y4 = (x/pi).^2;
y5 = exp(x/pi);
y6 = log(1+x);


%========================================================
% CREATE FIGURE AND PLOTS

figure(1);
fig1_comps.fig = gcf;
hold on
fig1_comps.p1 = plot(x, y1);
fig1_comps.p2 = line(x, y2);
fig1_comps.p3 = plot(x, y3);
fig1_comps.p4 = plot(x, y4);
fig1_comps.p5 = plot(x, y5);
fig1_comps.p6 = plot(x, y6);
% Create semitransparent area plots
fig1_comps.p7 = area(x, y4);

% grid on


%========================================================
% ADJUST LINE PROPERTIES (FUNCTIONAL + AESTHETICS)

set(fig1_comps.p1, 'Color', PS.Blue1, 'LineWidth', 2);
set(fig1_comps.p2, 'LineStyle', 'none', 'Marker', '.', 'MarkerSize', 8, 'MarkerEdgeColor', PS.Green3, 'MarkerFaceColor', PS.Green3);
set(fig1_comps.p3, 'LineStyle', '--', 'Color', PS.Red3, 'LineWidth', 2);
set(fig1_comps.p4, 'LineStyle', '-.', 'Color', PS.Orange2, 'LineWidth', 2);
set(fig1_comps.p5, 'LineStyle', 'none', 'Marker', 'o', 'MarkerSize', 4, 'MarkerEdgeColor', PS.Black, 'MarkerFaceColor', PS.Grey1);
set(fig1_comps.p6, 'LineStyle', 'none', 'Marker', 'x', 'LineWidth', 1, 'Color', PS.Blue4, 'MarkerSize', 4, 'MarkerEdgeColor', PS.Blue4, 'MarkerFaceColor', PS.Blue4);
% area plot properties - alpha sets the transparency
set(fig1_comps.p7, 'FaceColor', PS.Yellow2, 'FaceAlpha', .3, 'EdgeAlpha', 0);


%========================================================
% ADD LABELS

fig1_comps.plotTitle = title('Template for Beautiful Plots');
fig1_comps.plotXLabel = xlabel('x axis data');
fig1_comps.plotYLabel = ylabel('y axis data');


%========================================================
% ADD LEGEND

% (For LaTeX add -> ,'Interpreter','latex'), use $$ latex $$ for larger font
% size
fig1_comps.plotLegend = legend([fig1_comps.p1, fig1_comps.p2, fig1_comps.p3, ...
    fig1_comps.p4, fig1_comps.p5, fig1_comps.p6, fig1_comps.p7], '$$sin(x)$$', '$$cos(x)$$', ...
    '$$\frac{x}{\pi}$$', '\Big($$\frac{x}{\pi}\Big)^2$$', ...
    '$$exp\Big({\frac{x}{\pi}}\Big)$$', '$$log(1+x)$$', ...
    'Area\Big($$\frac{x}{\pi}\Big)^2$$', 'Interpreter', 'latex');
% Legend Properties
legendX0 = .7; legendY0 = .08; legendWidth = .3; legendHeight = .3;
set(fig1_comps.plotLegend, 'position', [legendX0, legendY0, legendWidth, ...
    legendHeight], 'Box', 'on');
set(fig1_comps.plotLegend, 'FontSize', PS.LegendFontSize, 'LineWidth', 1.5, ...
    'EdgeColor', PS.Red4);


%========================================================
% ADD TEXT ON THE PLOT

num1 = 2;
num2 = 10;
% set position of the text
xpos = .5;
ypos = 2.5;
% here we put 2 backslash \\pi, to espcape the backslash and interpret it
% as for literal character
text_string = sprintf('What a Beautiful Plot! $$\\frac{x}{\\pi}$$ num1 = %d, num2 = %d', num1, num2);
fig1_comps.plotText = text(xpos, ypos, text_string, 'Interpreter', 'latex', 'Color', PS.Black, 'FontSize', PS.PlotTextFontSize);


%========================================================
% ADJUST FONT

set(gca, 'FontName', PS.DefaultFont, 'FontWeight', 'bold');
set([fig1_comps.plotTitle, fig1_comps.plotXLabel, fig1_comps.plotYLabel], 'FontName', PS.DefaultFont);
set(fig1_comps.plotText, 'FontName', PS.DefaultFont);
set(gca, 'FontSize', PS.AxisNumbersFontSize);
set([fig1_comps.plotXLabel, fig1_comps.plotYLabel], 'FontSize', PS.AxisFontSize);
set(fig1_comps.plotText, 'FontSize', PS.AxisFontSize);
set(fig1_comps.plotTitle, 'FontSize', PS.TitleFontSize, 'FontWeight' , 'bold');


%========================================================
% ADJUST AXES PROPERTIES

set(gca, 'Box', 'on', 'TickDir', 'out', 'TickLength', [.01 .01], ...
    'XMinorTick', 'on', 'YMinorTick', 'on', 'YGrid', 'off', ...
    'XColor', [.3 .3 .3], 'YColor', [.3 .3 .3], 'YTick', 0:1:25, ...
    'LineWidth', 1.5);
% Change axis properties
ax = gca;
ax.XAxis.Limits = [min(x), max(x)];
% ax.XAxis.TickValues = x(1:1:end);
ax.XAxis.TickLabelRotation = 30;
ax.XAxis.FontWeight = 'bold';
ax.XAxis.FontAngle = 'italic';
ax.YAxis.TickLabelFormat = '$%,.0fM';
% Set the axes to go through the origin
set(gca,'XAxisLocation', 'bottom', 'YAxisLocation', 'left');


%========================================================
% ANNOTATION

% merged arrow
drawArrow = annotation('arrow', 'Color', PS.Blue1, 'LineWidth', 2);
drawArrow.Parent = gca;
drawArrow.X = [x(40) x(43)];
drawArrow.Y = [y1(40) y1(43)];
% non merged arrow
drawArrow = annotation('arrow', 'Color', PS.Blue3, 'LineWidth', 2);
drawArrow.Parent = gca;
drawArrow.X = [x(30) x(33)];
drawArrow.Y = [y1(30) y1(33)];


%========================================================
% SAVE A PARTICULAR FIGURE AS AN IMAGE

% Save fign
SAVE_MY_FIGURE(fig1_comps, 'Figures/PlottingTemplate_Detailed_small.png', 'small');
SAVE_MY_FIGURE(fig1_comps, 'Figures/PlottingTemplate_Detailed_big.png', 'big');


