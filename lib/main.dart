import 'package:flutter/material.dart';
import 'package:supabase_aula/pages/homePage.dart'; // Importe a HomePage diretamente
import 'package:supabase_aula/keysSupabase.dart';
import 'package:supabase_aula/rotas.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: KeysSupabase().urlSupabase,
    anonKey: KeysSupabase().anonKey,
  );
  runApp(MyApp()); // Inicialize o aplicativo com a HomePage
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Defina a HomePage como a tela inicial
      routes: Rotas.define(),
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('Rota não encontrada!'),
            ),
          ),
        );
      },
    );
  }
}
