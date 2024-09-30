
import 'conta_bancaria.dart';


void main() {

  var contaCorrente = ContaBancaria<double>(1000.0);

  contaCorrente.depositar(200.0);
  print('Saldo após depósito: ${contaCorrente.getSaldo()}'); 

  contaCorrente.sacar(150.0);
  print('Saldo após saque: ${contaCorrente.getSaldo()}'); 
}
