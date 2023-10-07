USE ShopDB;
GO

INSERT MyFriends 
(FstName, Ntel)
VALUES ('Max', '050*******');
GO

SELECT * FROM MyFriends;

--------------------------------------------------------------------------
--	      UPDATE operatoru (c?dv?ld? m?lumatlar?n d?yisilm?si(yenil?nm?si))
--------------------------------------------------------------------------

UPDATE MyFriends
SET Ntel = '098*******'
WHERE FstName = 'Max'	-- Ad? 'Max' olan adam?n telefonun d?yisdirilm?si
GO

SELECT * FROM MyFriends;


-- Eyni zamanda bir nec? sutunda m?lumatlar? d?yism?k olar
UPDATE MyFriends
SET FstName = 'TestName',
	Ntel = '000*******'
WHERE FstName = 'Max'

SELECT * FROM MyFriends;


UPDATE MyFriends
SET Ntel = '060*******' -- ?g?r WHERE s?rti verilm?yibs?, onda c?dv?ld?ki butun m?lumatlar yenil?n?c?k
GO

SELECT * FROM MyFriends;


--------------------------------------------------------------------------
--	           DELETE operatoru (M?lumatlar?n veril?nl?r bazas?ndan silinm?si)
--------------------------------------------------------------------------

-- Adlar? TestName olan butun istifad?cil?ri silm?k
DELETE MyFriends 
WHERE FstName = 'TestName';
SELECT * FROM MyFriends;

-- Butun m?lumatlar? bazadan silm?k.
DELETE MyFriends;
SELECT * FROM MyFriends;

-- Butun m?lumatlar? silm?k ucun TRUNCATE ?mrind?n istifad? etm?k daha m?sl?h?tlidir,
-- cunki TRUNCATE ?mri DELETE ?mrind?n daha sur?tli isl?yir.
TRUNCATE TABLE MyFriends;
SELECT * FROM MyFriends;