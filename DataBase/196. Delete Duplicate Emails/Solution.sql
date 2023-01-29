/*
 Please write a DELETE statement and DO NOT write a SELECT statement.
 Write your PL/SQL query statement below
 */
 delete from PERSON t
 where t.id not in (select min(id) from person group by email)
