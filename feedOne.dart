import 'package:flutter/material.dart';
import 'package:flutter_application_8/company.dart';
import 'package:flutter_application_8/profile.dart';

class MyFeedOne extends StatelessWidget {
  const MyFeedOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset("assets/Name 2 1 (1).png"),
            SizedBox(width: 72),
            Image.asset("assets/Group.png"),
            SizedBox(width: 10),
            Image.asset("assets/messege.png"),
            SizedBox(width: 10),
            Image.asset("assets/Vector.png"),
          ],
        ),
      ),
     
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    List<String> imageAssets = [
                      'assets/girlHd.jpg',
                      'assets/img 3.png',
                      'assets/img 4.png',
                      'assets/img 2.png',
                      'assets/img 6.png',
                      'assets/img 7.png',
                      'assets/img 8.png',
                      'assets/img 1.png',
                      'assets/img 2.png',
                      'assets/img 3.png',
                    ];

                    List<String> labels = [
                      'My Story',
                      'Samuel',
                      'Anxi',
                      'Heyes',
                      'Mexik',
                      'Bari',
                      'Ayids',
                      'Puma',
                      'Salama',
                      'Nexus',
                    ];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                                imageAssets[index % imageAssets.length]),
                          ),
                          Text(
                            labels[index % labels.length],
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/secondImage.jpg"),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monica.2255",
                        style: TextStyle(
                          color: Color(0xff1E3167),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "5h ago",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      "assets/manCarImg.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite, color: Colors.redAccent),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment_outlined, color: Colors.black),
                      onPressed: () {},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Liked by",
                          style: TextStyle(color: Color(0xff1E3167)),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Faizal",
                          style: TextStyle(
                              color: Color(0xff1E3167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "and",
                          style: TextStyle(color: Color(0xff1E3167)),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "98",
                          style: TextStyle(
                              color: Color(0xff1E3167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Others",
                          style: TextStyle(color: Color(0xff1E3167)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Monica.2255",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Have you ever wondered how many",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "hours you spend in your car?",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "#trip",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "View all 182 comments",
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/secondImage.jpg"),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monica.2255",
                        style: TextStyle(
                          color: Color(0xff1E3167),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "5h ago",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      "assets/summer+family+photos+outfit+ideas 2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite, color: Colors.redAccent),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment_outlined, color: Colors.black),
                      onPressed: () {},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Liked by",
                          style: TextStyle(color: Color(0xff1E3167)),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Faizal",
                          style: TextStyle(
                              color: Color(0xff1E3167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "and",
                          style: TextStyle(color: Color(0xff1E3167)),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "98",
                          style: TextStyle(
                              color: Color(0xff1E3167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Others",
                          style: TextStyle(color: Color(0xff1E3167)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Monica.2255",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Have you ever wondered how many",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "hours you spend in your car?",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "#trip",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "View all 182 comments",
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/secondImage.jpg"),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monica.2255",
                        style: TextStyle(
                          color: Color(0xff1E3167),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "5h ago",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      "assets/manCarImg.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite, color: Colors.redAccent),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment_outlined, color: Colors.black),
                      onPressed: () {},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Liked by",
                          style: TextStyle(color: Color(0xff1E3167)),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Faizal",
                          style: TextStyle(
                              color: Color(0xff1E3167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "and",
                          style: TextStyle(color: Color(0xff1E3167)),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "98",
                          style: TextStyle(
                              color: Color(0xff1E3167),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Others",
                          style: TextStyle(color: Color(0xff1E3167)),
                        )
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Monica.2255",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Have you ever wondered how many",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      )
                    ]),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "hours you spend in your car?",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "#trip",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "View all 182 comments",
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
