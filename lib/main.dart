import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(onPressed: (){
            setState(() {
              _bool = !_bool;
            });
          }, child: Text("Switch",style: TextStyle(color: Colors.black),)
          ),
          AnimatedCrossFade(
              firstChild: Image.asset("assets/images/1.png",width: double.infinity,),
              secondChild: Image.asset("assets/images/2.png",width: double.infinity),
              crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 1))
        ],
      ),
    );
  }
}


