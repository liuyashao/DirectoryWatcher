CREATE FUNCTION [dbo].[fn_splitstr]
    (
      @str VARCHAR(MAX) ,
      @Separator VARCHAR(1) = '+'
    )
RETURNS @r TABLE
    (
      id INT IDENTITY(1, 1) ,
      value VARCHAR(5000)
    )
AS
    BEGIN
      /* Function body */
        DECLARE @pos INT;

        SET @pos = CHARINDEX(@Separator, @str);

        WHILE @pos > 0
            BEGIN
                INSERT  @r
                        ( value )
                VALUES  ( LEFT(@str, @pos - 1) );

                SELECT  @str = STUFF(@str, 1, @pos, '') ,
                        @pos = CHARINDEX(@Separator, @str);
            END;

        IF @str > ''
            INSERT  @r
                    ( value )
            VALUES  ( @str );

        RETURN;
    END; 
  
  /*
  
  with a as(
  select * from dbo.fn_splitstr('1*30+22+34', '+')
  ),
  b as(
  select a.value, v.value from a apply join dbo.fn_splitstr(trim(a.value), '*') as v
  )
  select * from b  
  
  */

GO


