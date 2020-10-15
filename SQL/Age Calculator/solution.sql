-- Create your FUNCTION statement here


create function agecalculator (dob date)
returns int
language plpgsql
as 
$$
declare 
  age_in_years integer;
begin 
  select date_part('year',now()) - date_part('year', dob)
    into age_in_years;
    
  return age_in_years;
  
  end;
  $$;
    