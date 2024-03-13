import 'package:supabase_flutter/supabase_flutter.dart';

class OperationsSupabaseDB{
  final supabase = Supabase.instance.client;

  Future<void> insertRowSupabase(String nome, String email, String telefone) async {

    await supabase
        .from('cadastro')
        .insert({'nome': nome, 'email': email, 'telefone': telefone});
  }
}

