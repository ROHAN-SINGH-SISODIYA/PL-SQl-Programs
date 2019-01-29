create or replace function circle_area(radius number)
return number is
pi constant number(7,3):=3.141;
area number(7,3);
begin
      area:=pi*(radius*radius);
	  return area;
end;
/	  