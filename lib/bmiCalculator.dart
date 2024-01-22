import 'package:flutter/material.dart';

class bmiCalculator extends StatefulWidget {

  @override
  State<bmiCalculator> createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {
  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  var controller3 = TextEditingController();
  var result = "";
  Color myColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculation"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: 385,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BMI Calculator", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 25),),
              SizedBox(height: 45),
              TextField(
                keyboardType: TextInputType.number,
                controller: controller1,
                decoration: InputDecoration(
                  label: Text("Weight (in Kg)"),
                  prefixIcon: Icon(Icons.line_weight),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                keyboardType: TextInputType.number,
                controller: controller2,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.height),
                  label: Text("Height (in Feet)"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                keyboardType: TextInputType.number,
                controller: controller3,
                decoration: InputDecoration(
                  label: Text("Height (in Inches)"),
                  prefixIcon: Icon(Icons.height),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 45,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: double.infinity,
                  minHeight: 50
                ),
                child: ElevatedButton(onPressed: (){
                  var weight = controller1.text.toString();
                  var feet = controller2.text.toString();
                  var inches = controller3.text.toString();

                  if (weight!="" && feet !="" && inches != ""){
                    var iWt = int.parse(weight);
                    var iFt = int.parse(feet);
                    var iIn = int.parse(inches);

                    var tHeight = (iFt*12)+ iIn;
                    var height = (tHeight * 2.54)/100;
                    var BMI = iWt/(height*height);
                    setState(() {
                      if (BMI >= 18.5 && BMI <=24.9){
                        myColor = Colors.green;
                      }
                      else{
                        myColor = Colors.red;
                      }
                      result = "Your BMI is ${BMI.toStringAsFixed(2)}";
                    });
                  }
                  else {
                    if (weight == "" && feet == "" && inches == "") {
                      setState(() {
                        myColor = Colors.red;
                        result = "Input fields can't be empty";
                      });
                    }
                    else {
                      setState(() {
                        myColor = Colors.red;
                        result = "Enter details properly";
                      });
                    }
                  }
                }, child: Text("Calculate", style: TextStyle(fontSize: 18),)),
              ),
              SizedBox(height: 45,),
              Text(result, style: TextStyle(fontSize: 22, color: myColor),)

            ],
          ),
        ),
      ),
    );
  }
}
