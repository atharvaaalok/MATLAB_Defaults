% clear->clean workspace, clc->clean command window, close all-> close all currently open figures
clear; clc; close all;
% The standard values for colors saved in PLOT_STANDARDS() will be accessed from the variable PS
PS = PLOT_STANDARDS();
%========================================================
% GENERATE DATA TO PLOT
x1 = rand(1, 200);
y1 = rand(1, 200);
x2 = linspace(0, 1, 100);
y2 = x2.^2;

%========================================================
% STEPS FOR PLOTTING
figure(1);
fig1_comps.fig = gcf;
hold on

fig1_comps.p1 = plot(x1, y1, 'o');
fig1_comps.p2 = plot(x2, y2);
hold off

%========================================================
% ADD LABELS, TITLE, LEGEND
title('Random Scatter Data');
xlabel('x axis Data');
ylabel('y axis Data');

legend([fig1_comps.p1, fig1_comps.p2], 'Scatter', '$$y = x^{2}$$');

%========================================================
% SET PLOT PROPERTIES
% Choices for COLORS can be found in ColorPalette.png
set(fig1_comps.p1, 'LineStyle', 'none', 'LineWidth', 1.5, 'Marker', 'o', 'MarkerSize', 8, 'MarkerFaceColor', PS.Blue1, 'MarkerEdgeColor', PS.Blue3);
set(fig1_comps.p2, 'LineStyle', '--', 'LineWidth', 2.5, 'Color', PS.MyRed);

%========================================================
% INSTANTLY IMPROVE AESTHETICS-most important step
STANDARDIZE_FIGURE(fig1_comps);

%========================================================
% SAVE FIGURE AS AN IMAGE: SAVE_MY_FIGURE(fig1_comps, 'Myfigure.png', 'small');
SAVE_MY_FIGURE(fig1_comps, 'Figures/PlottingTemplate_Quick_small.png', 'small');
SAVE_MY_FIGURE(fig1_comps, 'Figures/PlottingTemplate_Quick_big.png', 'big');


