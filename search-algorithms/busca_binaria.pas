
Program busca;

Uses crt;

Type Result = Record
  Found : boolean;
  Position : integer;
  Iterations : integer;
End;

Var valuesArray : array[1..16] Of integer;

Var i, value, half, iterations : Integer;

Var searchResult : Result;

Function search (value : integer; vector : Array Of integer) : Result;
Begin
  search.Found := false;
  search.Position := -1;
  search.Iterations := length(vector);

  half := Round(length(vector) / 2);

  If half = value Then
    Begin
      search.Found := true;
      search.Position := half;
      search.Iterations := 1;
      exit;
    End;
  
  If value > half Then
    Begin
      For i := half + 1 To length(vector) Do
        Begin
          iterations := iterations + 1;
          If vector[i] = value Then
            Begin
              search.Found := true;
              search.Position := i;
              search.Iterations := iterations;
              exit;
            End
        End;
    End;

  If value < half Then
    Begin
      For i := 1 To half - 1 Do
        Begin
          If vector[i] = value Then
            Begin
              search.Found := true;
              search.Position := i;
              search.Iterations := i;
              exit;
            End;
        End;
    End;
End;

Begin

  writeln('Populando vetor de valores...');
  For i := 1 To 16 Do
    Begin
      valuesArray[i] := i + 10;
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
