import 'package:flutter/material.dart';
import 'package:secondapp/pages/details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Knowledge"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            MyBox(
                "What is Snow  ? ",
                "Snow comprises individual ice crystals that grow while suspended in the atmosphere",
                "https://cdn.pixabay.com/photo/2016/08/09/21/54/lake-1581879_960_720.jpg"),
            SizedBox(
              height: 20,
            ),
            MyBox(
                "What is sea ?",
                "The sea, connected as the world ocean or simply the ocean, is the body of salty water that covers approximately 71 percent of the Earth's surface.",
                "https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_960_720.jpg"),
            SizedBox(
              height: 20,
            ),
            MyBox(
                "what is mountain",
                "A mountain is an elevated portion of the Earth's crust, generally with steep sides that show significant exposed bedrock.",
                "https://cdn.pixabay.com/photo/2021/11/27/12/16/mountain-6827881_960_720.jpg"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String imageURL) {
    return Container(
        padding: EdgeInsets.all(20),
        height: 150,
        decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(imageURL),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {
                  print("Next page >>");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailsPage()));
                },
                child: Text("read more"))
          ],
        ));
  }
}
