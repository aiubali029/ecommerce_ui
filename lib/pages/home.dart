import 'package:ecom/model/fruits_model.dart';
import 'package:ecom/pages/my_cart.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List _items = ['Fruits','Fast-Food','Vegetables','Meat','Fish','Flowers','Medicine','Women-Dress','Men-Dress'];
  var _isSelected = 0;
  List<FruitsModel> cartList=[];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Total Item is  ${cartList.length}"),
      ),
      backgroundColor: Colors.deepPurple,

      body: Container(
        width: double.infinity,

        height: MediaQuery.of(context).size.height * 0.85,
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15)

        )),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Daily\nGrocery Food",style: TextStyle(fontSize: 34),),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 60,

                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(80),


                    ),
                    child: Icon(Icons.search_rounded,size: 35,),
                  )
                ],
              ),
            ),
            Container(

              height: 60,


              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          _isSelected =index;
                        });

                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                         // color: Colors.blueAccent,
                            color: _isSelected == index? Colors.black:Colors.blue,

                            borderRadius: BorderRadius.circular(
                              40,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(_items[index],style: TextStyle(fontSize: 22,
                          color: _isSelected ==index?Colors.white:Colors.black
                          ),),
                        ),


                      ),
                    );
                  },
                separatorBuilder: ( context, index){
                    return SizedBox(width: 10,);

                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Fruits",style: TextStyle(fontSize: 22),),
                  Text("See all",style: TextStyle(fontSize: 22),),
                ],
              ),
            ),
            Expanded(child: GridView.builder(
              shrinkWrap: true,
                itemCount: fruitList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 2
            ), itemBuilder: (context,index){

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyCart(
                      cartList: cartList,
                    )));
                  },
                  child: Container(
                    height: 300,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(children: [
                      Expanded(child: Container(

                        decoration: BoxDecoration(

                          image: DecorationImage(
                    fit:BoxFit.cover,
                          image: AssetImage("${fruitList[index].img}")
                          )
                        ),
                      ),
                      ),
                      Expanded(child:Column(
                        children: [
                          Text("${fruitList[index].name}"),
                          Text("${fruitList[index].qty} cal"),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 5),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Text("\$${fruitList[index].price}"),
                               InkWell(
                                 onTap: (){
                                  try{
                                    cartList.firstWhere((element) => element.id == fruitList[index].id);
                                    var snackBar = SnackBar(content: Text('Data Already Added'));
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    print("Data Already Added");
                                  }catch(e){
                                    cartList.add(fruitList[index]);
                                    setState(() {

                                    });
                                  }
                                 },
                                 child: Container(height: 35,width: 35,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: Colors.orange
                                   ),
                                   child: Icon(Icons.add,color: Colors.white,),
                                 ),
                               ),

                             ],
                           ),
                         )
                        ],
                      ) )
                    ],),

                  ),
                ),
              );
            }))
          ],
        )

      )

    );
  }
}
