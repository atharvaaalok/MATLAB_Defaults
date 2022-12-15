function figure = STANDARDIZE_FIGURE(fig_comps)

    %========================================================
    % INCLUDE PLOT_STANDARDS
    
    PS = PLOT_STANDARDS();
        
    
    %========================================================
    % GET FIGURE HANDLE
    
    fig = fig_comps.fig;
    
    
    %========================================================
    % DIFFERENT STYLES FOR NON-TILED VS TILED
    
    % Non-Tiled Plot
    if numel(findobj(fig, 'type', 'tile')) == 0

        %========================================================
        % PLOT FULLSCREEN BY DEFAULT

        % Make the plot 'maximized'. The plot opens up in fullscreen mode by default
        fig.WindowState = 'maximized';


        %========================================================
        % GET CURRENT FIGURE AXES

        % get axes for current figure
        ax = fig.CurrentAxes;


        %========================================================
        % SET PROPERTIES FOR X-AXIS AND Y-AXIS

        % Set Properties for X and Y Axis Numbers
        ax.FontName = PS.AxisNumbersFontName;
        ax.FontSize = PS.AxisNumbersFontSize;
        ax.FontWeight = 'bold';

        % Set Properties for X, Y and Z Labels
        ax.XLabel.FontName = PS.AxisFont;
        ax.YLabel.FontName = PS.AxisFont;
        ax.ZLabel.FontName = PS.AxisFont;

        ax.XLabel.FontSize = PS.AxisFontSize;
        ax.YLabel.FontSize = PS.AxisFontSize;
        ax.ZLabel.FontSize = PS.AxisFontSize;

        ax.XLabel.FontWeight = 'bold';
        ax.YLabel.FontWeight = 'bold';
        ax.ZLabel.FontWeight = 'bold';
        
        if length(ax.XLabel.String) > 4
            if all(ax.XLabel.String([1, 2, end - 1, end]) == '$$$$')
                ax.XLabel.Interpreter = 'latex';
            end
        end
        if length(ax.YLabel.String) > 4
            if all(ax.YLabel.String([1, 2, end - 1, end]) == '$$$$')
                ax.YLabel.Interpreter = 'latex';
            end
        end
        if length(ax.ZLabel.String) > 4
            if all(ax.ZLabel.String([1, 2, end - 1, end]) == '$$$$')
                ax.ZLabel.Interpreter = 'latex';
            end
        end


        %========================================================
        % SET PROPERTIES FOR TITLE

        ax.Title.FontName = PS.TitleFont;
        ax.Title.FontSize = PS.TitleFontSize;
        ax.Title.FontWeight = 'bold';
        if length(ax.Title.String) > 4
            if all(ax.Title.String([1, 2, end - 1, end]) == '$$$$')
                ax.Title.Interpreter = 'latex';
            end
        end


        %========================================================
        % SET PROPERTIES FOR LEGEND
        
        if (numel(ax.Legend) ~= 0)
            ax.Legend.FontName = PS.LegendFont;
            ax.Legend.FontSize = PS.LegendFontSize;
            for i_Legend = 1: length(ax.Legend.String)
                if length(ax.Legend.String{i_Legend}) > 4
                    if all(ax.Legend.String{i_Legend}([1, 2, end - 1, end]) == '$$$$')
                        ax.Legend.Interpreter = 'latex';
                        break
                    end
                end
            end
            ax.Legend.Box = 'on';
            ax.Legend.LineWidth = PS.DefaultLegendBoxLineWidth;
            ax.Legend.AutoUpdate = 'off';
            if (isfield(fig_comps, 'legendPosition'))
                ax.Legend.Position = fig_comps.legendPosition;
            end
        end


        %========================================================
        % SET PROPERTIES FOR CHILDREN OF AXES -> LINES, TEXT ON PLOT

        axisChildren = ax.Children;
        for i = 1:length(axisChildren)
            if isequal(axisChildren(i).Type, 'text')
                axisChildren(i).FontName = PS.PlotTextFont;
                axisChildren(i).FontSize = PS.PlotTextFontSize;
                if length(axisChildren(i).String) > 4
                    if all(axisChildren(i).String([1, 2, end - 1, end]) == '$$$$')
                        axisChildren(i).Interpreter = 'latex';
                    end
                end

            end
        end


        %========================================================
        % ADJUST AXES PROPERTIES
        
        ax.Box = 'on';
        ax.TickDir = 'out';
        ax.TickLength = [PS.AxisTickLength, PS.AxisTickLength];
        ax.XMinorTick = 'on';
        ax.YMinorTick = 'on';
        ax.ZMinorTick = 'on';
        ax.XColor = PS.AxisColor;
        ax.YColor = PS.AxisColor;
        ax.ZColor = PS.AxisColor;
        ax.XLabel.Color = PS.AxisLabelColor;
        ax.YLabel.Color = PS.AxisLabelColor;
        ax.ZLabel.Color = PS.AxisLabelColor;
        ax.LineWidth = PS.DefaultLineWidth;

    
    % Tiled Plot
    elseif numel(findobj(gcf, 'type', 'tile')) == 1
        
        %========================================================
        % PLOT FULLSCREEN BY DEFAULT

        % Make the plot 'maximized'. The plot opens up in fullscreen mode by default
        fig.WindowState = 'maximized';


        %========================================================
        % GET HANDLES FOR THE GLOBAL AND EACH INDIVIDUAL TILE
        
        % Get handle of the tile object
        t1 = fig_comps.t1;
        % Get handle to access each individual tile
        n = fig_comps.n;
        % Get the total number of tiles
        num_tiles = numel(n);


        %========================================================
        % TILE GLOBAL PROPERTIES

        t1.Padding = 'loose';

        t1.Title.FontName = PS.TitleFont;
        t1.Title.FontSize = PS.Tiled.Global.TitleFontSize;
        t1.Title.FontWeight = 'bold';
        if length(t1.Title.String) > 4
            if all(t1.Title.String([1, 2, end - 1, end]) == '$$$$')
                t1.Title.Interpreter = 'latex';
            end
        end

        t1.XLabel.FontName = PS.AxisFont;
        t1.XLabel.FontSize = PS.Tiled.Global.AxisFontSize;
        t1.XLabel.FontWeight = 'bold';
        if length(t1.XLabel.String) > 4
            if all(t1.XLabel.String([1, 2, end - 1, end]) == '$$$$')
                t1.XLabel.Interpreter = 'latex';
            end
        end

        t1.YLabel.FontName = PS.AxisFont;
        t1.YLabel.FontSize = PS.Tiled.Global.AxisFontSize;
        t1.YLabel.FontWeight = 'bold';
        if length(t1.YLabel.String) > 4
            if all(t1.YLabel.String([1, 2, end - 1, end]) == '$$$$')
                t1.YLabel.Interpreter = 'latex';
            end
        end


        %========================================================
        % TILE PROPERTIES

        for i = 1:num_tiles
            n_i = n(i);

            %========================================================
            % SET PROPERTIES FOR X-AXIS AND Y-AXIS

            % Set Properties for X and Y Axis Numbers
            n_i.FontName = PS.AxisNumbersFontName;
            n_i.FontSize = PS.Tiled.SubPlot.AxisNumbersFontSize;
            n_i.FontWeight = 'bold';

            % Set Properties for X, Y and Z Labels
            n_i.XLabel.FontName = PS.AxisFont;
            n_i.YLabel.FontName = PS.AxisFont;
            n_i.ZLabel.FontName = PS.AxisFont;
            
            n_i.XLabel.FontSize = PS.Tiled.SubPlot.AxisFontSize;
            n_i.YLabel.FontSize = PS.Tiled.SubPlot.AxisFontSize;
            n_i.ZLabel.FontSize = PS.Tiled.SubPlot.AxisFontSize;
            
            n_i.XLabel.FontWeight = 'bold';
            n_i.YLabel.FontWeight = 'bold';
            n_i.ZLabel.FontWeight = 'bold';
            
            if length(n_i.XLabel.String) > 4
                if all(n_i.XLabel.String([1, 2, end - 1, end]) == '$$$$')
                    n_i.XLabel.Interpreter = 'latex';
                end
            end
            if length(n_i.YLabel.String) > 4
                if all(n_i.YLabel.String([1, 2, end - 1, end]) == '$$$$')
                    n_i.YLabel.Interpreter = 'latex';
                end
            end
            if length(n_i.ZLabel.String) > 4
                if all(n_i.ZLabel.String([1, 2, end - 1, end]) == '$$$$')
                    n_i.ZLabel.Interpreter = 'latex';
                end
            end


            %========================================================
            % SET PROPERTIES FOR TITLE

            n_i.Title.FontName = PS.TitleFont;
            n_i.Title.FontSize = PS.Tiled.SubPlot.TitleFontSize;
            n_i.Title.FontWeight = 'bold';
            if length(n_i.Title.String) > 4
                if all(n_i.Title.String([1, 2, end - 1, end]) == '$$$$')
                    n_i.Title.Interpreter = 'latex';
                end
            end


            %========================================================
            % SET PROPERTIES FOR LEGEND

            if (numel(n_i.Legend) ~= 0)
                n_i.Legend.FontName = PS.LegendFont;
                n_i.Legend.FontSize = PS.Tiled.SubPlot.LegendFontSize;
                for i_Legend = 1: length(n_i.Legend.String)
                    if length(n_i.Legend.String{i_Legend}) > 4
                        if all(n_i.Legend.String{i_Legend}([1, 2, end - 1, end]) == '$$$$')
                            n_i.Legend.Interpreter = 'latex';
                            break
                        end
                    end
                end
                n_i.Legend.Box = 'on';
                n_i.Legend.LineWidth = PS.DefaultLegendBoxLineWidth;
                n_i.Legend.AutoUpdate = 'off';
                n_i.Legend.Location = PS.DefaultLegendLocation;
            end


            %========================================================
            % SET PROPERTIES FOR CHILDREN OF AXES -> LINES, TEXT ON PLOT

            axisChildren = n_i.Children;
            for j = 1:length(axisChildren)
                if isequal(axisChildren(j).Type, 'text')
                    axisChildren(j).FontName = PS.PlotTextFont;
                    axisChildren(j).FontSize = PS.Tiled.SubPlot.PlotTextFontSize;
                    if length(axisChildren(j).String) > 4
                        if all(axisChildren(j).String([1, 2, end - 1, end]) == '$$$$')
                            axisChildren(j).Interpreter = 'latex';
                        end
                    end
                    
                end
            end


            %========================================================
            % ADJUST AXES PROPERTIES

            n_i.Box = 'on';
            n_i.TickDir = 'out';
            n_i.TickLength = [PS.AxisTickLength, PS.AxisTickLength];
            n_i.XMinorTick = 'on';
            n_i.YMinorTick = 'on';
            n_i.ZMinorTick = 'on';
            n_i.XColor = PS.AxisColor;
            n_i.YColor = PS.AxisColor;
            n_i.ZColor = PS.AxisColor;
            n_i.XLabel.Color = PS.AxisLabelColor;
            n_i.YLabel.Color = PS.AxisLabelColor;
            n_i.ZLabel.Color = PS.AxisLabelColor;
            n_i.LineWidth = PS.DefaultLineWidth;
            

        end
        
    end

end

