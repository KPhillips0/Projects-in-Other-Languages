choice = menu('Choose a Shape:', 'Circle', 'Rectangle', 'Triangle', 'Equilateral Triangle');

if choice == 1  
    radius = input('Enter the radius: ');
    color = input('Enter the color: ');
    shape = Circle(radius, color);

elseif choice == 2  
    length = input('Enter the length: ');
    width = input('Enter the width: ');
    color = input('Enter the color: ');
    shape = Rectangle(length, width, color);

elseif choice == 3
    base = input('Enter the base length: ');
    height = input('Enter the height: ');
    color = input('Enter the color: ');
    shape = Triangle(base, height, color);

elseif choice == 4
    sideLength = input('Enter the side length: ');
    color = input('Enter the color: ');
    shape = EquilateralTriangle(sideLength, color);
else
    disp('Invalid choice. Exiting...');
    return;
end

shape = shape.CalculateArea();
shape.Draw();