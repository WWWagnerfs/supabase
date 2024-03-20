import 'package:supabase_flutter/supabase_flutter.dart';

class OperationsSupabaseDB{
  final supabase = Supabase.instance.client;

  Future<void> insertRowSupabase(String nome, String email, String CPF, String dtn, String telefone,) async {

    await supabase
        .from('cadastro')
        .insert({'nome': nome, 'email': email, 'cpf': CPF, 'dtn':dtn, 'telefone': telefone});
  }
  Future<List<String>> listPersonsRowSupabase() async {
    List<String> nomes = [];

    final data = await supabase.from('AppCadastrarPessoas').select('nome');

    for (var pessoa in data) {
      nomes.add(pessoa['nome']);
    }
    return nomes;
  }

  Future<void> deletePersonRowSupabase(String nome) async{
    await supabase
        .from('AppCadastrarPessoas')
        .delete()
        .match({ 'nome': nome });
  }

  Future<void> updatePersonRowSupabase(String nome, String novoNome) async {
    await supabase
        .from('AppCadastrarPessoas')
        .update({ 'nome': novoNome })
        .match({ 'nome': nome });
  }
}

