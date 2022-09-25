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
legendX = .82; legendY = .87; legendWidth = 0.02; legendHeight = 0.02;
fig1_comps.legendPosition = [legendX, legendY, legendWidth, legendHeight];
% If you want the tightest box set width and height values very low matlab automatically sets the tightest box

%========================================================
% SET PLOT PROPERTIES
% Choices for COLORS can be found in ColorPalette.png
set(fig1_comps.p1, 'LineStyle', 'none', 'LineWidth', 1, 'Marker', 'o', 'MarkerSize', 6, 'MarkerFaceColor', PS.Blue1, 'MarkerEdgeColor', PS.Blue3);
set(fig1_comps.p2, 'LineStyle', '--', 'LineWidth', 2, 'Color', PS.MyRed);

%========================================================
% INSTANTLY IMPROVE AESTHETICS-most important step
STANDARDIZE_FIGURE(fig1_comps);

%========================================================
% SAVE FIGURE AS AN IMAGE: SAVE_MY_FIGURE(fig1_comps, 'Myfigure.png', 'small');
SAVE_MY_FIGURE(fig1_comps, 'Figures/PlottingTemplate_Quick_big.png', 'big');
SAVE_MY_FIGURE(fig1_comps, 'Figures/PlottingTemplate_Quick_small.png', 'small');

% Or if you do not like the default settings used to save the figure
% Step1: Set the properties of your figure
% Step2: Maybe move around the legend location manually on the figure that opens up. Then save or
% Step3: Use the following code
figure_resolution = 600;
fig_filename = 'Figures/PlottingTemplate_Quick_Separate.png';
exportgraphics(fig1_comps.fig, fig_filename, 'Resolution', figure_resolution);


%========================================================
% HOW TO CITE THIS TOOLBOX? (Please support :) )
% Refer - https://in.mathworks.com/matlabcentral/answers/1575908-how-to-cite-matlab-file-exchange-file-using-bibtex?s_tid=es_ans_avr_ans_view#answers_list
% OR
% Include the following in your LaTeX .bib file:
% @misc
% {  atharva2021,
%    author = {Atharva Aalok}, 
%    title = {Professional Plots}, 
%    year = 2021
%    howpublished = "\url{https://www.mathworks.com/matlabcentral/fileexchange/100766-professional_plots}",
%    note = "[Online; accessed October 31, 2022]"
% }


% PLEASE SUPPORT ME BY CITING THIS TOOLBOX. THANK YOU!!!





