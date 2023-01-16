/* Write your PL/SQL query statement below */
select user_id, max(l.time_stamp) as last_stamp from Logins l
where to_char(l.time_stamp, 'YYYY') = '2020'
group by user_id
