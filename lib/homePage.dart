import 'package:flutter/material.dart';
import 'package:supabase_aula/compenents/customTextFormField.dart';
import 'package:supabase_aula/database/operationsSupabase.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller_nome = TextEditingController();
    TextEditingController controller_email = TextEditingController();
    TextEditingController controller_telefone = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 15,
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
        title: Text('Cadastro Pessoa', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    ),
      body: Column(
        children: [
          CustomTextFormField(campo: 'Nome Completo', controlador: controller_nome,),
          CustomTextFormField(campo: 'Telefone', controlador: controller_email,),
          CustomTextFormField(campo: 'E-Mail', controlador: controller_telefone,),
          ElevatedButton.icon(onPressed: (){
            OperationsSupabaseDB().insertRowSupabase(controller_nome.text, controller_email.text, controller_telefone.text);
          },
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.cyan)),
            icon: Icon(Icons.add), label: Text('Salvar'),)
        ],
      ),
    );
  }
}

