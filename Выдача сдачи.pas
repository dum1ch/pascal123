{ Бакалейная лавка }
PROGRAM Grocery(INPUT,OUTPUT);
VAR
  Change, TotalPrice,AmountPrice: REAL;
  Dollars, Quarters, Dimes, Nickels, Cents ,
  hund,fifd,twend,tend,fivd,oned,changepeny:INTEGER;
BEGIN
  WRITE('Введите полученную сумму: ');
  READLN(AmountPrice);//тут считываем полученную сумму с клавиатуры
  WRITE('Введите сумму покупки: ');
  READLN(TotalPrice);
  Change := AmountPrice - TotalPrice;
  Dollars:= trunc(Change);
  Changepeny:=trunc((Change-Dollars)*100);
  hund:= Dollars div 100;
  Dollars:= Dollars mod 100;
  fifd:= Dollars div 50;
  Dollars:= Dollars mod 50;
  twend:= Dollars div 20;
  Dollars:= Dollars mod 20;
  tend:= Dollars div 10;
  Dollars:= Dollars mod 10;
  fivd:=Dollars div 5;
  Dollars:= Dollars mod 5;
  { 25центовые монеты }
  Quarters := Changepeny DIV 25;
  Changepeny := Changepeny MOD 25;
  { 10центовые монеты }
  Dimes := Changepeny DIV 10;
  Changepeny := Changepeny MOD 10;
  { 5центовые монеты }
  Nickels := Changepeny DIV 5;
  Changepeny := Changepeny MOD 5;
  { 1центовые монеты }
  Cents := Changepeny;
  WRITELN('Сдача:');
  WRITELN(hund,' 100 $ купюра');
  WRITELN(fifd,' 50 $ купюра');
  WRITELN(twend,' 20 $ купюра');
  WRITELN(tend,' 10 $ купюра'); 
  WRITELN(fivd,' 5 $ купюра');
  WRITELN(dollars,' 1 $ купюра');
  WRITELN(Quarters,' 25 центовые монеты');
  WRITELN(Dimes,' 10 центовые монеты');
  WRITELN(Nickels, ' 5 центовые монеты');
  WRITELN(Cents, ' 1 центовые монеты')
END.