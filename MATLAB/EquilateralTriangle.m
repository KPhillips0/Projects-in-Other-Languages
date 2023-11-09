classdef EquilateralTriangle < Triangle & ColorMixin
    properties
        Side_Length
    end
    methods
        function obj = EquilateralTriangle(side, color)
            obj@Triangle(side, (side * sqrt(3)) / 2, color);
            obj@ColorMixin(color);
            obj.Side_Length = side;
        end
        function Display(obj)
            fprintf('Shape Name: %s\n', obj.Name);
            fprintf('Shape Side Length: %f\n', obj.Side_Length);
            fprintf('Shape Area: %f\n', obj.Area);
            fprintf('Shape Color: %s\n', obj.Color);
        end
        function Draw(obj)
            figure;
            xVertices = [-obj.Base/2, obj.Base/2, 0];
            yVertices = [-obj.Height/2, -obj.Height/2, obj.Height/2];
            fill(xVertices, yVertices, obj.Color);
            
            dim = max(obj.Base, obj.Height);
            axis([-dim, dim, -dim, dim]);

            obj = obj.CalculateArea();
            infoStr = sprintf('Side Length: %f\nArea: %f', obj.Side_Length, obj.Area);
            text(0, 0.75*obj.Side_Length, infoStr, 'HorizontalAlignment', 'center', 'FontSize', 12);
            title('Equilateral Triangle');
        end
    end
end