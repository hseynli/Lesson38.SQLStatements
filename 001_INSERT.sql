-------------------------------------------------------------------------
				/* MyFriends adl? c?dv?l yarad?r?q */
-------------------------------------------------------------------------
CREATE TABLE MyFriends
(
	FrndId smallint IDENTITY NOT NULL,
	FstName Varchar(20) NOT NULL,
	LstName Varchar(20) NULL,
	BthDate date NULL,
	Ntel char(10) NOT NULL
)
GO -- ?m?liyyat?n sonu.

-------------------------------------------------------------------------
	-- sp_help proseduru veril?n bazas?n?n obyekti haqq?nda m?lumat qaytar?r.
-------------------------------------------------------------------------
EXEC sp_help MyFriends  


-------------------------------------------------------------------------
				/* M?lumatlar?n ?lav? edilm?si ucun INSERT operatoru */
-------------------------------------------------------------------------

-- MyFreand
INSERT INTO --MyFriends   c?dv?lin? m?lumat ?lav? edirik          -- INTO acar sozund?n istifad? etm?m?k olar.
(FstName, BthDate, Ntel) -- ?lav? etm? ard?c?ll?g?n? gost?ririk.
VALUES
('Max', 'Petrov', '02/03/1988', '093*******'); -- ?lav? edil?c?k m?lumatlar.
GO
-------------------------------------------------------------------------

-- ?lav? edil?c?k m?lumarlar?n hans? ard?c?ll?qla getm?sini d?yis? bil?rik.
INSERT INTO MyFriends
(LstName, FstName, BthDate, Ntel)
VALUES
('Martinov', 'Kostya', '01/03/1986', '097*******'); -- ?lav? edil?c?k m?lumatlar.
GO
-------------------------------------------------------------------------

INSERT INTO MyFriends
 -- Ard?c?ll?q yoxdur, dem?li default ard?c?ll?qla ?lav? etm?liyik.
VALUES
('Vitia', 'Sokolov', '01/03/1986', '095*******'); -- ?lav? edil?c?k m?lumatlar.
GO
-------------------------------------------------------------------------

INSERT INTO MyFriends
 -- Ard?c?ll?q yoxdur, dem?li default ard?c?ll?qla ?lav? etm?liyik.
VALUES
('Sokolov', 'Vitia', '01/03/1986', '095*******'); -- ?lav? edil?c?k m?lumatlar. (Daxil edil?n m?lumatlar?n ard?c?ll?g?n?n pozulmas?!).
GO

SELECT * FROM MyFriends
-------------------------------------------------------------------------

INSERT INTO MyFriends
VALUES 
 -- NOT NULL olan sutunlara NULL ?lav? etm?k olmaz
(NULL, 'Imelianov', '01/03/1986', '095*******'); -- ?lav? edil?c?k m?lumatlar.
GO
-------------------------------------------------------------------------

INSERT INTO MyFriends
VALUES
-- NULL olan sutunlara NULL d?y?ri ?lav? ed? bil?rik 
('Vitia', null, '01/03/1986', '095*******'); -- ?lav? edil?c?k m?lumatlar.
GO
-------------------------------------------------------------------------

INSERT INTO MyFriends
(FstName,LstName,BthDate,Ntel) 
VALUES -- 2008-ci ild?n baslayaraq c?dv?l? eyni zamanda bir nec? m?lumat ?lav? etm?k olar
('Max', 'Petrov', '02/21/1988', '093*******'),
('Alex', 'Vare', '03/20/1990', '093*******'),
('Sergei', 'Smolnikov', '05/31/1991', '093*******'),
('Petr', 'Vitiushkin', '03/06/1989', '093*******')
GO
-------------------------------------------------------------------------

INSERT INTO MyFriends
-- Sutunlar?n ard?c?ll?g?n? gost?rm?k mutl?q deyil
VALUES
('Max', 'Petrov', '02/21/1988', '093*******'),
('Alex', 'Vare', '03/20/1990', '093*******'),
('Sergei', 'Smolnikov', '05/31/1991', '093*******'),
('Petr', 'Vitiushkin', '03/06/1989', '093*******');
GO
-------------------------------------------------------------------------