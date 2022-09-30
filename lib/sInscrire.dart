import 'package:flutter/material.dart';
import 'main.dart';
import 'seConnecter.dart';

// s'inscrire
class Sinscrire extends StatefulWidget {
  const Sinscrire({Key? key}) : super(key: key);

  @override
  _SinscrireState createState() => _SinscrireState();
}

class _SinscrireState extends State<Sinscrire> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordValidedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SinscrireWidget(nameController: nameController, emailController: emailController, passwordController: passwordController, passwordValidedController: passwordValidedController),
      ),
    );
  }
}

class SinscrireWidget extends StatelessWidget {
  const SinscrireWidget({
    Key? key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.passwordValidedController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController passwordValidedController;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              width: 100,
              height: 50,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 100),
              child: Image.asset('assets/images/logo_sgt.png'),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Inscription',
                  style: TextStyle(
                    //color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),

            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nom d'utilisateur",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Adresse Email",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true, // don't show the password
                controller: passwordController, // control the password entry
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mot de passe',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true, // don't show the password
                controller: passwordValidedController, // control confirm password entry
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirmer le mot de passe',
                ),
              ),
            ),
            Container(
                height: 50,
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text("Valider l'inscription"),
                  onPressed: () { // actions to execute when press on Login button
                    print(nameController.text); // display the entry on the terminal
                    print(passwordController.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SeConnecter()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red[600]),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(38.0),
                              side: BorderSide(color: Colors.red)
                          )
                      )
                  ),
                )
            ),
            TextButton(
              onPressed: () {
                //Login page
                Navigator.push(context, MaterialPageRoute(builder: (context) => SeConnecter()));
              },
              child: const Text("Se connecter", style: TextStyle(fontSize: 20, color: Colors.red, decoration: TextDecoration.underline),),
            ),

          ],
        ));
  }
}
