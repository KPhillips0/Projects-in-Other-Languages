classdef Rectangle < Shape & ColorMixin
    properties
        Length
        Width
    end
    methods
        function obj = Rectangle(length, width, color)
            obj@Shape('Rectangle');
            obj@ColorMixin(color);
            obj.Length = length;
            obj.Width = width;
        end
        function obj = CalculateArea(obj)
            obj.Area = obj.Length * obj.Width;
        end
        function Display(obj)
            fprintf('Shape Name: %s\n', obj.Name);
            fprintf('Shape Length: %f\n', obj.Length);
            fprintf('Shape Width: %f\n', obj.Width);
            fprintf('Shape Area: %f\n', obj.Area);
            fprintf('Shape Color: %s\n', obj.Color);
        end
        function Draw(obj)
            figure;
            dim = max(obj.Length, obj.Width);
            axis([-dim, dim, -dim, dim]);
            rectangle('Position', [-(1/2)*obj.Width,-(1/2)*obj.Length,obj.Width, obj.Length], 'EdgeColor', obj.Color, 'FaceColor', obj.Color, 'LineWidth', 2);

            obj = obj.CalculateArea();
            infoStr = sprintf('Length: %f\nWidth: %f\nArea: %f', obj.Length, obj.Width, obj.Area);
            text(0, obj.Length * .75, infoStr, 'HorizontalAlignment', 'center', 'FontSize', 12);
            title('Rectangle');
        end
    end
end