import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // size
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(100)),
                image: DecorationImage(
                    alignment: Alignment.centerRight,
                    scale: 2,
                    image: NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/XyrgDhzJ7g7HUPWJxyTQf7HmYQUFAEXP1uwkLp_4KVzVCLLrLxgvUWDL2vUHeatJ_0XY9e5RU0VBuzb1hitQ0efvVXhbKZhAjljFwtrBqHFZCx7y0gw_z2dU0YZF"))),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Text("Welcome back \nIip",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: TextField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search. . .",
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 26,
                          ))),
                ),
                Expanded(
                    child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: .75,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: <Widget>[
                    ActionsCard(
                      title: "Pakai masker",
                      image:
                          "https://static.wixstatic.com/media/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png/v1/fill/w_1000,h_727,al_c,usm_0.66_1.00_0.01/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png",
                    ),
                    ActionsCard(
                      title: "Cuci tangan",
                      image:
                          "https://static.wixstatic.com/media/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png/v1/fill/w_1000,h_727,al_c,usm_0.66_1.00_0.01/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png",
                    ),
                    ActionsCard(
                      title: "Coli jangan lupa",
                      image:
                          "https://static.wixstatic.com/media/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png/v1/fill/w_1000,h_727,al_c,usm_0.66_1.00_0.01/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png",
                    ),
                    ActionsCard(
                      title: "Coli jangan lupa",
                      image:
                          "https://static.wixstatic.com/media/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png/v1/fill/w_1000,h_727,al_c,usm_0.66_1.00_0.01/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png",
                    ),
                    ActionsCard(
                      title: "Coli jangan lupa",
                      image:
                          "https://static.wixstatic.com/media/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png/v1/fill/w_1000,h_727,al_c,usm_0.66_1.00_0.01/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png",
                    ),
                    ActionsCard(
                      title: "Coli jangan lupa",
                      image:
                          "https://static.wixstatic.com/media/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png/v1/fill/w_1000,h_727,al_c,usm_0.66_1.00_0.01/862908_b0090fbbb8be4c11bab9bf0d0c824c6e~mv2.png",
                    ),
                  ],
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class ActionsCard extends StatelessWidget {
  final String title;
  final String image;

  const ActionsCard({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[300], borderRadius: BorderRadius.circular(16.0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Image.network(image),
            Spacer(),
            Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
