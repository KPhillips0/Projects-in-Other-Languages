classdef Triangle < Shape & ColorMixin
    properties
        Base
        Height
    end
    methods
        function obj = Triangle(base, height, color)
            obj@Shape('Triangle');
            obj@ColorMixin(color);
            obj.Base = base;
            obj.Height = height;            
        end
        function obj = CalculateArea(obj)
            obj.Area = 1/2 * (obj.Base * obj.Height);
        end
        function Display(obj)
            fprintf('Shape Name: %s\n', obj.Name);
            fprintf('Shape Base: %f\n', obj.Base);
            fprintf('Shape Height: %f\n', obj.Height);
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
            infoStr = sprintf('Base: %f\nHeight: %f\nArea: %f', obj.Base, obj.Height, obj.Area);
            text(0, 0.85*obj.Height, infoStr, 'HorizontalAlignment', 'center', 'FontSize', 12);
            title('Triangle');
        end

    end
end