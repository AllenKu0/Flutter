import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Title'),
        ),
        body: const Center(
          child: MyHomeBody(),
        ),
      ),
    );
  }
}
class MyHomeBody extends StatefulWidget {
  const MyHomeBody({ Key? key }) : super(key: key);

  @override
  _MyHomeBodyState createState() => _MyHomeBodyState();
}

class _MyHomeBodyState extends State<MyHomeBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
         return ListTile(
          
          title:const Text(
              "Data",
              style:TextStyle(fontSize: 40),
            ),
          subtitle:const Text(
              "detail",
              style:TextStyle(fontSize: 20),
            ),
            onTap: (){
              debugPrint('$index');
            },
          trailing:const Icon(Icons.next_plan),   
          tileColor: (index%2==0)?Colors.blue:Colors.red,
         );
      },
      itemCount: 20,
    );
  }
}
// Container(
//           padding: const EdgeInsets.all(10),
//           child: const Text(
//             'Text Text Cell',
//             style: TextStyle(fontSize: 48),
//           ) ,
//         ),

// if(index %2==0){
//           return Container(    
//            color: Colors.blue,
//            padding: const EdgeInsets.all(10),
//            child: const Text(
//             'Text Text Cell',
//             style: TextStyle(fontSize: 48),
            
//            ) 
//         );
//       }
//       else{
//           return Container( 
//             color: Colors.red,   
//             padding: const EdgeInsets.all(10),
//             child: const Text(
//               'Text Text Cell',
//               style: TextStyle(fontSize: 48),
//             ) 
//           );

// Container(    
//            color: (index%2==0)?Colors.blue:Colors.red,
//            padding: const EdgeInsets.all(10),
//            child: const Text(
//             'Text Text Cell',
//             style: TextStyle(fontSize: 48),   
//            ) 
//         );