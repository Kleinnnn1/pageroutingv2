import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      home:FirstPage()
    );
  }
}

class FirstPage extends StatelessWidget {
 final TextEditingController userCon = TextEditingController();

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:const Icon(Icons.home),
        title: const Text('First Page'),
        backgroundColor: Colors.amberAccent
      ),
      body: ListView(
        padding:const EdgeInsets.all(20),
        children: [
          TextFormField(
            controller: userCon,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'username',
            ),
          ),
          const SizedBox(height:20),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'password'
            )
          ),
          const SizedBox(height:20),
          OutlinedButton(
            onPressed: () {
              String username = userCon.text;
              Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => SecondPage(username)
              )
              );
            },child: const Text('login'),
          )

        ]
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String username;
  const SecondPage(this.username);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        backgroundColor: Colors.deepOrangeAccent
        ),
      body: Center(
        child:Text('Welcome user $username!')

      )
        );
  }
}