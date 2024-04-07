-- SQLite
select*from Authors


--new
INSERT INTO Authors
VALUES(3,'TOM','F','NEPAL','AAA@GMAIL.COM','10/20');

CREATE TABLE Publishers(
Id int PRIMARY KEY,
NAME nvarchar(200),
Address nvarchar(400),
Phone varchar(10),
Registration nvarchar(100)

);

CREATE TABLE AuthorDetails(
Id int PRIMARY KEY,
Education nvarchar(200),
Publications nvarchar(400),
Organization varchar(10),
AuthorDetailId integer,
FOREIGN KEY(AuthorDetailId) REFERENCES Authors(Id)


);

drop table AuthorDetails

--Relations: one to one , one to many, many to many
ALTER TABLE Authors
ADD FOREIGN KEY(AuthorDetails(Id) REFERENCES AuthorDetails(Id))