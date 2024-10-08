import 'package:flutter/material.dart';
import 'package:flutter_application_8/profile.dart';

class TheCompany extends StatefulWidget {
  const TheCompany({super.key});

  @override
  State<TheCompany> createState() => _TheCompanyState();
}

class _TheCompanyState extends State<TheCompany> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/Blue pink img.png",
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: Text(
                            "Company Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do  eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,nostrud exercitation ullamco laboris nisi  Ut aliquip ex ea commodo consequat.",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Container(
                                height: 40,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Color(0xff1E2E5D),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 45, top: 10),
                                  child: Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 225, 231, 229),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.phone),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 225, 231, 229),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Container(
                        color: Colors.white,
                        width: 80,
                        height: 80,
                        child: Center(
                          child: Image.asset("assets/applogo.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 190),
                  child: Text(
                    "Connect With Us",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 50,
                      color: Color.fromARGB(255, 142, 196, 240),
                      child: Image.asset("assets/Facebook.png"),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 50,
                      height: 50,
                      color: Color.fromARGB(255, 142, 196, 240),
                      child: Image.asset("assets/blank.png"),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 50,
                      height: 50,
                      color: Color.fromARGB(255, 142, 196, 240),
                      child: Image.asset("assets/youtube.png"),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 50,
                      height: 50,
                      color: Color.fromARGB(255, 142, 196, 240),
                      child: Image.asset("assets/Twitter.png"),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 50,
                      height: 50,
                      color: Color.fromARGB(255, 142, 196, 240),
                      child: Image.asset("assets/google.png"),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 50,
                      height: 50,
                      color: Color.fromARGB(255, 142, 196, 240),
                      child: Image.asset("assets/6222.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Text(
                    "Gallery",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 400,
                width: double.infinity,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    Image.asset("assets/Rectangle 6.png"),
                    Image.asset("assets/Rectangle 7.png"),
                    Image.asset("assets/Rectangle 8.png"),
                    Image.asset("assets/Rectangle 9.png"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
