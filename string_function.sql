-- functions
/*
set of statment
functions

code reusuable

scaler function -> row by row ( result for each row )
multi line function -> multiple line pr apply and give 1 output

scaler cae apply: date,int,float,string

*/

-- string functions
-- case conversion

select name,continent,upper(name), lower(name) from country;
select name,continent,concat(continent,'-','regex',code) from country;
-- concat with a seperater
select name,continent,concat_ws('-',continent,'regex',code) from country;

-- substr. (substring) => character extract based on yhe position
select name,substr(name,2),substr(name,1,3) from country;

select name,continent from country
where substr(name,1,1) = substr(continent,1,1);

select name,continent from country
where name like 'Alg%';

select name,continent,substr(name,1,3) from country
where substr(name,1,3)='Alg';

-- instr => search position of character
select name,instr(name,'e') from country;

-- lenght (byte use hua)
select char_length('yash');
select name, char_length(name) from country;

-- trim (extra space yh fir character ko remove krna)
-- ltrim,rtrim

select char_length('    yash    ');
select trim('yash');
select trim('       yafgggshggggggggg');
select trim( both 'g' from '      yaggshgggg');
select name,trim(both 'A' from name) from country;

-- lpad and rpad
select name, population,lpad(population,9,0) from country;