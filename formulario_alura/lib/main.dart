import 'package:flutter/material.dart';
import 'package:formulario_alura/models/produto.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Cadastrando produto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
                decoration: InputDecoration(labelText: 'Nome'),
                controller: _controladorNome),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Quantidade'),
                  controller: _controladorQuantidade),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Valor'),
                  controller: _controladorValor),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: ElevatedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  final String nome = _controladorNome.text;
                  final int quantidade =
                      int.tryParse(_controladorQuantidade.text);
                  final double valor = double.tryParse(_controladorValor.text);

                  final Produto produtoNovo = Produto(nome, quantidade, valor);
                  print(produtoNovo);
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
