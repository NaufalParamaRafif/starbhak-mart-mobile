import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Shopping(),
    ));

class Shopping extends StatelessWidget {
  const Shopping({super.key});

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
            onPressed: () {},
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
        child: Center(
          child: DataTable(
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
              DataCell(Image.asset("assets/images/tempatpensil.jpeg", height: 40,)),
              DataCell(Text('Tempat Pensil')),
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
        ),
      ),
    );
  }
}
