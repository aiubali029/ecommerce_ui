import 'package:ecom/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
          Container(
            height: MediaQuery.of(context).size.height *0.5,
           
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage('images/strawberry2.jpeg')),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)

              )
            ),
          ),

          SizedBox(height: 80,),
          
          Container(
              color: Colors.red,
              child: Text('Welcome to Grocery Shop',style: TextStyle(fontSize: 24,color: Colors.white,),textAlign: TextAlign.start,)),

          Padding(
            padding:  EdgeInsets.only(left: 20,right: 20,bottom: 40,top: 20),
            child: Text('Embark on a culinary journey with fresh\n ingredients brought right to your\n kitchen',style: TextStyle(fontSize: 18,color: Colors.white),),
          ),


            ElevatedButton(


            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
            }, child: Text('Continue',style: TextStyle(color: Colors.black),),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(400, 60),
            backgroundColor: Colors.white,

          ),
          )

        ],),
      ),
    );
  }
}
