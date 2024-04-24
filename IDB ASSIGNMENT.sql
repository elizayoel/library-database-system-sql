create database LibraryFix;
use LibraryFix;

create table Publisher
(Publisher_ID nvarchar(50)Primary Key,
PublisherName nvarchar(50),
Publisher_Address nvarchar(50),
Publisher_Phone_Number nvarchar(50)
);

insert into Publisher values
('PA007070','Airlangga','Gotovlje, Slovenia','60123785645'),
('PU006381','Udayana','Denpasar, Bali','60780138728'),
('PP111612','Sriwijaya','Telok Gong, Klang','60165783453'),
('PG002608','Gadjah Mada','Tut, Turkey','60123534096'),
('PB009783','Brawijaya','Bakonycsernye, Hungary','60345095178'),
('PC014115','Celadon Books','New York City, New York','60251682461'),
('PL001521',' Little, Brown and Company','Boston, Massachusetts','60366124723'),
('PS000728','Scribner','New York City, New York','60123472156'),
('PR012654','Riverhead Books','New York City, New York','60612333659'),
('PB002781','Broadway Books','New York City, New York','60167273511'),
('PP062711','Penguin Books','London, United Kingdom','60637942477'),
('PA123668','Alfred A. Knopf','New York City, New York','60425671128'),
('PB785621','Bantam Books','New York City, New York','601672373589');


create table Category(
Category_ID nvarchar(50)Primary Key,
Loan_Period_Days integer,
Fine_Rate decimal(10,2)
);

insert into Category values
('Yellow', 7, '5.00'),
('Green', 3, '2.00'),
('Red', NULL, NULL);

drop table Reservation_Copy;
drop table Loaned_Copy;
drop table Reservation;
drop table Loan;
drop table Member;

create table Member(
Member_ID nvarchar(50)Primary Key,
Name nvarchar(50),
Address nvarchar (50),
Phone_Number nvarchar (20),
Email nvarchar (50),
Status nvarchar (20),
Total_Loans integer,
Gender nvarchar(50)
);

insert into Member values
('KL016','Pepe Suganda','Brazil','60190876542','pepe321@gmail.com','Active',10,'Male'),--eliza
('KL075','Indriana Geraldine','Phillipines','60155556721','drian120@gmail.com','Active',11,'Female'),--sen
('KL116','Talaat Sadaam Souad','Uni Emirates Arab','60123554890','monalisa22@gmail.com','Active',13,'Male'),--allen
('KL129','Jeffrey Gordon','United Kingdom','60178992235','j.effrey@gmail.com','Active',12,'Male'),--justyn
('KL588','Mbabu Aïssatou','Zimbabwe','60121113469','M.babu20@yahoo.com','Inactive',1,'Female');

SELECT Member.Gender, COUNT (Member.Gender) AS Total_Gender
FROM Member
GROUP BY Member.Gender
ORDER BY Total_Gender DESC;


drop table reservation;
drop table reservation_copy;
drop table fine;
drop table loaned_copy;
drop table loan;
drop table member;

create table Author
(
Author_ID nvarchar (50) Primary Key,
Author_Name nvarchar(50),
Author_Bio nvarchar(4000)
);

insert into Author values
('AJ28409','Jessie Stanford','Jessie Stanford is an accomplished author with a passion for exploring the depths of human emotions. Her evocative prose and vivid storytelling transport readers to alternate realms and challenge their perceptions of reality. With a background in psychology, Jessie infuses her narratives with deep character analysis and thought-provoking themes. When she is not writing, she enjoys immersing herself in nature, seeking inspiration from the beauty of the natural world.'),
('AC13897','Chen Lny Dũa','Chen Lny Dũa is a versatile author known for his ability to captivate readers across multiple genres. From gripping thrillers that keep you on the edge of your seat to heartwarming romances that tug at your heartstrings, his storytelling prowess knows no bounds. His meticulous attention to detail and knack for crafting complex yet relatable characters make his books must-reads for fans of all ages. When he is not writing, he can be found exploring antique bookstores and indulging in his love for classic literature.'),
('AL05694','Lee Bi Jie','Lee Bi Jie is a rising star in the literary world, specializing in imaginative science fiction and fantasy novels. His boundless creativity and ability to construct intricate worlds have garnered critical acclaim. His writing effortlessly transports readers to realms filled with magical creatures, futuristic technologies, and epic adventures. Drawing inspiration from mythology and ancient civilizations, he weaves rich tapestries of storytelling that leave readers spellbound. When he is not crafting tales, Lee enjoys practicing yoga and seeking inspiration from the cosmos.'),
('AW15903','Wen Jiang ShÆnglung','Wen Jiang ShÆnglung  is an enigmatic author whose works blur the lines between reality and the supernatural. Known for his atmospheric storytelling and poetic prose, Wen takes readers on haunting journeys through the shadows of the human psyche. His books delve deep into the mysteries of the human condition, exploring themes of identity, loss, and the search for meaning. When he is not writing, Wen can be found wandering through old cemeteries, drawing inspiration from the spirits of the past.'),
('AF11837','Farah Leila A/P Aaminah','Farah Leila A/P Aaminah  is a bestselling author celebrated for her heartfelt and emotionally charged contemporary fiction. With a keen understanding of human relationships and a gift for crafting relatable characters, her novels resonate with readers on a profound level. Her stories explore themes of love, resilience, and personal growth, inviting readers to reflect on their own lives. When she is not writing, Farah enjoys long walks in the countryside and immersing herself in art galleries for inspiration.'),
('AC13891','Intan Kasih','Intan Kasih is a versatile author who effortlessly blends genres, from lighthearted comedies to poignant literary fiction. Her witty dialogue and keen observational skills bring her characters to life, creating stories that are equal parts entertaining and thought-provoking. Her writing explores themes of identity, cultural clashes, and the complexities of relationships. When she is not crafting stories, Intan can be found exploring the vibrant streets of her city, drawing inspiration from the diverse tapestry of humanity.'),
('AJ11258','Agus Sutrisno','Agus Sutrisno is a masterful storyteller known for his gripping historical fiction novels. With meticulous research and a talent for bringing the past to life, his works transport readers to pivotal moments in history. From epic battles to political intrigue, his narratives weave a tapestry of vivid detail and captivating plotlines. His dedication to authenticity and his ability to humanize historical figures have earned him a devoted following. When he is not immersed in history, he enjoys hiking and exploring ancient ruins.'),
('AF28318','Lee Chou Wei','Lee Chou Wei is a critically acclaimed author known for his introspective and philosophical works. With a focus on existential themes and deep introspection, his writing invites readers to question the nature of existence and the meaning of life. His thought-provoking narratives delve into the complexities of the human mind and the pursuit of truth. When he is not lost in contemplation, Lee enjoys hiking in the wilderness and seeking solitude to further explore the depths of his imagination.'),
('AK34112','Emily Collins','Emily Collins is a prolific author known for her captivating storytelling and ability to transport readers to new worlds. With a talent for creating relatable characters and compelling narratives, her writing has garnered critical acclaim. Her passion for literature and dedication to her craft shine through in every word she pens, leaving readers eagerly anticipating her next literary masterpiece.'),
('AG41025','Aldi Taher','Aldi Taher is one of legends in this field, he earned so many achievements, most of author in the world can not reach to his level. When he is not writing, he usually sings, his favorite song is Yellow by Coldplay, Look at the stars look how they shine for you.'),
('AA12162','Tokiman Sudarto','Tokiman Sudarto is a businessman from Indonesia, born in 12/5/1992.'),
('AG17480','Allen Mikhail','Allen Mikhail finished his study in Cambridge University in 4/5/1982 where he go to London to continue his study.'),
('AM45621','Papazola Kong','Papazola Kong was born in 12/9/1963. He wrote a book that really famous.'),
('AG54684','Beatrice Alfesra','Beatrice Alfesra is born in 3/9/1987. She got three brothers who are authors too.'),
('AC13894','Ritchie McDonald','Ritche McDonald is a student who finished his study in 23/12/2001. He is really smart that people call him "Albert Einstein The Second"');


create table Book (
ISBN nvarchar(50) Primary Key,
Title nvarchar(50),
Genre nvarchar(50),
Category_ID nvarchar(50) Foreign Key References Category(Category_ID),
Description nvarchar (4000),
Publisher_ID nvarchar (50) Foreign Key References Publisher(Publisher_ID),
Quantity int
);

insert into Book values
('1319761319136','The Accidental Wedding','Romance','Green','Matt and Lucy, who is a complete stranger, attend to a wedding for their mutual friend. By coincidence, their names are exactly same as the bride and groom. At that moment, the bride and groom are being late. The wedding organizer forces Matt and Lucy to become the subsitute so that the people not dissapointed. Read the rest of the story in this book.','PG002608',5),
('3256958657193','Sign of The Forgotten Amulet','Msytery','Yellow','John and Emily are having a trip to a remote island where they find a mysterious cave that has an intriguing entrance. Upon entering the cave, there were many signs of secret treasure inside. What is inside that mysterious cave?','PA007070','4'),
('5243413853968','Pig and Officer','Humor','Green','Piglet stole a carrot from his friend who is a rabbit. The rabbit does not like what he done and he report Piglet to the pig officer. The officer than chase piglet around the citry encountering funny accidents. The hillarious act of Piglet during his case will make you laugh out loud in this book.','PP111612',5),
('5295828858189','Psychology: A Comprehensive Overview','Student Project','Red','Chen Lny Dũa is a student from Vietnam who is studying in Johor Bahru. He is the best in his class of Psychology, and he write a book for Psychology student to study. With his knowledge this book is one of the best book for Psychology in the world.','PU006381',3),
('6358187418670','Crime of The Ugly Librarian','Mystery','Yellow','Johan Elliot or known as the Ugly Librarian is a librarian that already work around 23 years in a school library. One day Steven caught Ugly librarian walk around the library with blood on his right hand and on his left shoulder he brought large bag that assumed as a body. Read on to know how steven solve this mystery.','PA007070',4),
('7654145892875','Introduction to Human Anatomy','Journal','Red','The human body is like a city. The whole body anatomy is like a city government as the nervous system controls the body just like a government does. Find out more about the human anatomy in this book.','PU006381',3),
('9781594480003','The Book Thief','Historical Fiction','Yellow','Set in Nazi Germany, this novel tells the story of Liesel Meminger, a young girl who develops a love for books and finds solace in the midst of war.','PA123668',4),
('9780142437207','1984','Dystopian Fiction','Yellow','George Orwell classic depicts a totalitarian society under constant surveillance, where individuality is suppressed and the power of Big Brother reigns','PP062711',4),
('9780262537789','Science','Journal','Red','Science is the first book in the world that consist of all infromation about science, the best science book in the world.','PU006381',3),
('9780345472328','The Catcher in the Rye','Romance','Yellow','A controversial novel narrated by the disillusioned teenager Holden Caulfield as he navigates the complexities of adulthood and society','PL001521',4),
('9780345807293','A Game of Thrones','Epic Fantasy','Green','George R.R. Martin first book in the "A Song of Ice and Fire" series introduces readers to the complex web of political intrigue and power struggles in the Seven Kingdoms.','PB785621',5),
('9780385317717','The Great Gatsby','Literary Fiction','Yellow','A F. Scott Fitzgerald masterpiece that captures the decadence and disillusionment of the Jazz Age through the enigmatic Jay Gatsby and his obsession with the past.','PA123668',4),
('9781400079988','The Kite Runner','Historical Fiction','Yellow','A tale of friendship and redemption set against the backdrop of Afghanistans turbulent history, following two young boys from different social classes.','PA123668',4),
('9781451635621','Gone Girl','Mystery','Yellow','A gripping psychological thriller that follows the disappearance of Amy Dunne and the dark secrets that surface in her troubled marriage.','PB002781',4),
('9781984801814','The Silent Patient','Thriller','Green','A gripping psychological thriller about a woman with shocking act of violence and the therapist determined to unravel her mysterious silence.','PC014115',5);

create table Book_Author (
bookauthor_ID nvarchar(50) Primary Key,
ISBN nvarchar(50) Foreign Key References Book(ISBN),
author_ID nvarchar(50) Foreign Key References Author(author_ID));

insert into Book_Author values
('BA01','1319761319136','AF11837'),
('BA02','3256958657193','AG41025'),
('BA03','5243413853968','AL05694'),
('BA04','5295828858189','AJ28409'),
('BA05','6358187418670','AG41025'),
('BA06','7654145892875','AC13897'),
('BA07','9781594480003','AM45621'),
('BA08','9780142437207','AG17480'),
('BA09','9780262537789','AC13897'),
('BA10','9780345472328','AF11837'),
('BA11','9780345807293','AG54684'),
('BA12','9780385317717','AF28318'),
('BA13','9781400079988','AK34112'),
('BA14','9781451635621','AG41025'),
('BA15','9781984801814','AA12162'),
('BA16','9781400079988','AK34112'),
('BA17','9781400079988','AM45621');

create table Copy (
Copy_ID nvarchar (50) Primary Key,
ISBN nvarchar(50) Foreign Key References Book(ISBN),
Copy_Status nvarchar(20)
);

insert into Copy values
('C011','1319761319136','Out of Loan'),--quantity 5
('C012','1319761319136','Out of Loan'),
('C013','1319761319136','Out of Loan'),
('C014','1319761319136','Out of Loan'),
('C015','1319761319136','Out of Loan'),
('C021','3256958657193','Out of Loan'),--quantity 4
('C022','3256958657193','Out of Loan'),
('C023','3256958657193','Out of Loan'),
('C024','3256958657193','Out of Loan'),
('C031','5243413853968','Out of Loan'),--quantity 5
('C032','5243413853968','Available'),
('C033','5243413853968','Available'),
('C034','5243413853968','Available'),
('C035','5243413853968','Available'),
('C041','5295828858189','Available'),--quantity 3
('C042','5295828858189','Available'),
('C043','5295828858189','Available'),
('C051','6358187418670','Out of Loan'),--quantity 4
('C052','6358187418670','Out of Loan'),
('C053','6358187418670','Out of Loan'),
('C054','6358187418670','Available'),
('C061','7654145892875','Available'),--3
('C062','7654145892875','Available'),
('C063','7654145892875','Available'),
('C071','9781594480003','Out of Loan'),--quantity 4
('C072','9781594480003','Out of Loan'),
('C073','9781594480003','Available'),
('C074','9781594480003','Available'),
('C081','9780142437207','Out of Loan'),--quantity 4
('C082','9780142437207','Out of Loan'),
('C083','9780142437207','Out of Loan'),
('C084','9780142437207','Out of Loan'),
('C091','9780262537789','Available'),--quantity 3
('C092','9780262537789','Available'),
('C093','9780262537789','Available'),
('C101','9780345472328','Out of Loan'),--quantity 4
('C102','9780345472328','Available'),
('C103','9780345472328','Available'),
('C104','9780345472328','Available'),
('C111','9780345807293','Out of Loan'),--quantity 5
('C112','9780345807293','Out of Loan'),
('C113','9780345807293','Available'),
('C114','9780345807293','Out of Loan'),
('C115','9780345807293','Out of Loan'),
('C121','9780385317717','Available'),--quantity 4
('C122','9780385317717','Available'),
('C123','9780385317717','Available'),
('C124','9780385317717','Available'),
('C131','9781400079988','Available'),--q4
('C132','9781400079988','Out of Loan'),
('C133','9781400079988','Available'),
('C134','9781400079988','Available'),
('C141','9781451635621','Out of Loan'),--q4
('C142','9781451635621','Out of Loan'),
('C143','9781451635621','Out of Loan'),
('C144','9781451635621','Out of Loan'),
('C151','9781984801814','Out of Loan'),--q5
('C152','9781984801814','Out of Loan'),
('C153','9781984801814','Out of Loan'),
('C154','9781984801814','Out of Loan'),
('C155','9781984801814','Out of Loan');
 
create table Reservation(
reservation_ID nvarchar(50) Primary Key,
member_ID nvarchar(50) Foreign Key References Member(Member_ID),
status nvarchar(50)
);

insert into Reservation values 
('R01','KL016','Active'),
('R02','KL588','Active'),
('R03','KL075','Active'),
('R04','KL588','Active'),
('R05','KL129','Active');


create table reservation_copy(
reservedcopy_ID nvarchar(50) Primary Key,
copy_ID nvarchar(50) Foreign Key References Copy(Copy_ID),
reservation_ID nvarchar(50) Foreign Key References Reservation(reservation_ID)
);


insert into Reservation_Copy values
('RC01','C011','R01'),
('RC02','C021','R01'),
('RC03','C011','R02'),
('RC04','C023','R03'),
('RC05','C011','R04'),
('RC06','C041','R04'),
('RC07','C155','R04'),
('RC08','C081','R05'),
('RC09','C101','R05');

SELECT*FROM LOAN;
create table Loan(
loan_ID nvarchar(50) Primary Key,
member_ID nvarchar(50) Foreign Key References Member(Member_ID),
loan_date date,
return_date date,
);

insert into Loan values
('L01','KL016','1 January 2023','4 January 2023'),
('L02','KL016','21 January 2023','23 January 2023'), 
('L03','KL016','31 January 2023','2 February 2023'),
('L04','KL016','10 February 2023','12 February 2023'),
('L05','KL016','1 March 2023',' 13 March 2023'), 
('L06','KL016','29 May 2023',NULL), 
('L07','KL016','30 May 2023',NULL),
('L08','KL016','1 June 2023',NULL), 
('L09','KL016','2 June 2023',NULL), 
('L10','KL016','3 June 2023',NULL),

('L11','KL075','1 May 2023','2 May 2023'),
('L12','KL075','3 May 2023','5 May 2023'),
('L13','KL075','4 May 2023','9 May 2023'),
('L14','KL075','13 May 2023','14 May 2023'),
('L15','KL075','17 May 2023','25 May 2023'), 
('L16','KL075','18 May 2023','19 May 2023'),
('L17','KL075','20 May 2023','21 May 2023'),
('L18','KL075','23 May 2023','24 May 2023'),
('L19','KL075','1 June 2023',NULL),
('L20','KL075','1 June 2023',NULL),
('L21','KL075','2 June 2023',NULL),
('L22','KL075','3 June 2023',NULL),

('L23','KL116','3 May 2023','7 May 2023'),
('L24','KL116','7 May 2023','8 May 2023'),	
('L25','KL116','14 May 2023','17 May 2023'),	
('L26','KL116','25 May 2023','26 May 2023'),	
('L27','KL116','26 May 2023','29 May 2023'),	
('L28','KL116','8 April 2023','12 April 2023'),	
('L29','KL116','15 April 2023','23 April 2023'),
('L30','KL116','24 April 2023','25 April 2023'),	
('L31','KL116','25 April 2023','28 April 2023'),	
('L32','KL116','1 June 2023',NULL),	
('L33','KL116','3 June 2023',NULL),	
('L34','KL116','4 June 2023',NULL),	
('L35','KL116','5 June 2023',NULL),		
('L36','KL116','11 June 2023',NULL),

('L37','KL129','9 April 2023','11 April 2023'),
('L38','KL129','11 April 2023','15 April 2023'),
('L39','KL129','21 April 2023','23 April 2023'),
('L40','KL129','1 April 2023','2 April 2023'),
('L41','KL129','2 April 2023','3 April 2023'),
('L42','KL129','4 May 2023','7 May 2023'),
('L43','KL129','6 May 2023','8 May 2023'),
('L44','KL129','22 May 2023','23 May 2023'),
('L45','KL129','30 May 2023',NULL),
('L46','KL129','3 June 2023',NULL),
('L47','KL129','5 June 2023',NULL),
('L48','KL129','8 June 2023',NULL),
('L49','KL588','1 June 2023','3 June 2023');


SELECT*FROM Loaned_Copy;



create table Loaned_Copy(
loanedcopy_ID nvarchar(50) Primary Key,
copy_ID nvarchar(50) Foreign Key References Copy(copy_ID),
loan_id nvarchar(50) Foreign Key References Loan(Loan_ID)
);

insert into Loaned_Copy values
('LC001','C011','L01'),
('LC003','C031','L02'),
('LC004','C051','L03'),
('LC006','C101','L04'),
('LC009','C115','L05'),
('LC010','C151','L06'),
('LC011','C141','L07'),
('LC012','C142','L08'),
('LC013','C143','L09'),
('LC015','C153','L10'),
('LC016','C011','L23'),
('LC017','C012','L24'),
('LC018','C154','L25'),
('LC019','C052','L26'),
('LC020','C022','L27'),
('LC021','C155','L28'),
('LC022','C152','L29'),
('LC023','C102','L30'),
('LC024','C054','L31'),
('LC025','C033','L32'),
('LCO26','C034','L33'),
('LC027','C074','L34'),
('LCO28','C114','L35'),
('LC029','C073','L36'),
('LC030','C011','L11'),
('LC031','C014','L12'),
('LC032','C015','L13'),
('LC033','C021','L14'),
('LC034','C023','L15'),
('LC035','C024','L16'),
('LC036','C031','L17'),
('LC037','C041','L18'),
('LC038','C042','L19'),
('LC039','C091','L20'),
('LC040','C092','L21'),
('LC041','C122','L22'),
('LC042','C013','L37'),
('LC043','C014','L38'),
('LC044','C022','L39'),
('LC045','C015','L40'),
('LC046','C023','L41'),
('LC047','C024','L42'),
('LC048','C031','L43'),
('LC049','C132','L44'),
('LC050','C042','L45'),
('LC051','C091','L46'),
('LC052','C122','L47'),
('LC053','C092','L48'),
('LC061','C031','L49');


/* Q1: For each member who has borrowed more than 2 books, list the member names and the total number of books 
currently on loan to them. List the results in alphabetical order of member names*/
SELECT Member.Gender, COUNT (Member.Gender) AS Total_Gender
FROM Member
GROUP BY Member.Gender
ORDER BY Total_Gender DESC;

SELECT Member.Name, COUNT(Loaned_Copy.Copy_ID) AS Total_Books_Loaned
FROM (((Loaned_Copy
INNER JOIN Copy ON Copy.Copy_ID = Loaned_Copy.Copy_ID)
INNER JOIN Loan ON Loan.Loan_ID = Loaned_Copy.Loan_ID)
INNER JOIN Member ON Member.Member_ID = Loan.Member_ID)
WHERE Loan.Return_Date IS NULL
GROUP BY Member.Name
HAVING COUNT(Loaned_Copy.Copy_ID) > 2
ORDER BY Total_Books_Loaned;


/* Q2: List the total number of books available in each category. List the results in descending order of the 
total number*/
select Category_ID, count(Category_ID) as TotalBooksPerCategory 
from Book 
group by Category_ID
order by TotalBooksPerCategory desc;





/* Q3: Find the genre which has the highest number of books*/
SELECT
  Book.Genre,
  COUNT(Book.Title) AS Highest_Number
FROM
  Book
GROUP BY 
  Genre
ORDER BY Highest_Number desc;






/* Q4: Show the books which are currently available for loan*/
select DISTINCT Book.Title
From Book
JOIN Copy ON Book.ISBN = Copy.ISBN
WHERE Copy.Copy_Status='Available' group by Title;







/* Q5: List the members who had made more than 2 loans*/
select * from Member where total_loans > 2;





/* Q6: List the books which are written by more than 2 authors*/
select B.Title
from Book B
Join Book_Author BA ON B.ISBN = BA.ISBN
Group by B.Title
Having Count(BA.Author_ID) >2;





/* Q7: Find the members which has overdue loan*/ 
SELECT Member.Name,Book.Title,Copy.Copy_ID,Category.Category_ID,
DATEDIFF(day,Loan.loan_date,Loan.return_date) AS Overdue_Days
FROM (((((Loaned_Copy
INNER JOIN Copy ON Copy.Copy_ID = Loaned_Copy.Copy_ID)
INNER JOIN Loan ON Loan.Loan_ID = Loaned_Copy.Loan_ID)
INNER JOIN Member ON Member.Member_ID = Loan.Member_ID)
INNER JOIN Book ON Book.ISBN = Copy.ISBN)
INNER JOIN Category ON Category.Category_ID=Book.Category_ID)
WHERE DATEDIFF(day,Loan.Loan_date,loan.return_date) > Category.Loan_Period_Days;


/* Q8: Find the most frequently loaned books*/
select top 1 Book.Title, Count(Book.Title) as MostLoaned
from (((Loaned_Copy
inner join Copy on Copy.Copy_ID=Loaned_Copy.Copy_ID)
inner join Loan on Loan.Loan_ID=Loaned_Copy.Loan_ID)
inner join Book on Copy.ISBN=Book.ISBN)
group by Book.Title order by MostLoaned desc;






/* Q9: Find the total number of books published by each publisher*/
SELECT PublisherName, Count(PublisherName) AS total_books_published
FROM Publisher
JOIN Book ON Publisher.Publisher_ID=Book.Publisher_ID group by PublisherName order by total_books_published desc;






/* Q10: List the book which are currently under reservation. Show the result in alphabetical order*/
SELECT B.Title,C.Copy_ID
FROM Book B
JOIN Copy C ON B.ISBN = C.ISBN
JOIN Reservation_Copy RC ON C.Copy_ID = RC.Copy_ID
JOIN Reservation R ON RC.Reservation_ID = R.Reservation_ID
WHERE R.status = 'Active'
ORDER BY B.Title ASC;