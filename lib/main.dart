import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MainScreen',
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  bool ViewWidget= false;

     void show(){

    setState(() {
    ViewWidget=true;
  });

}
     void hide(){

    setState(() {
    ViewWidget=false;

  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Homepage'),),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Visibility(
        visible: ViewWidget,
        child: Center(child:
        Text('Hey! You are cool ', style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20
        ),
        )
        ),
      ),
        ElevatedButton(
            onPressed:  show,
            child: Text('Click To Show')
        ),

        ElevatedButton(
            onPressed: hide,
            child: Text('Click to Hide'))

      ],
    ),
    );
  }
}

