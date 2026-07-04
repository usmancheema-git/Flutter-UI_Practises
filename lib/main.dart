import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(mainApp());
}

class mainApp extends StatelessWidget {
  const mainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('hello');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png', height: 50, width: 50),
                  SizedBox(width: 10),

                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Maintenance',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Rubik Medium',
                          color: Color(0xff2D3142),
                        ),
                      ),
                      Text(
                        'Box',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Rubik Medium',
                          color: Color(0xffF9703B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              const Center(
                child: Text(
                  'login',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Rubik Medium',
                    color: Color(0xff2D3142),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Center(
                child: Text(
                  'Lorem ipsum dolor sit amet,\n consectetur elit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Rubik Medium',
                    color: Color(0xff4C5980),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  fillColor: Color(0xffF8F9FA),
                 filled: true,
                  prefixIcon: Icon(Icons.email,color: Color(0xff323F4B),),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(100)
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    prefixIcon: Icon(Icons.password,color: Colors.black),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(200)
                    )
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 100,),
                  Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 10,vertical: 10),
                    child:Text('forget password?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 ,decoration: TextDecoration.underline),),)
                ],
              ),
              const SizedBox(height: 100,),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xffF9703B),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik Regular',
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),


              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    'Dont have an account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xff4C5980),
                    ),
                  ),
                  Text(
                    'Signup',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Rubik Medium',
                      color: Color(0xffF9703B),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
