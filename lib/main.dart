import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LeitorArquivo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LeitorArquivo extends StatefulWidget {
  @override
  State<LeitorArquivo> createState() => _LeitorArquivoState();
}

class _LeitorArquivoState extends State<LeitorArquivo> {
  String conteudo = "Carregando arquivo...";

  @override
  void initState() {
    super.initState();
    lerArquivo();
  }

  Future<void> lerArquivo() async {
    final texto = await rootBundle.loadString("assets/data.txt");
    setState(() {
      conteudo = texto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exemplo CI/CD - Jenkins")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            conteudo,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
