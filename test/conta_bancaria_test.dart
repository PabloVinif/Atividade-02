import 'package:flutter_app/conta_bancaria.dart'


void main() {
  group('Testes ContaBancaria com Generics', () {
    test('Teste de depósito em conta bancária com double', () {
      var conta = ContaBancaria<double>(500.0);
      conta.depositar(100.0);
      expect(conta.getSaldo(), 600.0);
    });

    test('Teste de saque em conta bancária com double', () {
      var conta = ContaBancaria<double>(1000.0);
      conta.sacar(300.0);
      expect(conta.getSaldo(), 700.0);
    });

    test('Teste de saldo insuficiente ao sacar', () {
      var conta = ContaBancaria<double>(200.0);
      expect(() => conta.sacar(300.0), throwsException);
    });

    test('Teste com tipo inválido para a operação', () {
      var conta = ContaBancaria<int>(500);
      expect(() => conta.depositar('valor'), throwsException);
    });
  });
}
