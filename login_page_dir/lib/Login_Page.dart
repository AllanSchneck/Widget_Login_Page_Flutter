
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }

}
class LoginPageState extends State<LoginPage>{
  String email='';
  String password='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email',border: OutlineInputBorder()),
                onChanged: (text){
                  email=text;
                },),
                Container(height:20)
                ,TextField(
                  decoration: InputDecoration(labelText: 'Senha',
                      border: OutlineInputBorder()),
                  onChanged: (text){
                    password=text;
                  },),
                Container(
                  height: 100,
                ),
                Container(

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                      onPressed: (){

                        if (email == 'allanrichar826@gmail.com' && password == '12345678'){
                          print('Acesso permitido');
                        }
                        else{
                          print('Acesso negado');                  }
                      },
                      child: Text('Enter',style: TextStyle(color: Colors.black)),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}