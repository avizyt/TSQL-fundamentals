--The CASE expression
/* Use the CASE expression to evaluate a list of expression and return the first one that evaluates to true. CASE is similer to Select Case or Switch used in the other programming lang, but it is used inside the statement.*/

/* Format
CASE <test expression>
    WHEN <comparison expression1> THEN <return value1>
    WHEN <comparison expression2> THEN <return value2>
    [ELSE <value3>] END

*/

SELECT Title,
    CASE Title 
    WHEN 'Mr.' Then 'Male'
    WHEN 'Ms.' Then 'Female'
    WHEN 'Mrs.' Then 'Female'
    WHEN 'Miss'Then 'Female'
    ELSE 'Unknown' End AS Gender
    
FROM Person.Person
WHERE BusinessEntityID IN (1,5,6,357,358,11621,423);