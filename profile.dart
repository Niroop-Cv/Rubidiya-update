import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/img 1.png',
      'assets/img 2.png',
      'assets/img 3.png',
      'assets/img 4.png',
      'assets/img 5.png',
      'assets/img 6.png',
      'assets/img 7.png',
      'assets/img 8.png',
      'assets/img 2.png',
      'assets/img 3.png',
      'assets/img 4.png',
      'assets/img 5.png',
    ];

    Future _displayBottomSheet(BuildContext context) {
      return showModalBottomSheet(
        context: context,
        barrierColor: Colors.transparent,
        // backgroundColor: Colors.white38,
        backgroundColor: Colors.white,
        isDismissible: true,
        builder: (context) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => BusinessCategory(),
                  //     ));
                },
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 17, left: 30),
                      child: Container(
                        height: 71,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.blue),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'BUSINESS ACCOUNT',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset('assets/businesspackage.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => BloodDonation(),
                  //     ));
                },
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 17, left: 30),
                      child: Container(
                        height: 71,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.blue),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'BLOOD DONATION',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset('assets/blooddonation.png')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => SelectDigitalPlan(),
                  //     ));
                },
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 17, left: 30),
                      child: Container(
                        height: 71,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.blue),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'DIGITAL V-CARD',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset('assets/digitalpackage.png')
                  ],
                ),
              )
            ],
          ),
        ),
        // Container(
        //     height: 250,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: const BorderRadius.only(
        //             topRight: Radius.circular(30),
        //             topLeft: Radius.circular(30))),
        //     child: Center(
        //       child: Text(
        //         "Loading...",
        //         style: TextStyle(fontWeight: FontWeight.bold),
        //       ),
        //     )),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset("assets/profile leading icon.png"),
            const SizedBox(
              width: 200,
            ),
            InkWell(
              onTap: () {
                _displayBottomSheet(context);
              },
              child: CircleAvatar(
                child: Image.asset("assets/profile action one.png"),
                backgroundColor: Colors.white10,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset("assets/profine action two.png"),
          ],
        ),
      ),
   
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 18, top: 20),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        "assets/summer+family+photos+outfit+ideas 2.png"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 90,
                    width: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "50",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "799",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "564",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Posts",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Followers",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Following",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Rayan Moon",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Photographer",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "You are Beautiful,and",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "I'm here to capture it",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          "Photos",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                bool isCornerImage =
                    (index == 0 || index == 2 || index == 9 || index == 11);

                return ClipRRect(
                  borderRadius: BorderRadius.circular(isCornerImage ? 16 : 0),
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
