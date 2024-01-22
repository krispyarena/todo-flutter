import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class shQR extends StatelessWidget {
  const shQR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Share our App"),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QrImageView(
                data: "https://play.google.com/store/apps/details?id=com.netflix.mediaclient",
                size: 225,
                version: QrVersions.auto,
                gapless: true,
             //   foregroundColor: Colors.deepPurple[800],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text("Scan the above QR to download our app from the Google Play Store", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
