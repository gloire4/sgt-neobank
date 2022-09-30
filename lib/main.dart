import 'package:flutter/material.dart';
import 'seConnecter.dart';
import 'sInscrire.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Login App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
        //routes: {
          //'/': (context) => MyStatefulWidget(title: "Connexion"),
          //'/accord': (context) => AccordWidget(),
        //},
        //initialRoute: '/',
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}


// Page d'accueil permet d'acceder à la plateforme
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(10, 50, 10, 200),
              width: 100,
              height: 50,
              child: Image.asset('assets/images/logo_sgt.png'),
            ),
            Container(
                alignment: Alignment.center,
                child: const Text(
                  'Bienvenue chez',
                  style: TextStyle(
                      //color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 40),
                )),
            Container(
                alignment: Alignment.center,
                child: const Text(
                  'SGT NeoBank',
                  style: TextStyle(
                      // color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                )),
            Container(
                height: 50,
                margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ElevatedButton(
                  child: const Text('Découvrez votre Banque Mobile', style: TextStyle(
                    color: Colors.white,
                    //fontSize: 20,
                  ),),
                  onPressed: () { // actions to execute when press on Login button
                    //print('Hello the world');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
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

          ],
        ));
  }
}



// LoginPage Widget principal de la page d'accueil
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginButton(),
    );
  }
}
// Widget contenant les boutons de login et d'inscription de la plateforme
class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
          padding: const EdgeInsets.all(10),

          child: ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(10, 50, 10, 400),
                width: 100,
                height: 50,
                child: Image.asset('assets/images/logo_sgt.png'),
              ),


              Container(
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: ElevatedButton(
                    child: const Text('Se connecter', style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),),
                    onPressed: () { // actions to execute when press on Login button
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SeConnecter()));
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
              Container(
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: ElevatedButton(
                    child: const Text("S'inscrire", style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),),
                    onPressed: () { // actions to execute when press on Login button
                      //print('Hello the world');
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sinscrire()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(38.0),
                                side: BorderSide(color: Colors.black)
                            )
                        )
                    ),

                  )
              ),

            ],
          ))
      );

  }
}






