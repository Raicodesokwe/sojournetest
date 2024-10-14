import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int startCount=0;
  bool isToggled=false;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        backgroundColor: isToggled?Colors.white:Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const SizedBox(
                height: 50,
              ),
              CupertinoSwitch(value: isToggled, onChanged: (val){
                setState(() {
                  isToggled=val;
                });
              }),
             const SizedBox(
                height: 50,
              ),
              Text(
                '$startCount',
                style: TextStyle(
                  fontSize: 30,
                  color: isToggled? Colors.black:Colors.white
                ),
              ),
               const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    startCount++;
                  });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.deepPurple,
                  child:const Icon(Icons.add),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}