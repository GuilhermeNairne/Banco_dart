import 'package:test/test.dart';
import '../lib/banco.dart';
import '../lib//contas/conta_poupanca.dart';
import '../lib//contas/conta_salario.dart';
import '../lib/transacoes/transacao.dart';

void main() {
  test('Teste de Transação', () {
    var banco = Banco();
    var contaPoupanca1 = ContaPoupanca('Gabriel Prisco');
    var contaSalario = ContaSalario('Guilherme Men');
    var contaSalario = ContaSalario('Pedro Mazuranna');

    banco.adicionarConta(contaPoupanca1);
    banco.adicionarConta(contaSalario);

    var transacao = Transacao(contaPoupanca1, contaSalario, 200.0);

    expect(transacao.executar(), true);

    expect(contaPoupanca1.consultarSaldo(), 250.0);
    expect(contaSalario.consultarSaldo(), 200.0);
  });
}
