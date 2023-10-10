import 'package:ecom/model/fruits_model.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  MyCart({super.key, this.cartList});
  List<FruitsModel>? cartList;

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.deepPurple,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Container(
            width: double.infinity,
           // height: MediaQuery.of(context).size.height * 0.80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),

                ),




            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,

                  decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.10),

                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80),

                    ),
                    image: DecorationImage(image: AssetImage('images/orange.png')),

                  ),
                  // child: Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //   Container(
                  //     height: 70,
                  //     width: 40,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(60),
                  //      color: Colors.grey.withOpacity(0.10),
                  //       border: Border.all(width: 2,color: Colors.black)
                  //
                  //     ),
                  //     child: Icon(Icons.arrow_back),
                  //   )
                  // ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Fresh Orange",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                             Text("Available in Stock")
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                           Container(


                               child: Icon(Icons.minimize,size: 28,color: Colors.white,),
                           height: 40,
                             width: 40,
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                               color: Colors.deepPurple


                             ),
                             alignment: Alignment.topCenter,


                           ),
                           SizedBox(width: 8,),
                           Text("1Kg",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                           SizedBox(width: 8,),
                           CircleAvatar(

                             child: Icon(Icons.add,color: Colors.white,),
                             backgroundColor: Colors.deepPurple,
                           ),
                         ],)

                        ],
                      ),
                      Text("Product Description",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      Text("Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. ",
                      maxLines: 3,
                      ),
                      Text("Product Reviews",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage:AssetImage('images/orange.png'),
                            maxRadius: 25,
                          ),
                          Column(
                            children: [
                              Text("Victor Flexin",style: TextStyle(fontSize: 18),),
                              Text(" ☆  ☆  ☆"),

                            ],
                          ),
                          Text("18 Sep,2023")
                        ],
                      ),
                      Text("Video provides a powerful way to help you prove your point. When you click Online Video"),
                      Text("Similar Products"),
                      Text("Similar Products"),
                      Text("Similar Products"),
                      Text("Similar Products"),

                    ],
                  ),

                )

              ],
            ),
          ),
        ),
        bottomSheet: Container(

          decoration: BoxDecoration(

            color: Colors.deepPurple
          ),

          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "14.75/kg",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Text(
                    "Add to Cart",
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
