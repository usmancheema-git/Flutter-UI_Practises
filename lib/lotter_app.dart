import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';
class lotterApp extends StatefulWidget {
  const lotterApp({super.key});

  @override
  State<lotterApp> createState() => _lotterAppState();
}

class _lotterAppState extends State<lotterApp> {
  Random random = Random();
  int cnt = 0;
  void increment(){
    setState(() {
      cnt++;
    });
  }
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle:true , title: Text('Lottery App',),backgroundColor: Colors.teal,),
        body: SafeArea(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(height: 2,),
            Center(child: Text('Lottery wining  number is $cnt ' , textAlign:TextAlign.center ,)),
            Center(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.5),
                  borderRadius: BorderRadius.circular(10)

                ),

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: cnt == 5?  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Icon(Icons.done_all,color: Colors.green,size: 35,),
                      SizedBox(height: 10,),
                      Text('Congratulations you won the lottery your number is  $cnt' ,textAlign: TextAlign.center,)
                    ],):
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                    Icon(Icons.error,color: Colors.red,size: 35,),
                    SizedBox(height: 10,),
                    Text('Better Luck next time your number is$cnt\nTry Again' ,textAlign: TextAlign.center,)
                  ],),
                )),
              ),
            Text(cnt>5? 'cnt is greater than 5 ': cnt.toString())
          ],
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()
          {

            cnt = random.nextInt(10);
            setState(() {});
            },
          child: Icon(cnt>5?Icons.place :Icons.refresh_rounded),),
      ),
    );
  }
}
