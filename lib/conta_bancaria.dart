class ContaBancaria<T extends num> {
  T saldo;

  ContaBancaria(this.saldo);

  void depositar(T valor) {
    saldo = (saldo + valor) as T;
  }

  void sacar(T valor) {
    if (saldo >= valor) {
      saldo = (saldo - valor) as T;
    } else {
      throw Exception('Saldo insuficiente');
    }
  }

  T getSaldo() {
    return saldo;
  }
}
