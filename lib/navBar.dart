import 'package:celestia/aboutUs.dart';
import 'package:celestia/login.dart';
import 'package:celestia/navBar1.dart';
import 'package:celestia/samAnimation.dart';
import 'package:celestia/sciCalc.dart';
import 'package:celestia/shareQR.dart';
import 'package:flutter/material.dart';

class navBar extends StatelessWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Kris Pandey", style: TextStyle(),),
              accountEmail: Text("@krispyarena", style: TextStyle(),),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(child: Image.asset("assets/images/ppKris1.jpg"),),
              ),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade400,
              image: DecorationImage(image: AssetImage("assets/images/bg1.jpg"), fit: BoxFit.cover)
            )
          ),
          // = Colors.deepPurple.shade400,

        /*  Padding(
            padding: const EdgeInsets.only(left: 40.0, bottom: 8.0, top: 10.0),
            child: Text("Features", style: TextStyle(fontSize: 21),),
          ),
          ListTile(
            leading: Icon(Icons.file_upload_outlined),
            title: Text("Upload Photo"),
            onTap: (){},
          ),
         */
          ListTile(
            leading: Icon(Icons.messenger_outlined),
            title: Text("Messenger"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return navBar1();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text("Profile"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Languages"),
            onTap: (){},
          ),
          ListTile(
            title: Text("Calculator"),
            leading: Icon(Icons.calculate),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return sciCalc();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.qr_code_scanner_sharp),
            title: Text("Generate/Scan QR Code"),
            onTap: (){},

          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return samAnimation();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.event_rounded),
            title: Text("Events"),
            onTap: (){},
          ),
          /*ListTile(
            leading: Icon(Icons.share),
            title: const Text("Share to Friends"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return shQR();
              }));
            },
          ),

           */
          ListTile(
            leading: Icon(Icons.help_rounded),
            title: Text("Help and Support"),
            onTap: (){},
          ),
          ListTile(
            title: Text("About Us"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return aboutUs();
              }));
            },
            leading: Icon(Icons.info),
          ),
          Divider(),
          ListTile(
            title: Text("Log Out"),
            leading: Icon(Icons.logout),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return login();
              }));
            },
          ),
        ],
      ),
    );
  }
}
