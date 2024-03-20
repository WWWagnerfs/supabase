import 'package:flutter/material.dart';
import 'package:supabase_aula/pages/rotas.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 15,
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
        title: const Text(
          'Página Inicial',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 6,
          itemBuilder: (context, index) {
            List<IconData> icons = [
              Icons.person_add_alt_1,
              Icons.shopify_rounded,
              Icons.local_shipping,
              Icons.person_search_rounded,
              Icons.assignment,
              Icons.business,
            ];
            List<String> titles = [
              'Cadastrar Pessoas',
              'Cadastro de Produtos',
              'Cadastrar Fornecedor',
              'Listar Pessoas',
              'Listar Produtos',
              'Listar Fornecedor',
            ];
            return GestureDetector(
              onTap: () {
                switch (index) {
                  case 0:
                  case 1:
                  case 2:
                    Navigator.pushNamed(context, Rotas.cadastro);
                    break;
                  case 3:
                  case 4:
                  case 5:
                    Navigator.pushNamed(context, Rotas.listaPessoa);
                    break;
                }
                print('Navegando para ${titles[index]}');
              },
              child: Card(
                color: Colors.blueAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(icons[index], size: 80, color: Colors.white),
                    Text(titles[index], style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
