import 'package:flutter/material.dart';
import 'package:moto_den_pk/Screens/splash_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDarkMode = false;

  void toggleTheme(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          title: SizedBox(
            height: 100,
            width: 70,
            child: IconButton(
              hoverColor: Colors.transparent,
              iconSize: 100.0,
              icon: Image.asset("assets/images/logo.png"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: isDarkMode
                    ? [
                        Color.fromARGB(255, 34, 34, 34),
                        Color.fromARGB(255, 0, 0, 0),
                      ]
                    : [
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(255, 245, 245, 245),
                      ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(
                    'MotoDen Pakistan',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  accountEmail: Text(
                    '"Unleash Speed. Embrace the Adventure."',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: isDarkMode
                        ? Color.fromARGB(255, 45, 45, 45)
                        : Color.fromARGB(255, 240, 240, 240),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Splash_Page()),
                    );
                  },
                ),
                SwitchListTile(
                  title: Text(
                    'Dark Mode',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  secondary: Icon(
                    isDarkMode ? Icons.dark_mode : Icons.light_mode,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  value: isDarkMode,
                  onChanged: toggleTheme,
                ),
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: isDarkMode
                  ? [
                      Color.fromARGB(255, 255, 29, 3),
                      Color.fromARGB(255, 34, 34, 34),
                      Color.fromARGB(255, 34, 34, 34),
                      Color.fromARGB(255, 255, 20, 3),
                    ]
                  : [
                      Color.fromARGB(255, 255, 29, 3),
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 29, 3),
                    ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              'Welcome to MotoDen Pakistan',
              style: TextStyle(
                fontSize: 24,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
