import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Login()
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "UserName"
                  ),
                ),
                const SizedBox(height: 20,),

                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password",

                  ),
                ),
                const SizedBox(height: 20,),

                Container(
                  width:double.infinity ,
                  child: ElevatedButton(
                      onPressed: (){
                        setState(() {

                        });
                      },
                      child: const Text(
                          "Login"
                      )),
                )


              ],
            ),
          ),
        ),


    );
  }
}