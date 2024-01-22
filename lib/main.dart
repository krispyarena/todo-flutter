import 'package:celestia/aboutUs.dart';
import 'package:celestia/bmiCalculator.dart';
import 'package:celestia/navBar.dart';
import 'package:celestia/navBar1.dart';
import 'package:celestia/sciCalc.dart';
import 'package:celestia/shareQR.dart';
import 'package:celestia/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: splashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navBar(),
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return shQR();
            }));
          }, icon: Icon(Icons.share)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
        ],

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Services Available", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600, color: Colors.deepPurple),),
            SizedBox(height: 20,),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 50,
                minWidth: double.infinity,
              ),
                child: ElevatedButton(onPressed: (){
                  setState(() { });
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return sciCalc();
                  }));
                }, child: const Text("Scientific Calculator", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),))),
            SizedBox(height: 20,),
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: 50,
              ),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                        return bmiCalculator();
                  }));
                });
              },
                  child: const Text("BMI Calculator", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),)
              ),
            ),
            SizedBox(height: 20,),
            ConstrainedBox(constraints: BoxConstraints(
              minWidth: double.infinity,
              minHeight: 50,
            ),
            child: ElevatedButton(onPressed: (){},
            child: Text("Celestial Pay - Digital Wallet", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
            ),
            ),
            SizedBox(height: 20,),
            ConstrainedBox(constraints: BoxConstraints(
              minHeight: 50,
              minWidth: double.infinity,
            ),
            child: ElevatedButton(onPressed:(){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return aboutUs();
                }));
              });
            },
                child: const Text("About Us", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),)
            ),
            ),
        /*    QrImageView(
                data: "https://apps.apple.com/np/app/netflix/id363590051",
                gapless: false,
                size: 250,
                version: QrVersions.auto,
            )

         */
          ],
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
