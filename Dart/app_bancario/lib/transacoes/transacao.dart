import '../contas//conta_bancaria.dart';

class Transacao {
  ContaBancaria origem;
  ContaBancaria destino;
  double valor;

  Transacao(this.origem, this.destino, this.valor);

  bool executar() {
    if (origem.saldo >= valor) {
      origem.saque(valor);
      destino.deposito(valor);
      return true;
    } else {
      print('Transação falhou: Saldo insuficiente na conta de origem.');
      return false;
    }
  }
}
