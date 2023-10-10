import 'package:ecom/pages/home.dart';
import 'package:ecom/pages/more.dart';
import 'package:ecom/pages/my_cart.dart';
import 'package:ecom/pages/order.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 List _pages = [Home(),Order(),MyCart(),More()];
 var _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.deepPurple,

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedLabelStyle: TextStyle(fontSize: 24,color: Colors.white),
        unselectedLabelStyle: TextStyle(fontSize: 24,color: Colors.white),

        fixedColor: Colors.white,

        backgroundColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.propane_sharp,color: Colors.white,),label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_sharp,color: Colors.white,),label: "My Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.mobile_friendly,color: Colors.white,),label: "More"),

        ],

        currentIndex: _selectedIndex,

        onTap: (index){

          setState(() {
            _selectedIndex=index;
          });
        },



      ),
      body: _pages[
          _selectedIndex
      ],


    );
  }
}
