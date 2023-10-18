import 'package:ecom/model/fruits_model.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {

  final List _items = [
    'All',
    'Pending',
    'Processing',
    'Delivered'
  ];

  var _isSelected = 0;

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
              Container(
                height: 60,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected = index;
                          fruitList.where((element) => element.type == _items[_isSelected]).toList();
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _isSelected == index
                                ? Colors.black
                                : Colors.blue,
                            borderRadius: BorderRadius.circular(
                              40,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            _items[index],
                            style: TextStyle(
                                fontSize: 16,
                                color: _isSelected == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),

              const SizedBox(height: 10,),

              Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red,
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
                                  Image(
                                    image: AssetImage(fruitList[index].img),
                                    width: 80,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        fruitList[index].name,
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                      Text("${fruitList[index].qty}"),
                                      Text(
                                        "${fruitList[index].price}",
                                        style: const TextStyle(fontSize: 16),
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
