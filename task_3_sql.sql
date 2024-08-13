create table books(
	book_id int primary key,
	title varchar(255),
	copies_available int
)

select * from books

insert into books(book_id, title, copies_available) values 
(1, 'sapiens', 5),
(2, '1984', 4),
(3, 'the great gatsby', 3),
(4, 'pride and prejudice', 6)

update books
set copies_available = case
    when book_id = 1 then 7
    when book_id = 2 then 2
    when book_id = 3 then 5
    when book_id = 4 then 4
end
where book_id in (1, 2, 3, 4)

copy books to 'D:\task3 sql.csv' DELIMITER ',' csv header
