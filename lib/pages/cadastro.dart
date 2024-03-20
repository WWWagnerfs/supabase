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
    TextEditingController controller_cpf = TextEditingController();
    TextEditingController controller_dtn = TextEditingController();
    TextEditingController controller_telefone = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 15,
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
        title: Text('Cadastrar Nova Pessoa', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(padding: EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            CustomTextFormField(campo: 'Nome Completo', controlador: controller_nome,),
            SizedBox(height: 10,),
            CustomTextFormField(campo: 'E-Mail', controlador: controller_telefone,),
            SizedBox(height: 10,),
            CustomTextFormField(campo: 'CPF', controlador: controller_cpf,),
            SizedBox(height: 10,),
            CustomTextFormField(campo: 'Data de Nascimento', controlador: controller_dtn,),
            SizedBox(height: 10,),
            CustomTextFormField(campo: 'Telefone', controlador: controller_email,),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  OperationsSupabaseDB().insertRowSupabase(controller_nome.text, controller_telefone.text, controller_cpf.text, controller_dtn.text, controller_email.text);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue.shade600)),
                child: Text('Cadastrar'),),
            )
          ],
        ),
      ),
    );
  }
}

