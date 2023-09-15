import 'package:meu_banco/lib/contas/conta_poupanca.dart';
import 'package:meu_banco/lib/contas/conta_salario.dart';
import 'package:meu_banco/lib/banco.dart';
import 'package:meu_banco/lib/transacoes/transacao.dart';

void main() {
  var banco = Banco();
  var contaPoupanca1 = ContaPoupanca('Gabriel Prisco');
  var contaPoupanca2 = ContaPoupanca('Guilherme Men');
  var contaSalario = ContaSalario('Pedro Mazuranna');

  banco.adicionarConta(contaPoupanca1);
  banco.adicionarConta(contaPoupanca2);
  banco.adicionarConta(contaSalario);

  var transacao1 = Transacao(contaPoupanca1, contaPoupanca2, 100.0);
  var transacao2 = Transacao(contaSalario, contaPoupanca1, 200.0);

  if (transacao1.executar()) {
    print('Transação 1 realizada com sucesso.');
  } else {
    print('Transação 1 falhou.');
  }

  if (transacao2.executar()) {
    print('Transação 2 realizada com sucesso.');
  } else {
    print('Transação 2 falhou.');
  }

  print('Saldo da conta Poupança 1: ${contaPoupanca1.consultarSaldo()}');
  print('Saldo da conta Poupança 2: ${contaPoupanca2.consultarSaldo()}');
  print('Saldo da conta Salário: ${contaSalario.consultarSaldo()}');
}
