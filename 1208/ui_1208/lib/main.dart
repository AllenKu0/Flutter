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
      home: Scaffold(
        appBar: AppBar(),
        body: BMIInputForm(),
      ),
    );
  }
}
  class BMIInputForm extends StatefulWidget {
    const BMIInputForm({ Key? key }) : super(key: key);
  
    @override
    _BMIInputFormState createState() => _BMIInputFormState();
  }
  
  class _BMIInputFormState extends State<BMIInputForm> {
    final _itemCount = 5;
    int? _selectedValue = 0;
    // @override
    // void initState() {
    //   // TODO: implement initState
    //   for(var i=0;i<_itemCount;i++){
    //     _checked.add(false);
    //   }
    //   super.initState();
    // }
    @override
    Widget build(BuildContext context) {
      List<Widget> itemWidgets =[];
      for(var i=0;i<_itemCount;i++){
        itemWidgets.add(ListTile(
          leading: Radio(
            groupValue: _selectedValue,
            value : i,
            onChanged: (int? value){
              setState(() {
                _selectedValue = value;
              });
            },
          ),
          title: Text('Item${i+1}'),
        ));
      }
      return Column(children:itemWidgets);
    }
  }
  // String _inputtedValue = '';
  //   double _curSliderValue = 20;
    // bool _switchValue = false;         //可能是bool可能是null

          //   Row(
          //   children: [
          //     Expanded(child: Container(
          //       padding: EdgeInsets.all(10),
          //       child: Text('Function to turn on'),
          //     ),
          //   ),  
          //   Switch(
          //       value: _switchValue, 
          //       onChanged: (value){
          //         setState(() {
          //         _switchValue = value;
          //       });
          //       }
          //     )
          //   ], 
          // ),

          // Slider(
          // value: _curSliderValue,
          // min: 0,
          // max: 50,
          // label: _curSliderValue.round().toString(),
          // divisions: 10,
          //   onChanged:(value){
          //     debugPrint(value.toString());
          //     setState(() {
          //       _curSliderValue = value;
          //     });
          //   }
          // ),
          // TextField(
          //   decoration: const InputDecoration(
          //     labelText: 'Please Input Here',
          //     hintText: '(Ex:ABC)',
          //   ),
          //   onChanged: (value){
          //     debugPrint(value);
          //     _inputtedValue = value;
          //   },
          // ),
          // ElevatedButton(onPressed: (){
          //   debugPrint('輸入值為$_inputtedValue');
          // }, child: const Text('submit'))