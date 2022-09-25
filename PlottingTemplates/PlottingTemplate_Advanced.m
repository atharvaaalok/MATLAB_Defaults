% INITIAL HOUSE-KEEPING STUFF

% clear->erase workspace variables, clc->clean command window, close all-> close all currently open figures
clear; clc; close all;

% The following file has useful defaults for: Font, Colors etc.
% Have a look at this file. You can customize it according to your needs.
PS = PLOT_STANDARDS();

%========================================================
% GENERATE DATA TO PLOT

% To make an example scatter plot we generate scatter data using a random matrix. We create a 20x20 random matrix
randmatrix = rand(20,20);
% Organize that 20x20 matrix in a column vector. Now we have a vector of 400 random numbers.
randmatrix = randmatrix(:);
% We take first 200 entries to be x-coordinates and the next 200 as y-coordinates of data points on the plane
x1 = randmatrix(1:end/2);
y1 = randmatrix(end/2 + 1:end);
% We also generate data for plotting y = x^2
x2 = linspace(0, 1, 100);
y2 = x2.^2;
% We copy the above two to create 2 more data sets.
% y3 same as y1
x3 = x1;
y3 = y1;
% y4 same as y2
x4 = x2;
y4 = y2;


%========================================================
% STEPS FOR PLOTTING

% Create a figure. Each 'figure' is a new window which opens up. So number them properly
figure(1);
% Get the handle of figure(n).
fig1_comps.fig = gcf;
% We create a 2x2 tile set
fig1_comps.t1 = tiledlayout(fig1_comps.fig, 2, 2);
% When the number of tiles is unknown use - tiledlayout(fig1, 'flow');


% For each data set that you plot number the plot.
% Each figure is a new window on which we can plot many data sets. Eg: In the same window plot a line y = mx + c and y = x^2 as well.

% Tile 1
fig1_comps.n(1) = nexttile;
fig1_comps.p1 = plot(x1, y1, 'o');
fig1_comps.tile1.plotXLabel = xlabel('hey bro');
legend(fig1_comps.p1, 'Scatter');

% Tile 2
fig1_comps.n(2) = nexttile;
fig1_comps.p2 = plot(x2, y2);
legend(fig1_comps.p2, '$$y = x^{2}$$');

% Tile 3
fig1_comps.n(3) = nexttile;
fig1_comps.p3 = plot(x3, y3, 'o');
legend(fig1_comps.p3, 'Scatter');

% Tile 4
fig1_comps.n(4) = nexttile;
fig1_comps.p4 = plot(x4, y4);
% set(gca, 'yticklabel', []);
legend(fig1_comps.p4, '$$y = x^{2}$$');


%========================================================
% ADD LABELS, LEGEND AND SPECIFY SPACING AND PADDING

% Add Global Labels and Title
fig1_comps.t1.Title.String = 'Tile Global Title';
fig1_comps.t1.XLabel.String = 'Tile Global X Label';
fig1_comps.t1.YLabel.String = 'Tile Global Y Label';

% Add Legend. Use LaTeX format to add equations. Enclose in $$ LaTeX code $$
% NOTE: The default interpretor has been set to LaTeX so all LaTeX equations should work

% Padding, Spacing and x-axis label removal
t1.Padding = 'tight';
set(gca, 'yticklabel', []); % Removes yticklabels for the current axis. Use as in Tile 4 to remove for each individual tile.
fig1_comps.t1.TileSpacing = 'none';


%========================================================
% INSTANTLY IMPROVE AESTHETICS

% Set default properties for fign
STANDARDIZE_FIGURE(fig1_comps);


%========================================================
% SET PLOT PROPERTIES

% The following command will set the properties for p1.
% Choices for Colors can be found in in PLOT_STANDARDS
set(fig1_comps.p1, 'LineStyle', 'none', 'Marker', 'o', 'MarkerSize', 6, 'MarkerEdgeColor', PS.Blue4, 'MarkerFaceColor', PS.Blue1);
set(fig1_comps.p2, 'LineStyle', '--', 'LineWidth', 2, 'Color', PS.Red2);
set(fig1_comps.p3, 'LineStyle', 'none', 'Marker', 'o', 'MarkerSize', 6, 'MarkerEdgeColor', PS.Blue4, 'MarkerFaceColor', PS.Blue1);
set(fig1_comps.p4, 'LineStyle', '--', 'LineWidth', 2, 'Color', PS.Red2);


%========================================================
% ADD TEXT ON THE PLOT

% Choose position of text
xpos = .3;
ypos = .3;
% Set text properties
plotText1 = text(xpos, ypos, 'Hello1$$\pi$$', 'Interpreter', 'latex', 'Color', PS.MyBlack, 'FontSize', PS.PlotTextFontSize);
plotText2 = text(xpos + .3, ypos + .3, 'Hello2', 'Interpreter', 'latex', 'Color', PS.MyBlack, 'FontSize', PS.PlotTextFontSize);


%========================================================
% SAVE A PARTICULAR FIGURE AS AN IMAGE

% Save fign
SAVE_MY_FIGURE(fig1_comps, 'Figures/PlottingTemplate_Advanced_small.png', 'small');
SAVE_MY_FIGURE(fig1_comps, 'Figures/PlottingTemplate_Advanced_big.png', 'big');



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
%    note = "[Online; accessed October 31, 202]"
% }


% PLEASE SUPPORT ME BY CITING THIS TOOLBOX. THANK YOU!!!