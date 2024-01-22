
import 'package:celestia/main.dart';
import 'package:flutter/material.dart';

class sciCalc extends StatefulWidget {

  @override
  State<sciCalc> createState() => _sciCalcState();
}

class _sciCalcState extends State<sciCalc> {
  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  var result = "";
  Color myColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Calculation"),
        centerTitle: true,
      ),
      body:Center(
        child: Container(
          height: double.infinity,
          width: 380,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Scientific Calculator", style: TextStyle(color: Colors.deepPurple, fontSize: 25, fontWeight: FontWeight.bold),),
              SizedBox(height: 45,),
              TextField(
                keyboardType: TextInputType.number,
                controller: controller1,
                decoration: InputDecoration(
                  label: Text("Number 1"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                )
                //  prefixIcon: Icon(Icons.numbers)
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: controller2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Number 2"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 45,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                    });
                    if (controller1 !="" && controller2 != ""){
                      var no1 = double.parse(controller1.text.toString());
                      var no2 = double.parse(controller2.text.toString());
                      var sum = no1+no2;
                      result = "$no1 + $no2 = ${sum.toStringAsFixed(2)}";
                      myColor = Colors.green;
                      setState(() {
                      });
                    }
                    else{
                      setState(() {
                        myColor = Colors.red;
                        result = "Enter details properly";
                      });
                    }
                  }, child: Text("+", style: TextStyle(fontSize: 30),)),
                  ElevatedButton(onPressed: (){
                    if (controller1!="" && controller2 !=""){
                      var no1 = double.parse(controller1.text.toString());
                      var no2 = double.parse(controller2.text.toString());
                      var diff = no1-no2;
                      result = "$no1 - $no2 = ${diff.toStringAsFixed(2)}";
                      myColor = Colors.green;
                      setState(() {
                      });
                    }
                    else {
                      result = "Enter details properly";
                      myColor = Colors.red;
                      setState(() {
                      });
                    }
                  }, child: Text("-", style: TextStyle(fontSize: 30),)),

                  ElevatedButton(onPressed: (){
                    var no1 = double.parse(controller1.text.toString());
                    var no2 = double.parse(controller2.text.toString());
                    if (no1 != "" && no2 != ""){
                      var prod = no1 * no2;
                      result = "$no1 * $no2 = ${prod.toStringAsFixed(2)}";
                      myColor = Colors.green;
                      setState(() {
                      });
                    }
                    else{
                      setState(() {
                        myColor = Colors.red;
                        result = "Enter details properly";
                      });
                    }
                  }, child: Text("*", style: TextStyle(fontSize: 30),)),

                  ElevatedButton(onPressed: () {
                    var no1 = double.parse(controller1.text.toString());
                    var no2 = double.parse(controller2.text.toString());
                    if (no1 == "" || no2 == "") {
                      setState(() {});
                      result = "Enter details properly";
                      myColor = Colors.red;
                    }
                    else {
                      myColor = Colors.green;
                      var div = no1/no2;
                      result = "$no1 / $no2 = ${div.toStringAsFixed(2)}";
                      setState(() {
                      });
                      }

                  }, child: Text("/", style: TextStyle(fontSize: 30),)),

                  ElevatedButton(onPressed: (){
                    var no1 = double.parse(controller1.text.toString());
                    var no2 = double.parse(controller2.text.toString());

                    if(no1 == "" || no2 ==""){
                      myColor = Colors.red;
                      result = "Enter details properly";
                      setState(() {
                      });
                    }
                    else {
                      setState(() {
                        myColor = Colors.green;
                        var mod1 = no1%no2;
                        var mod = mod1.toStringAsFixed(2);
                        result = "$no1 % $no2 = $mod";
                      });
                    }
                  }, child: Text("%", style: TextStyle(fontSize: 30),))
                ],
              ),
              SizedBox(height: 45,),
              Text(result, style: TextStyle(color: myColor, fontSize: 25),)
            ],
          ),
        ),
      ) ,
    );
  }
}

