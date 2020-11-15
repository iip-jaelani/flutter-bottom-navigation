import 'package:flutter/material.dart';
import 'package:myApp/screens/chat.dart';
import 'package:myApp/screens/history.dart';
import 'package:myApp/screens/home.dart';
import 'package:myApp/screens/profile.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  Widget curentScreen = Home();
  final List<Widget> screens = [Home(), History(), Chat(), Profile()];
  int curentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: curentScreen,
      ),
      floatingActionButton: buildFloatingActionQr(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildMaterialButton(
                  text: "Home",
                  type_icon: Icons.home,
                  index: 0,
                  curentIndex: curentTab,
                  onPress: () {
                    print("Home");
                    setState(() {
                      curentTab = 0;
                      curentScreen = Home();
                    });
                  }),
              buildMaterialButton(
                  text: "History",
                  type_icon: Icons.history,
                  index: 1,
                  curentIndex: curentTab,
                  onPress: () {
                    setState(() {
                      curentTab = 1;
                      curentScreen = History();
                    });
                  }),
              SizedBox(
                width: 60,
              ),
              buildMaterialButton(
                  text: "Chat",
                  type_icon: Icons.chat,
                  index: 2,
                  curentIndex: curentTab,
                  onPress: () {
                    setState(() {
                      curentTab = 2;
                      curentScreen = Chat();
                    });
                  }),
              buildMaterialButton(
                  text: "Profile",
                  type_icon: Icons.account_circle,
                  index: 3,
                  curentIndex: curentTab,
                  onPress: () {
                    setState(() {
                      curentTab = 3;
                      curentScreen = Profile();
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }

  FloatingActionButton buildFloatingActionQr() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.qr_code_scanner_rounded,
        size: 30,
        color: Colors.white,
      ),
      backgroundColor: Colors.blue,
    );
  }

  MaterialButton buildMaterialButton(
      {String text,
      IconData type_icon,
      Function onPress,
      int index,
      int curentIndex}) {
    return MaterialButton(
      onPressed: onPress,
      minWidth: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            type_icon,
            color: curentIndex == index ? Colors.blue : Colors.grey,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 14.0,
                color: curentIndex == index ? Colors.blue : Colors.grey),
          )
        ],
      ),
    );
  }
}
