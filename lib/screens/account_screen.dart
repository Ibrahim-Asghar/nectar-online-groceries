import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/screens/error_screen.dart';
import 'package:nectar_online_groceries/screens/footer.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/avatar.jpg',
                    ),
                  ),
                  title: Row(
                    children: [
                      Text(
                        'Afsar Hossen',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.edit_outlined,
                        color: Colors.green[400],
                      ),
                    ],
                  ),
                  subtitle: Text(
                    'imshuvo97@gmail.com',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                  height: 15.0,
                ),
              ],
            );
          } else {
            IconData iconData = Icons.info;
            String labelText = 'Default';

            if (index == 1) {
              iconData = Icons.shopping_bag_outlined;
              labelText = 'Orders';
            } else if (index == 2) {
              iconData = Icons.contact_emergency_outlined;
              labelText = 'My Details';
            } else if (index == 3) {
              iconData = Icons.location_on_outlined;
              labelText = 'Delivery Address';
            } else if (index == 4) {
              iconData = Icons.payment;
              labelText = 'Payment Methods';
            } else if (index == 5) {
              iconData = Icons.confirmation_num_outlined;
              labelText = 'Promo Cord';
            } else if (index == 6) {
              iconData = Icons.notifications_none;
              labelText = 'Notifications';
            } else if (index == 7) {
              iconData = Icons.help_outline;
              labelText = 'Help';
            } else if (index == 8) {
              iconData = Icons.error_outline;
              labelText = 'About';
            }

            return Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  leading: Icon(iconData),
                  title: Text(labelText),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                  height: 1.0,
                ),
              ],
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                // height: MediaQuery.of(context).size.height * 10,
                // child: ErrorScreen(),
                height: MediaQuery.of(context).size.height * 0.8,
                child: ErrorScreen(),
              );
            },
          );
        },
        icon: Icon(
          Icons.output,
          color: Color(0XFF53B175),
        ),
        label: Text(
          '                Log Out                ',
          style: TextStyle(
              color: Color(0XFF53B175),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        backgroundColor: Color(0XFFF2F3F2),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: CustomFooter(),
    );
  }
}
