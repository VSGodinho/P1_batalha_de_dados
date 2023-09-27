import 'dart:io';
import 'dart:math';

void main() {
  int v = 0, p = 0, e = 0;
  //Introdução e Rodadas
  stdout.writeln("Batalha de Dados\nQuantas rodadas gostaria de jogar?");
  int? n = int.parse(stdin.readLineSync()!);

  //Rolagem, Calculo e Determinação de vencedor
  for (int i = 0; i < n; i++) {
    //Dados e soma do usuário
    var gerador = Random();
    int d1 = gerador.nextInt(6) + 1;
    int d2 = gerador.nextInt(6) + 1;
    int d3 = gerador.nextInt(6) + 1;
    int sd1 = (d1 + d2 + d3);
    stdout.writeln("Seus dados: $d1, $d2, $d3\nSoma: $sd1");

    //Dados e soma oponente
    int d4 = gerador.nextInt(6) + 1;
    int d5 = gerador.nextInt(6) + 1;
    int d6 = gerador.nextInt(6) + 1;
    int sd2 = (d4 + d5 + d6);
    stdout.writeln("Dados do oponente: $d4, $d5, $d6\nSoma: $sd2");

    //Vencedor
    if (sd1 > sd2) {
      stdout.writeln("Você ganhou a rodada!!\n");
      v = v + 1;
    } else {
      if (sd2 > sd1) {
        stdout.writeln("Você perdeu a rodada!!\n");
        p = p + 1;
      } else {
        stdout.writeln("Empate!!\n");
        e = e + 1;
      }
    }
  }

  //Placar e vencedor
  stdout.writeln("Resultado Final:\nVitorias: $v\nDerrotas: $p\nEmpates: $e\n");
  if (v > p) {
    stdout.writeln("Você ganhou a partida!!");
  } else {
    if (p > v) {
      stdout.writeln("Você perdeu a partida!!");
    } else {
      stdout.writeln("Empate!!");
    }
  }
}
