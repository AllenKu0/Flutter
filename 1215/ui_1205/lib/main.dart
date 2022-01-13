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
        body: _BMIInputForm(),
      ),
    );
  }
}
  class _BMIInputForm extends StatefulWidget {
    const _BMIInputForm({ Key? key }) : super(key: key);
  
    @override
    __BMIInputFormState createState() => __BMIInputFormState();
  }
  
  class __BMIInputFormState extends State<_BMIInputForm> {
    final _formKey = GlobalKey<FormState>();
    final _heightController = TextEditingController();
    final _weightController = TextEditingController();
    bool isValidHeight(String height){
    if(double.tryParse(height)! < 100 || double.tryParse(height)! > 250){
      return false;
    }
  
      return double.tryParse(height) != null;
  }
  bool isValidWeight(String weight){
    if(double.tryParse(weight)! < 5 || double.tryParse(weight)! > 200){
      return false;
    }
      return double.tryParse(weight) != null;
  }
    
    @override
    Widget build(BuildContext context) {
      return Form( 
        key: _formKey,
      child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "身高(cm)",
              ),
              validator: (value) {
                return (isValidHeight(value!) ? null : '請輸入正確範圍');
              },
              keyboardType: TextInputType.number,
              controller: _heightController,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "體重(kg)",
              ),
              validator: (value) {
                return (isValidWeight(value!) ? null : '請輸入正確範圍');
              },
              keyboardType: TextInputType.number,
              controller: _weightController,
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('檢查結果：${_formKey.currentState?.validate()}');
                if(_formKey.currentState?.validate() == true && isValidHeight(_heightController.text) && isValidWeight(_weightController.text)){
                  Navigator.push(context, MaterialPageRoute(builder: 
                    (context) =>  BMIResult(height:double.tryParse(_heightController.text),
                                            weight:double.tryParse(_weightController.text))));
                }
              },
              child: const Text('計算BMI'),
            )
          ],
        ),
      );
    }
  }
  
class BMIResult extends StatelessWidget {
  final double? height;
  final double? weight;
  const BMIResult({required this.height,required this.weight, Key? key }) : super(key: key);
  
  double caculate(double height,double weight){
    return weight / ((height/100)*(height/100));
  }
  String isOverWeight(double ans){
    if (ans >=24){
      return "肥胖";
    }
    else if(ans>18.5 && ans<24){
      return "正常";
    }
    else{
      return "過輕";          
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI 結果'),
      ),
      body: Column(
        children: [
          Text("身高(cm):$height"),
          Text("體重(Kg):$weight"),
          Text("BMI 為:${caculate(height!,weight!)}"),
          Text("你的身體狀況為"+isOverWeight(caculate(height!, weight!)))
        ],
      ),    
    );
  }
}


