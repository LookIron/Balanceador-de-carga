CREATE database database1;
USE database1;
CREATE TABLE example(
id INT NOT NULL, 
PRIMARY KEY(id),
 name VARCHAR(30), 
 age INT);
INSERT INTO example (id,name,age) VALUES ('0','flanders',25);
INSERT INTO example (id,name,age) VALUES ('2','Vagrant destroy',18);


GRANT ALL PRIVILEGES ON *.* to '<%=@usuario%>' @ '<%=@ipA%>' IDENTIFIED by '<%=@password%>';
GRANT ALL PRIVILEGES ON *.* to '<%=@usuario%>' @ '<%=@ipB%>' IDENTIFIED by '<%=@password%>';


