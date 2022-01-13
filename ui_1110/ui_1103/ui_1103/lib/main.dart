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
        title: 'Iphone App',
        home: Scaffold(
          appBar: AppBar(
            title:const Text(
               'Iphone Release Dates',
               style: TextStyle(fontSize: 30),)
           ),
           body: Column(
             children: const [
               Iphone('https://www.apple.com/v/iphone-13/b/images/overview/hero/hero_1_static__d195o2nfxt26_large.jpg','Iphone 13', '2021/9/24'),
               Iphone('https://www.apple.com/newsroom/images/product/iphone/standard/Apple_iphone_11-rosette-family-lineup-091019_big.jpg.large.jpg','Iphone 11','2019/09/13'),
               Iphone('https://qooah.com/wp-content/uploads/2018/09/iPhone_XR_coral-back_09122018_carousel.jpg.large_.jpg','Iphone XR','2017/09/12'),
               Iphone('https://s.yimg.com/zp/MerchandiseImages/C4F5EEC8E0-SP-6431168.jpg','Iphone X','2017/09/12'),
             ],
           ),
        ),
      
      );
    
  }

}
class Iphone extends StatelessWidget {
  final String name;
  final String date;
  final String image;
  const Iphone(this.image,this.name,this.date,{ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
      constraints:const BoxConstraints(
        minWidth: 50,minHeight: 50,maxHeight: 100,maxWidth: 300,
      ),
      child: Row(
        children: [
          Container(
            constraints:const BoxConstraints(
              maxHeight: 100,maxWidth: 100,minHeight: 100,minWidth: 100,
            ),
            child: 
            Image.network(
              image ,
              
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              margin:const EdgeInsets.all(10),
              child:Text(
                name,
                style:const TextStyle(fontSize: 15),
              ),
            ),
           Container(
              margin:const EdgeInsets.all(10),
              child:Text(
                date,
                style:const TextStyle(fontSize: 15,color: Colors.blue),
              ),
            )
            ],
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
