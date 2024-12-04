import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MySecondPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key, required this.title});
  final String title;

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
                Navigator.pop(context);
              },
                child: const Icon(Icons.arrow_back),
                
                
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      


      body: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      'Zelda',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      child: Text(
                        "Princesse courageuse et sage du royaume d'Hyrule, Zelda détient des pouvoirs magiques mystérieux et l'héritage de la Triforce. Elle guide Link dans sa quête pour sauver son monde des ténèbres. Découvrez son rôle clé dans l'aventure épique qui décidera du destin d'Hyrule.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 50)),
                    Image.asset(
                      '../assets/images/wisdom.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Row(
                  children: [
                    Text(
                      'Link',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 180,
                      child: Text(
                        "Élu par l'épée légendaire, Link se dresse comme le dernier rempart d'Hyrule. Sa lame étincelante et son bouclier ancestral en main, ce héros au courage inébranlable trace sa voie à travers les ténèbres. Plus qu'un simple guerrier, il incarne l'espoir même du royaume, une légende vivante dont les exploits résonnent à travers les âges.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 50)),
                    Image.asset(
                      '../assets/images/courage.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      'Ganondorf',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      child: Text(
                        "Sorcier maléfique et roi des Gerudos, Ganondorf cherche à s'emparer de la Triforce pour dominer Hyrule. Avec sa puissance noire et son ambition dévorante, il est l'antagoniste ultime à défaire dans cette aventure épique.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  const  Padding(padding: EdgeInsets.only(left: 50)),
                    Image.asset(
                      '../assets/images/force.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 100),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'assets/images/zelda.png',
                  width: 175,
                  height: 305,
                ),
                Image.asset(
                  'assets/images/link.png',
                  width: 175,
                  height: 305,
                ),
                Image.asset(
                  'assets/images/ganondorf.png',
                  width: 175,
                  height: 305,
                ),
              ],
            ),
          ]    
          )
        ),
      );
  }
}
