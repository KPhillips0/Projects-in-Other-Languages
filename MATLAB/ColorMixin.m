classdef ColorMixin
    properties
        Color
    end
    methods
        function obj = ColorMixin(color)
            obj.Color = color;
        end
        function obj = SetColor(obj, color)
            obj.Color = color;
        end

        function color = GetColor(obj)
            color = obj.Color;
        end
    end
end