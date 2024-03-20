//import 'package:basic_operations_supabase/pages/cadastro.dart';
import 'package:flutter/cupertino.dart';
import 'cadastro.dart';
import 'homePage.dart';
import 'listaPessoa.dart';


class Rotas{
  static const homePage = '/homePage';
  static const cadastro = '/cadastro';
  static const listaPessoa = '/listaPessoa';

  static Map<String, WidgetBuilder> define(){
    return{
      homePage: (BuildContext context) => HomePage(),
      cadastro: (BuildContext context) => Cadastro(),
      //listaPessoa: (BuildContext context) => ListaPessoa(),
    };
  }
}