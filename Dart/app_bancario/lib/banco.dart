import 'contas/conta_bancaria.dart';
import 'contas/conta_poupanca.dart';
import 'contas/conta_salario.dart';
import 'contas/conta_corrente.dart';
import 'transacoes/transacao.dart';

class Banco {
  List<ContaBancaria> contas = [];

  void adicionarConta(ContaBancaria conta) {
    contas.add(conta);
  }

  void realizarTransacao(Transacao transacao) {
    transacao.executar();
  }
}
