import 'package:flutter/material.dart';

class samAnimation extends StatefulWidget {


  @override
  State<samAnimation> createState() => _samAnimationState();
}

class _samAnimationState extends State<samAnimation> with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1, milliseconds: 200));
    animation = Tween(begin: 90.0, end: 190.0).animate(animationController);

    animationController.addListener(() {
      setState(() {
      });
    });
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: 385,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage("assets/images/bg1.jpg"), fit: BoxFit.cover)
                ),
                height: animation.value,
                width: (animation.value)*2,
                child: Image.asset("assets/images/bg1.jpg"),
              ),
              SizedBox(height: 20,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 50,
                  minWidth: double.infinity,
                ),
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.download),
                      SizedBox(width: 12,),
                      Text("Download", style: TextStyle(fontSize: 20),),
                    ],
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
