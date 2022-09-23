1) Number of words in Department_name                                       Example: Control and Credit 3

SELECT Department_name,
    (LENGTH(Department_name)-LENGTH(REPlace(Department_name,1,'')))+1 as Words
FROM departments;

2) Show the vowels replaced by a period in first_name                       Example: jose -> j.s.

SELECT first_name, REGEXP_REPLACE(first_name,'[aeiou]' , '.', 1, 0, 'i')
FROM employees;

3) Show Two vowels togethers but diferents in Last name                     Example: Josue

SELECT employee_id, last_name 
FROM employees
WHERE regexp_like(last_name, '([aeiou][aeiou])', 'i') and
      not regexp_like(last_name, '(aa|ee|ii|oo|uu)', 'i');

4) show First_name with vowel in first and four position                    Example: Ismael

SELECT first_name
FROM employees
WHERE regexp_like(Lower(first_name), '^[aeiou].{2}[aeiou]');

5) Show Street Adress in Locations, start with letter, end with number     Example: Av. Apocalipsis 666

SELECT Street_address 
From Locations
WHERE regexp_like(STREET_ADDRESS, '^[[:alpha:]].*[[:digit:]]$')
