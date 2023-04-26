
alter FUNCTION f_Limpeza_Caracteres(@number varchar(max)) RETURNS varchar(13) AS
BEGIN
 DECLARE @c int
 declare @numero1 int
 declare @numero2 int
 set @numero1 = 48
 set @numero2 = 57
 SET @c=0
 WHILE ((@c < @numero1 or @c > @numero2 ) and @c <=255) BEGIN
  SET @number=replace(@number,char(@c),'')
  SET @c=@c+1
 END
 RETURN(@number)
END