import 'package:atelier_valois/cart.dart';
import 'package:atelier_valois/component/BottomNav.dart';
import 'package:atelier_valois/shop.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current=0;
  void navigateBottomBar(int index){
    setState(() {
      current=index;
    });
  }
  final List<Widget>page=[
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index)=>navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              icon: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(Icons.menu),
              ));
          }
        )
        
      ),
      body: page[current],
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'lib/image/icon.png',
                )
              ),
              const Padding(padding: EdgeInsetsGeometry.only(left: 8),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),              
              ),
              const Padding(padding: EdgeInsetsGeometry.only(left: 8),
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text("Info"),
              ),              
              ),
              const Padding(padding: EdgeInsetsGeometry.only(left: 8),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),              
              )
          ],
        ),
      ),
    );
  }
}