void main(List<String> args) {
  //1)
  calculaIndice(13);

  //2)
  fibonnaci(34); //Passar número por argumento, compara até o 100.000

  /*
  3)
  a) 1, 3, 5, 7, 9, 11, 13, 15....
  b) 2, 4, 8, 16, 32, 64, 128, 256....
  c) 0, 1, 4, 9, 16, 25, 36, 49, 64, 81....
  d) 4, 16, 36, 64, 100, 144, 196...
  e) 1, 1, 2, 3, 5, 8, 13, 21, 34, 55...
  f) 2, 10, 12, 16, 17, 18, 19, 200...
  */

  //4)
  calculaDistanciaCarros();

  //5)
  inverterPalavra("rua"); //Passar string como argumento.
}

int calculaIndice(int n) {
  int INDICE = n, SOMA = 0, K = 0;

  for (K; K < INDICE; K++) {
    SOMA = SOMA + K;
  }
  return SOMA;
}

bool fibonnaci(int n) {
  int inicia = 1, fib = 0, aux = 0;

  while (fib < 100000) {
    if (fib == n) {
      print(fib);
      return true;
    } else {
      print(fib);
      fib = fib + aux;
      aux = inicia;
      inicia = fib;
    }
  }
  return false;
}

void calculaDistanciaCarros() {
  double velCarro = 110;
  double velCaminhao = 80;

  double distancia = 110;

  double tempoCaminhao2 = (distancia / velCaminhao) + (10 / 60);
  double velRealCaminhao = distancia / tempoCaminhao2;
  double tempoDoEncontro;
  tempoDoEncontro = distancia / (velCarro + velRealCaminhao);

  double distanciaDeRBCarro = tempoDoEncontro * velCarro;
  double distanciaDeFrancaCarro = 110 - distanciaDeRBCarro;
  print("Distância (Carro) de RB = " + distanciaDeRBCarro.toString() + "km");
  print("Distância (Carro) de Franca = " + distanciaDeFrancaCarro.toString() + "km");

  double distanciaDeFrancaCaminhao = tempoDoEncontro * velRealCaminhao;
  double distanciaDeRBCaminhao = 110 - distanciaDeFrancaCaminhao;
  print("Distância (Caminhao) de Franca = " + distanciaDeFrancaCaminhao.toString() + "km");
  print("Distância (Caminhao) de RB = " + distanciaDeRBCaminhao.toString() + "km");
  print("Mesma Distância");
}

void inverterPalavra(String palavra) {
  String inversa = '';
  for (int i = palavra.length; i >= 1; i--) {
    inversa += palavra.substring(i - 1, i);
  }
  print(inversa);
}
