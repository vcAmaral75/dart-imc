import 'dart:io';

void main() {
  print('Olá, sou o calculador de IMC.\n'
      'Para ajudá-lo a calcular seu IMC, digite a sua altura:');
  String? input = stdin.readLineSync();
  if (input != null) {
    double altura = double.parse(input);
    print('Ok, sua altura é $altura. Mas e o seu peso atual, conta para mim:');
    String? input2 = stdin.readLineSync();
    if (input2 != null) {
      double peso = double.parse(input2);
      print('Certinho, seu peso atual é $peso\n'
          'Agora vamos calcular seu IMC, bora lá?');
      double imc = peso / (altura * altura);
      print ('Seu IMC é $imc , mas o que significa isso? Você quer saber mais?');
      String? input3 = stdin.readLineSync();
      if (input3 != null) {
        String resposta = input3;
        if (resposta == 'Y' || resposta == 'S' || resposta == 'Sim') {
          if (imc < 18.5) {
            print('Seu IMC está abaixo do normal, se liga a classificação é de MAGREZA!');
          }
          if (imc >= 18.5 && imc < 25) {
            print('Seu IMC está NORMAL, parabéns e continue cuidando da sua saúde!');
          }
          if (imc >= 25 && imc < 30) {
            print('Seu IMC está um pouquinho acima do normal, a classificação é de SOBREPESO!');
          }
          if (imc >= 30 && imc < 40) {
            print('Seu IMC está acima normal, fica esperto a classificação é de OBESIDADE II!');
          }
          if (imc > 40) {
            print('Seu IMC está MUITO ACIMA do normal, a classificação já é de OBESIDADE III, se cuida!');
          }
        } else {
          print('Ok, obrigada por interagir comigo, até a próxima!');
        }
      }
    }
  }
}
