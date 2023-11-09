classdef Shape < matlab.mixin.Heterogeneous
    properties
        Name
        Area
    end
    methods
        function obj = Shape(name)
            obj.Name = name;
        end
        function Display(obj)
            fprintf('Shape Name: %s\n', obj.Name);
            fprintf('Shape Area: %f\n', obj.Area);
        end
     end
     methods (Static)
        function CalculateStatistics(shapes)
            areas = [shapes.Area];
            
            Mean = mean(areas);
            Median = median(areas);
            stdDev = std(areas);

            fprintf('Mean: %f\n', Mean);
            fprintf('Median Area: %f\n', Median);
            fprintf('Standard Deviation: %f\n', stdDev);
        end
     end
end