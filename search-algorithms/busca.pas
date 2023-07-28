
Program busca;

Uses crt;

Type Result = Record
  Found : boolean;
  Position : integer;
  Iterations : integer;
End;

Var valuesArray : array[1..16] Of integer;

Var i, value : Integer;

Var searchResult : Result;

Function search (value : integer; vetor : Array Of integer) : Result;
Begin
  search.Found := false;
  search.Position := -1;
  search.Iterations := length(vetor);
  For i := 1 To length(vetor) Do
    Begin
      If vetor[i] = value Then
        Begin
          search.Found := true;
          search.Position := i;
          search.Iterations := i;
          exit;
        End
    End;
End;

Begin
  Randomize;

  writeln('Populando vetor de valores...');
  For i := 1 To 16 Do
    Begin
      valuesArray[i] := Random(100) + 1;
      writeln(valuesArray[i]);
    End;

  writeln('Digite o valor que deseja buscar:');
  readln(value);

  searchResult := search(value,valuesArray);

  If searchResult.Found Then
    Begin
      writeln('Valor encontrado na posicao ',searchResult.Position,' em ',
              searchResult.
              Iterations,' iteracoes');
    End
  Else
    Begin
      writeln('Valor nao encontrado');
    End;

End.
