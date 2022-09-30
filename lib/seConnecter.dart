import 'package:flutter/material.dart';
import 'main.dart';
import 'sInscrire.dart';
import 'homeConnecter.dart';

// Se connecter
class SeConnecter extends StatefulWidget {
  const SeConnecter({Key? key}) : super(key: key);

  @override
  _SeConnecterState createState() => _SeConnecterState();
}

class _SeConnecterState extends State<SeConnecter> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
        body: SeConnecterWidget(nameController: nameController, passwordController: passwordController),
      ),
    );
  }
}

class SeConnecterWidget extends StatelessWidget {
  const SeConnecterWidget({
    Key? key,
    required this.nameController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              width: 100,
              height: 50,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 200),
              child: Image.asset('assets/images/logo_sgt.png'),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Connectez-vous',
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
                  labelText: "Nom d'utilisateur ou adresse email",
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
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text("Mot de passe oublié ? ",),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Se connecter'),
                  onPressed: () { // actions to execute when press on Login button
                    print(nameController.text); // display the entry on the terminal
                    print(passwordController.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'Bienvenue')));
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
            Row(
              children: <Widget>[
                const Text("Vous n'avez pas de compte ?"),
                TextButton(
                  child: const Text(
                    "S'inscrire",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sinscrire()));

                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}