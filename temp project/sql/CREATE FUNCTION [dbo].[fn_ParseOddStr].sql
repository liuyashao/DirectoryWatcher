CREATE FUNCTION [dbo].[fn_ParseOddStr] ( @OddStr VARCHAR(MAX) )
RETURNS TABLE
RETURN
    WITH    a AS ( SELECT   id ,
                            value
                   FROM     dbo.fn_splitstr(@OddStr, '+')
                   WHERE    value <> ''
                 ),
            b AS ( SELECT   a.id ,
                            CASE WHEN 0 < CHARINDEX('*', value)
                                 THEN SUBSTRING(value, 1,
                                                CHARINDEX('*', value) - 1)
                                 ELSE '1'
                            END AS piece ,
                            CASE WHEN 0 < CHARINDEX('*', value)
                                 THEN SUBSTRING(value,
                                                CHARINDEX('*', value) + 1,
                                                LEN(value))
                                 ELSE value
                            END AS spec
                   FROM     a
                 ),
            c AS ( SELECT   id ,
                            CAST(piece AS INT) AS piece ,
                            CAST(spec AS DECIMAL(18, 2)) AS spec
                   FROM     b
                   WHERE    LTRIM(RTRIM(piece)) <> ''
                            AND LTRIM(RTRIM(spec)) <> ''
                 )
    SELECT  *
    FROM    c WHERE piece*spec>0;

--select * from fn_ParseOddStr('3*20+30+96*63')

--select * from fn_ParseOddStr(' 1+ 4')

--select * from fn_ParseOddStr('0+2*2+0')

--select CHARINDEX(' 3  *  30', '*')

--select * from fn_ParseOddStr('8*30.74') PurInStoreSubBillView SaleSendSubBillView

GO


