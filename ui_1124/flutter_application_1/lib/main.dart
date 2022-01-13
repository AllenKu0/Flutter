import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp() ,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      home: Scaffold(
      appBar: AppBar(
        title:const Text('MyAPP'),
      ),
      body: Column(
        children: [
          const Text('Home Page'),
          ElevatedButton(
            onPressed: (){
              Navigator.push (context, 
                  MaterialPageRoute(builder: (context) => const SecondPage(
                    name:'My name'
                    ),
                  ),
                ).then((value) => debugPrint(value));
              },
              child:const Text ('GoTo Second Page'),
            )
          ],
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  final String name;
  const SecondPage({required this.name, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Second Page'),
        ),
        body: Column(
        children:[
          Text(name),
          ElevatedButton(
            onPressed:(){
               Navigator.pop(context,'return data');
          },
           child:const Text('返回上頁'),)
        ],
      ),
    );
  }
}