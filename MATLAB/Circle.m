classdef Circle < Shape & ColorMixin
    properties
        Radius
    end
    methods
        function obj = Circle(radius, color)
            obj@Shape('Circle');
            obj@ColorMixin(color);
            obj.Radius = radius;
        end
        function obj = CalculateArea(obj)
            obj.Area = pi * obj.Radius^2;
        end
        function Display(obj)
            fprintf('Shape Name: %s\n', obj.Name);
            fprintf('Shape Radius: %f\n', obj.Radius);
            fprintf('Shape Area: %f\n', obj.Area);
            fprintf('Shape Color: %s\n', obj.Color);
        end
        function Draw(obj)
            figure;
            axis equal;
            axis([-(obj.Radius * 2), (obj.Radius * 2), -(obj.Radius * 2), (obj.Radius * 2)]);
            
            rectangle('Position', [0 - obj.Radius, 0 - obj.Radius, obj.Radius * 2, obj.Radius * 2], 'Curvature', [1, 1], 'EdgeColor', obj.Color, 'FaceColor', obj.Color, 'LineWidth', 2);

            obj = obj.CalculateArea();
            infoStr = sprintf('Radius: %f\nArea: %f', obj.Radius, obj.Area);
            text(0, obj.Radius * 1.5, infoStr, 'HorizontalAlignment', 'center', 'FontSize', 12);
            title('Circle');
        end
    end
end