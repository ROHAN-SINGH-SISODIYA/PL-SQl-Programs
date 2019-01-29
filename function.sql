create or replace function getsum(sum1 number,sum2 number) return number

is
  begin
    return sum1+sum2;
  end;
 /  