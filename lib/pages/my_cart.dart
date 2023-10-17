import 'package:ecom/model/fruits_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Daily\nGrocery Food",
                    style: TextStyle(fontSize: 34, color: Colors.black),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: const Icon(
                      Icons.search_rounded,
                      size: 35,
                    ),
                  )
                ],
              ),
              Expanded(
                  child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.red,
                    ),
                    child: Slidable(
                      key: const ValueKey(0),
                      endActionPane: ActionPane(
                        motion: ScrollMotion(),
                        extentRatio: 0.22,
                        children: [
                          SlidableAction(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16)
                            ),
                            onPressed: (context) {
                              setState(() {
                                fruitList.removeAt(index);
                              });
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Item Deleted")));
                            },
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                          ),
                        ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                // Image(
                                //   image: NetworkImage(
                                //       "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w="),
                                //   width: 60,
                                // ),
                                Image(
                                  image: AssetImage("${fruitList[index].img}"),
                                  width: 80,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "${fruitList[index].name}",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text("${fruitList[index].qty}"),
                                    Text(
                                      "${fruitList[index].price}",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "+",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Colors.black),
                                    child: const Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                    )),
                                const Text("-", style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemCount: fruitList.length,
              ))
            ],
          ),
        ),
      ),
    );
  }
}


//                  return Slidable(
//                     key: const ValueKey(0),
//                     endActionPane: ActionPane(
//                       motion: ScrollMotion(),
//                       extentRatio: 0.22,
//                       children: [
//                         SlidableAction(
//                           borderRadius: BorderRadius.circular(5),
//                           onPressed: (context) {
//
//                           },
//                           backgroundColor: Colors.red,
//                           foregroundColor: Colors.white,
//                           icon: Icons.delete,
//                         ),
//                       ],
//                     ),
//                     child: Card(
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 // Image(
//                                 //   image: NetworkImage(
//                                 //       "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w="),
//                                 //   width: 60,
//                                 // ),
//                                 Image(
//                                   image: AssetImage("${fruitList[index].img}"),
//                                   width: 80,
//                                 ),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 Column(
//                                   children: [
//                                     Text(
//                                       "${fruitList[index].name}",
//                                       style: TextStyle(fontSize: 16),
//                                     ),
//                                     Text("${fruitList[index].qty}"),
//                                     Text(
//                                       "${fruitList[index].price}",
//                                       style: TextStyle(fontSize: 16),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 const Text(
//                                   "+",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                                 Container(
//                                     height: 20,
//                                     width: 20,
//                                     alignment: Alignment.center,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(3),
//                                         color: Colors.black),
//                                     child: const Text(
//                                       "1",
//                                       style: TextStyle(
//                                           fontSize: 14, color: Colors.white),
//                                     )),
//                                 const Text("-", style: TextStyle(fontSize: 20)),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );

///
//                  return Dismissible(
//                     key: ObjectKey(fruitList[index]),
//                     direction: DismissDirection.endToStart,
//
//                     background: Container(
//                       alignment: Alignment.centerRight,
//                       child: Icon(Icons.delete,size: 30,),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                     ),
//                     secondaryBackground: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 20),
//                       alignment: Alignment.centerRight,
//                       child: Icon(Icons.delete,size: 30,color: Colors.white,),
//                       decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(20)
//                       ),
//                     ),
//                     child: Card(
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 // Image(
//                                 //   image: NetworkImage(
//                                 //       "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w="),
//                                 //   width: 60,
//                                 // ),
//                                 Image(
//                                   image: AssetImage("${fruitList[index].img}"),
//                                   width: 80,
//                                 ),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 Column(
//                                   children: [
//                                     Text(
//                                       "${fruitList[index].name}",
//                                       style: TextStyle(fontSize: 16),
//                                     ),
//                                     Text("${fruitList[index].qty}"),
//                                     Text(
//                                       "${fruitList[index].price}",
//                                       style: TextStyle(fontSize: 16),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 const Text(
//                                   "+",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                                 Container(
//                                     height: 20,
//                                     width: 20,
//                                     alignment: Alignment.center,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(3),
//                                         color: Colors.black),
//                                     child: const Text(
//                                       "1",
//                                       style: TextStyle(
//                                           fontSize: 14, color: Colors.white),
//                                     )),
//                                 const Text("-", style: TextStyle(fontSize: 20)),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );