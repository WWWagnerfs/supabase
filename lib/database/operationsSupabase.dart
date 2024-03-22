import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:postgrest/postgrest.dart';



class OperationsSupabaseDB {
  final supabase = Supabase.instance.client;

  Future<void> insertRowSupabase(String nome, String email, String CPF,
      String dtn, String telefone,) async {
    await supabase
        .from('cadastro')
        .insert({
      'nome': nome,
      'email': email,
      'cpf': CPF,
      'dtn': dtn,
      'telefone': telefone
    });
  }

  Future<void> insertProductSupabase(String nome, String descricao,
      String preco) async {
    await supabase
        .from('cadastroproduto')
        .insert({'nome': nome, 'descricao': descricao, 'preco': preco});
  }

  Future<void> insertFornecedor(String nome, String email, String CNPJ,
      String rs, String telefone) async {
    await supabase
        .from('cadastrofornecedor')
        .insert({
      'nome': nome,
      'email': email,
      'cnpj': CNPJ,
      'rs': rs,
      'telefone': telefone
    });
  }

  Future<void> excluirFornecedorSupabase(String nome) async {
    await supabase
        .from('cadastrofornecedor')
        .delete()
        .match({ 'nome': nome});
  }

  Future<void> updateFornecedorSupabase(String nome, String novoNome) async {
    await supabase
        .from('cadastrofornecedor')
        .update({ 'nome': novoNome})
        .match({ 'nome': nome});
  }

  Future<List<String>> getFornecedorSupabase() async {
    List<String> nomes = [];

    final data = await supabase.from('cadastrofornecedor').select('nome');

    for (var fornecedor in data) {
      nomes.add(fornecedor['nome']);
    }
    return nomes;
  }

  Future<List<String>> getPessoasSupabase() async {
    List<String> nomes = [];

    final data = await supabase.from('cadastro').select('nome');

    for (var pessoa in data) {
      nomes.add(pessoa['nome']);
    }
    return nomes;
  }

  Future<void> excluirPessoaSupabase(String nome) async {
    await supabase
        .from('cadastro')
        .delete()
        .match({ 'nome': nome});
  }

  Future<void> updatePersonRowSupabase(String nome, String novoNome) async {
    await supabase
        .from('cadastro')
        .update({ 'nome': novoNome})
        .match({ 'nome': nome});
  }

  //lista produtos
  Future<List<String>> getProdutosSupabase() async {
    List<String> nome = [];

    final data = await supabase.from('cadastroproduto').select('nome');
    for (var produto in data) {
      nome.add(produto['nome']);
    }
    // Mapear a lista de Map<String, dynamic> para uma lista de strings
    return nome;
  }

  Future<void> deleteProductRowSupabase(String nome) async {
    await supabase
        .from('cadastroproduto')
        .delete()
        .match({ 'nome': nome});
  }

  Future<void> updateProductRowSupabase(String nome, String novoNome) async {
    await supabase
        .from('cadastroproduto')
        .update({ 'nome': novoNome})
        .match({ 'nome': nome});
  }
}