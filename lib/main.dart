import 'package:flutter/material.dart';
import 'package:supabase_aula/pages/homePage.dart';
import 'package:supabase_aula/keysSupabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: KeysSupabase().urlSupabase,
    anonKey: KeysSupabase().anonKey,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
