
program exemplo_pilhas;

uses crt, Pilhas;

var n : Integer;
var i : Integer;
var p : Pilha;

begin
    Randomize;
    Init(p);

    writeln('Empilhando 5 numeros aleatorios...');
    for i:= 1 to 5 do
      begin
        n := random(100) + 1;
        Push(p, n);
        writeln(Top(p));
      end;
      
    writeln();
    writeln('Numero do topo da pilha: ', Top(p));
    writeln();
    
    writeln('Desempilhando os numeros...');
    for i:= 1 to 5 do
      begin
        writeln(Top(p));
        Pop(p);
      end;

    writeln();
end.