import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
        title: const Text('Página Inicial', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 6,
          itemBuilder: (context, index){
            List<IconData> icons=[
              Icons.abc,
              Icons.ice_skating,
              Icons.ice_skating,
              Icons.ice_skating,
              Icons.ice_skating,
              Icons.ice_skating,
            ];
            List<String> titles=[
              'Cadastro',
              'Cadastro',
              'Cadastro',
              'Cadastro',
              'Cadastro',
              'Cadastro',
            ];
            return GestureDetector(
                onTap: () {
              switch(index){
                case 0: Navigator.pushNamed(context, AppRoutes.registerPersonPage);
                break;

                case 3: Navigator.pushNamed(context, AppRoutes.listPersonPage);
                break;
              };
              // Aqui você pode adicionar a navegação para cada página
              // Exemplo: Navigator.push(context, MaterialPageRoute(builder: (context) => SuaPaginaDeCadastro()));
              print('Navegando para ${titles[index]}');
            },
            child: Card(
              color: Colors.blueAccent,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(icons[index], size: 80, color: Colors.blue,),
                    Text(titles[index], style: TextStyle(color: Colors.white),),
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

class AppRoutes {
}

