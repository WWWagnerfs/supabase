import 'package:flutter/cupertino.dart';
import 'package:supabase_aula/pages/cadastro.dart';
import 'package:supabase_aula/pages/cadastroFornecedor.dart';
import 'package:supabase_aula/pages/cadastroProduto.dart';
import 'package:supabase_aula/pages/homePage.dart';
import 'package:supabase_aula/pages/listaFornecedor.dart';
import 'package:supabase_aula/pages/listaPessoa.dart';
import 'package:supabase_aula/pages/listaProdutos.dart';

class Rotas {
  static const homePage = '/homePage';
  static const cadastro = '/cadastro';
  static const listaPessoa = '/listaPessoa';
  static const cadastroProduto = '/cadastroProduto';
  static const cadastroFornecedor = '/cadastroFornecedor';
  static const listaProdutos = '/listaProdutos';
  static const listaFornecedor = '/listaFornecedor';

  static Map<String, WidgetBuilder> define() {
    return {
      homePage: (BuildContext context) => HomePage(),
      cadastro: (BuildContext context) => Cadastro(),
      listaPessoa: (BuildContext context) => ListaPessoaPage(),
      cadastroProduto: (BuildContext context) => CadastroProduto(),
      cadastroFornecedor: (BuildContext context) => CadastroFornecedor(),
      listaProdutos: (BuildContext context) => ListarProdutosPage(),
      listaFornecedor: (BuildContext context) => ListaFornecedorPage(),

    };
  }
}
