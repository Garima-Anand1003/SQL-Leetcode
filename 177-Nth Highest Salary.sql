#Leetcode Problem Link -> https://leetcode.com/problems/nth-highest-salary/description/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  set N=N-1;
  RETURN (
    
    select distinct salary from employee
    order by salary desc 
    limit 1 offset N
  );
END