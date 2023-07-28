program calculo_imc;

uses crt;

type Pessoa = record
  Nome : string;
  Peso : integer;
  Altura : real;
end;

var pessoas : array [1..100] of Pessoa;
var resp : char;
var i : integer;
var imc : real;
var result : string;

function calculaImc (peso : integer; altura : real) : real;
begin
  calculaImc := peso / (altura * altura);
end;

function avaliaImc (imc : real) : string;
begin      
  if(imc < 18.5) then 
    Exit('Abaixo do Peso')
  else if(imc < 25 ) then
    Exit('Normal')
  else if(imc < 30 ) then
    Exit('Acima do Peso')
  else
    Exit('Obesidade')
end; 

begin
  resp := 's';
  i := 0;

  clrscr;

  writeln('============== Calculadora IMC ==============');
  writeln();
  writeln('================= Cadastro ==================');

  while (resp = 's') or (resp = 'S') do
  begin
      i := i+1;
      writeln('Digite o nome:');
      readln(pessoas[i].Nome);
      writeln('Digite o peso:');
      readln(pessoas[i].Peso);
      writeln('Digite a altura:');
      readln(pessoas[i].Altura);

      writeln('Quer cadastrar outra pessoa? [S]im ou [N]ao');
      readln(resp);
  end;
  
  writeln('================= Tabela IMC ================');
  writeln();

  for i:= 1 to i do
  begin
    imc := calculaImc(pessoas[i].Peso, pessoas[i].Altura);
    result := avaliaImc(imc);

    writeln(
      'Nome: ', pessoas[i].Nome, 
      ' | Peso: ', pessoas[i].Peso, 'kg', 
      ' | Altura: ', pessoas[i].Altura:1:2,
      ' | IMC: ', imc:1:2, 'kg/m²',
      ' | Situação: ', result
      );
    writeln();
  end;

  readln();
end.