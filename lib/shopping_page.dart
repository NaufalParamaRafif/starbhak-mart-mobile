import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(MaterialApp(
  home: Shopping(),
));

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 92, 92, 92).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return MainPage();
              }));
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.orange),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(25.0), // Adjust the radius as needed
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 92, 92, 92).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.person,
                  color: Colors.orange,
                )),
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          DataTable(
            columns: [
              DataColumn(
                label: Text('Foto'),
              ),
              DataColumn(
                label: Text('Nama Produk'),
              ),
              DataColumn(
                label: Text('Harga'),
              ),
              DataColumn(
                label: Text('Aksi'),
              ),
            ], 
            rows: [
              DataRow(cells: [
                DataCell(Image.asset("assets/images/burger.jpg", height: 40,)),
                DataCell(Text('Burger')),
                DataCell(Text('Rp. 30.000,00')),
                DataCell(Icon(Icons.delete_forever_outlined, color: Colors.red,)),
              ],),
              DataRow(cells: [
                DataCell(Image.asset("assets/images/kebab.jpg", height: 40, width: 50,)),
                DataCell(Text('Kebab')),
                DataCell(Text('Rp. 20.000,00')),
                DataCell(Icon(Icons.delete_forever_outlined, color: Colors.red,)),
              ],),
              DataRow(cells: [
                DataCell(Image.asset("assets/images/sanqua.jpg", height: 40,)),
                DataCell(Text('Sanqua')),
                DataCell(Text('Rp. 5.000,00')),
                DataCell(Icon(Icons.delete_forever_outlined, color: Colors.red,)),
              ],),
          ],),
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.blue,
      ),
    );
  }
}