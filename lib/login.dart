import 'package:celestia/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var userName = TextEditingController();
  var passWord = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFDDD6F3),
              Color(0xFFFAACA8),
             // Colors.white,
            //Color(0XFFFFD6D6),
            //  Colors.white,
            ],
            begin: FractionalOffset(0,0),
            end: FractionalOffset(1,1)
          ),
        ),
        width: double.infinity,
       // color: Colors.white,
        child: Center(
          child: Container(
            height: double.infinity,
            width: 385,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("User Authentication", style: TextStyle(color: Colors.deepPurple, fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 45,),
                TextField(
                  controller: userName,
                  keyboardType: TextInputType.name,
                  decoration : InputDecoration(
                    label: Text("username"),
                  prefixIcon: Icon(Icons.verified_user_sharp),
                    border : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                 //   prefixIcon: IconButton()
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  controller: passWord,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    label: Text("password"),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye_sharp),
                      onPressed: (){
                      },
                    )
                  ),
                ),
                SizedBox(height: 30,),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: double.infinity,
                    minHeight: 50,
                  ),
                  child: ElevatedButton(onPressed: (){
                    var username = userName.text.toString();
                    var password = passWord.text.toString();

                    if(username !="" && password !="") {
                      if (username == "krispyarena" && password == "admin") {
                        setState(() {});
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) {
                          return MyHomePage(title:"Celestial Universe");
                        }));
                      }
                      else{
                        result = "Invalid Credentials";
                        setState(() { });
                      }
                    }

                    else{
                      setState(() {
                        result = "Enter details properly";
                      });
                    }
                  }, child: Text("Login",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 30,),
                Text(result, style: TextStyle(color: Colors.red, fontSize: 20),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
