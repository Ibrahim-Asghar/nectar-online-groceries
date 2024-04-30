import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/screens/check_out.dart';

class CheckOutButton extends StatelessWidget {
  final double totalPrice;

  const CheckOutButton({Key? key, required this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // padding: EdgeInsets.symmetric(vertical: 5),
        backgroundColor: Colors.green[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: CheckOut(),
            );
          },
        );
      },
      // onPressed: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => CheckOut(),
      //     ),
      //   );
      // },
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Go to Checkout',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0XFF489E67),
                borderRadius: BorderRadius.circular(4.0),
                border: Border(
                  left: BorderSide(color: Color(0XFF489E67)),
                  right: BorderSide(color: Color(0XFF489E67)),
                  bottom: BorderSide(color: Color(0XFF489E67)),
                  top: BorderSide(color: Color(0XFF489E67)),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '\$${totalPrice.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
