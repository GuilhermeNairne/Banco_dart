class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void deposito(double valor) {
    saldo += valor;
  }

  void saque(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
    } else {
      print('Saldo insuficiente.');
    }
  }

  double consultarSaldo() {
    return saldo;
  }

  void extrato() {
    print('Extrato: Saldo atual R\$ $saldo');
  }
}
