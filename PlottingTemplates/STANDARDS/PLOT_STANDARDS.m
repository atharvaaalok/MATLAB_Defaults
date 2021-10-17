function PS = PLOT_STANDARDS()

    % REFERENCE FOR STANDARD VALUES OF:
    % Font styles and sizes
    % Colors
    % Linestyles, MarkerStyles

    
    %========================================================
    % FONTS

    % My STANDARD Font for Plots


    PS.DefaultFont = 'Yu Mincho';
    PS.AxisNumbersFontName = 'Yu Mincho';
    PS.AxisFont = 'Yu Mincho';
    PS.LegendFont = 'Yu Mincho';
    PS.TitleFont = 'Yu Mincho';
    PS.PlotTextFont = 'Yu Mincho';

    PS.TitleFontSize = 28;
    PS.LegendFontSize = 20;
    PS.AxisFontSize = 24;
    PS.PlotTextFontSize = 20;
    PS.AxisNumbersFontSize = 18;
    
    
    % Tiled Properties
    PS.Tiled.Global.TitleFontSize = 30;
    PS.Tiled.Global.AxisFontSize = 26;
    
    PS.Tiled.SubPlot.TitleFontSize = 26;
    PS.Tiled.SubPlot.LegendFontSize = 18;
    PS.Tiled.SubPlot.AxisFontSize = 22;
    PS.Tiled.SubPlot.PlotTextFontSize = 18;
    PS.Tiled.SubPlot.AxisNumbersFontSize = 16;
    


    %========================================================
    % COLORS

    % Hex Color Palette
    % https://htmlcolorcodes.com/
    % Some STANDARD color choices
    
    % QUICK COLOR PALATTE
    PS.MyYellow = [223, 255, 0]./255;
    PS.MyOrange = [255, 191, 0]./255;
    PS.MyPink = [222, 49, 99]./255;
    PS.MyRed = [255, 69, 0]./255;
    
    PS.MyBlue1 = [204, 204, 255]./255;
    PS.MyBlue2 = [0, 191, 255]./255;
    PS.MyBlue3 = [100, 149, 237]./255;
    PS.MyBlue4 = [65, 105, 225]./255;
    
    PS.MyGreen1 = [0, 255, 127]./255;
    PS.MyGreen2 = [124, 252, 0]./255;
    PS.MyGreen3 = [50, 205, 50]./255;
    PS.MyGreen4 = [0, 139, 139]./255;
    
    PS.MyWhite = [255, 255, 255]./255;
    PS.MyGrey1 = [169, 169, 169]./255;
    PS.MyGrey2 = [128, 128, 128]./255;
    PS.MyBlack = [0, 0, 0]./255;
    
    
    % DETAILED COLOR PALETTE
    PS.DRed1 = [205, 97, 85]./255;
    PS.DRed2 = [192, 57, 43]./255;
    PS.DRed3 = [169, 50, 38]./255;
    PS.DRed4 = [146, 43, 33]./255;
    PS.DRed5 = [123, 36, 28]./255;
    
    PS.Red1 = [236, 112, 99]./255;
    PS.Red2 = [231, 76, 60]./255;
    PS.Red3 = [203, 67, 53]./255;
    PS.Red4 = [176, 58, 46]./255;
    PS.Red5 = [120, 40, 31]./255;
    
    PS.DBlue1 = [165, 105, 189]./255;
    PS.DBlue2 = [142, 68, 173]./255;
    PS.DBlue3 = [125, 60, 152]./255;
    PS.DBlue4 = [91, 44, 111]./255;
    PS.DBlue5 = [74, 35, 90]./255;
    
    PS.Blue1 = [133, 193, 233]./255;
    PS.Blue2 = [93, 173, 226]./255;
    PS.Blue3 = [52, 152, 219]./255;
    PS.Blue4 = [40, 116, 166]./255;
    PS.Blue5 = [27, 79, 114]./255;
    
    PS.DGreen1 = [69, 179, 157]./255;
    PS.DGreen2 = [19, 141, 117]./255;
    PS.DGreen3 = [17, 122, 101]./255;
    PS.DGreen4 = [14, 102, 85]./255;
    PS.DGreen5 = [11, 83, 69]./255;
    
    PS.Green1 = [82, 190, 128]./255;
    PS.Green2 = [39, 174, 96]./255;
    PS.Green3 = [34, 153, 84]./255;
    PS.Green4 = [30, 132, 73]./255;
    PS.Green5 = [20, 90, 50]./255;
    
    PS.LGreen1 = [88, 214, 141]./255;
    PS.LGreen2 = [46, 204, 113]./255;
    PS.LGreen3 = [40, 180, 99]./255;
    PS.LGreen4 = [35, 155, 86]./255;
    PS.LGreen5 = [24, 106, 59]./255;
    
    PS.Yellow1 = [255, 244, 79]./255;
    PS.Yellow2 = [223, 255, 0]./255;
    PS.Yellow3 = [255, 239, 0]./255;
    PS.Yellow4 = [255, 223, 0]./255;
    PS.Yellow5 = [244, 196, 48]./255;
    
    PS.DYellow1 = [247, 220, 111]./255;
    PS.DYellow2 = [244, 208, 63]./255;
    PS.DYellow3 = [241, 196, 15]./255;
    PS.DYellow4 = [212, 172, 13]./255;
    PS.DYellow5 = [183, 149, 11]./255;
    
    PS.Orange1 = [245, 176, 65]./255;
    PS.Orange2 = [243, 156, 18]./255;
    PS.Orange3 = [214, 137, 16]./255;
    PS.Orange4 = [185, 119, 14]./255;
    PS.Orange5 = [156, 100, 12]./255;
    
    PS.DOrange1 = [230, 126, 34]./255;
    PS.DOrange2 = [220, 118, 51]./255;
    PS.DOrange3 = [211, 84, 0]./255;
    PS.DOrange4 = [186, 74, 0]./255;
    PS.DOrange5 = [135, 54, 0]./255;
    
    PS.Grey1 = [244, 246, 247]./255;
    PS.Grey2 = [202, 207, 210]./255;
    PS.Grey3 = [166, 172, 175]./255;
    PS.Grey4 = [144, 148, 151]./255;
    PS.Grey5 = [98, 101, 103]./255;
    
    PS.DGrey1 = [127, 140, 141]./255;
    PS.DGrey2 = [112, 123, 124]./255;
    PS.DGrey3 = [97, 106, 107]./255;
    PS.DGrey4 = [81, 90, 90]./255;
    PS.DGrey5 = [66, 73, 73]./255;
    
    PS.Purple1 = [93, 109, 126]./255;
    PS.Purple2 = [52, 73, 94]./255;
    PS.Purple3 = [40, 55, 71]./255;
    PS.Purple4 = [28, 40, 51]./255;
    PS.Purple5 = [23, 32, 42]./255;
      
    
    %========================================================
    % LINE AND MARKER PROPERTIES
    
    % LineStyles
    % '-', '--', ':', '-.'
    PS.DefaultLineStyle = '-';
    PS.DefaultLineWidth = 1.5;

    % MarkerStyles
    % 'o', '+', '*', 'x', 's'->squares, 'd'->diamonds, 'v'->triangles
    PS.DefaultMarkerStyle = 'o';
    
    
    %========================================================
    % LEGEND PROPERTIES
    
    PS.DefaultLegendBoxLineWidth = 1.5;
    PS.DefaultLegendLocation = 'northeast';


    %========================================================
    % AXIS DETAILS
    
    PS.AxisTickLength = 0.01;
    PS.AxisColor = PS.Grey5;


    %========================================================
    % FIGURE SAVING PROPERTIES

    % Big
    PS.save_big_TitleFontSize = 28;
    PS.save_big_LegendFontSize = 20;
    PS.save_big_AxisFontSize = 24;
    PS.save_big_PlotTextFontSize = 20;
    PS.save_big_AxisNumbersFontSize = 18;


    % Small
    PS.save_small_TitleFontSize = 18;
    PS.save_small_LegendFontSize = 7;
    PS.save_small_AxisFontSize = 14;
    PS.save_small_PlotTextFontSize = 10;
    PS.save_small_AxisNumbersFontSize = 8;
    
   
    % TILED SAVE
    
    % Big
    PS.Tiled.Global.save_big_TitleFontSize = 30;
    PS.Tiled.Global.save_big_AxisFontSize = 26;
    
    PS.Tiled.SubPlot.save_big_TitleFontSize = 26;
    PS.Tiled.SubPlot.save_big_LegendFontSize = 18;
    PS.Tiled.SubPlot.save_big_AxisFontSize = 22;
    PS.Tiled.SubPlot.save_big_PlotTextFontSize = 18;
    PS.Tiled.SubPlot.save_big_AxisNumbersFontSize = 16;


    % Small
    PS.Tiled.Global.save_small_TitleFontSize = 20;
    PS.Tiled.Global.save_small_AxisFontSize = 16;
    
    PS.Tiled.SubPlot.save_small_TitleFontSize = 10;
    PS.Tiled.SubPlot.save_small_LegendFontSize = 6;
    PS.Tiled.SubPlot.save_small_AxisFontSize = 8;
    PS.Tiled.SubPlot.save_small_PlotTextFontSize = 6;
    PS.Tiled.SubPlot.save_small_AxisNumbersFontSize = 6;

    
    
    % Set Figure Resolution
    PS.save_DefaultResolution = 600;


end