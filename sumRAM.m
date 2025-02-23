%Calculo de la diferencia de memorias 
HexValue = 'FE'
hex2dec = hex2dec(HexValue) 
DataHex = {'5FFF','9FFF','ABFF','ADFF'}  % using a cell array of strings to store multiple values
DataDec = hex2dec(DataHex) % hex2dec can operate on such a cell array. No need to loop.

