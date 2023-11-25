import 'package:flutter/material.dart';
import 'shopping_page.dart';

void main() {
  runApp(
    MaterialApp(home: MainPage()), // use MaterialApp
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Center",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.red,
            fontFamily: 'VinaSans',
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) {
          if (newIndex == 1) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return Shopping();
            }));
          }
          if (newIndex == 2) {

          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined),
            activeIcon: Icon(Icons.shopping_cart_outlined),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            activeIcon: Icon(Icons.list),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(home: MainPage()), // use MaterialApp
//   );
// }

// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: NavigationBar(
//         height: 60,
//         selectedIndex: index,
//         onDestinationSelected: (index) => setState(() => this.index = index),
//         destinations: [
//           NavigationDestination(
//             icon: Icon(Icons.home_outlined),
//             selectedIcon: Icon(Icons.home),
//             label: 'Page 1',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.shopping_cart_checkout_outlined),
//             selectedIcon: Icon(Icons.shopping_cart_outlined),
//             label: 'Page 2',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.list_alt_outlined),
//             selectedIcon: Icon(Icons.list),
//             label: 'Page 1',
//           ),
//         ],
//       ),
//     );
//   }
// }
