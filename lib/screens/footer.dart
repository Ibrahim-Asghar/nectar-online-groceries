import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/screens/account_screen.dart';
import 'package:nectar_online_groceries/screens/explore.dart';
import 'package:nectar_online_groceries/screens/favourites.dart';
import 'package:nectar_online_groceries/screens/home_screen.dart';
import 'package:nectar_online_groceries/screens/my_cart.dart';

class CustomFooter extends StatefulWidget {
  @override
  _CustomFooterState createState() => _CustomFooterState();
}

class _CustomFooterState extends State<CustomFooter> {
  String selectedOption = 'Home';

  void _selectOption(String option) {
    setState(() {
      selectedOption = option;
    });

    switch (option) {
      case 'Shop':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );

        break;
      case 'Explore':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Explore(),
          ),
        );

        break;
      case 'Cart':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyCart(),
          ),
        );

        break;
      case 'Favorite':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Favourite(),
          ),
        );

        break;
      case 'Account':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AccountScreen(),
          ),
        );

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 3,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildFooterItem('Shop', Icons.store_outlined),
          _buildFooterItem('Explore', Icons.manage_search_outlined),
          _buildFooterItem('Cart', Icons.shopping_cart_outlined),
          _buildFooterItem('Favorite', Icons.favorite_border),
          _buildFooterItem('Account', Icons.person_outline),
        ],
      ),
    );
  }

  Widget _buildFooterItem(String title, IconData icon) {
    bool isSelected = selectedOption == title;
    Color color = isSelected ? Color(0XFF53B175) : Color(0XFF181725);

    return GestureDetector(
      onTap: () {
        _selectOption(title);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
