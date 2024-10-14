import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/tapBar.dart';
import 'package:image_picker/image_picker.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final picker = ImagePicker();
  File? _image;

  Future<void> imageFunc() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print("No image selected");
      }
    });
  }

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
              onTap: () {},
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
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 20),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: _image != null
                            ? FileImage(_image!)
                            : const AssetImage(
                                    "assets/summer+family+photos+outfit+ideas 2.png")
                                as ImageProvider,
                      ),
                      Positioned(
                        bottom: 2,
                        // right:0,
                        child: InkWell(
                          onTap: () {
                            imageFunc();
                          },
                          child: const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
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
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                          children: [
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
            SizedBox(height: 20),
            // TabBar(tabs: [
            //   Tab(
            //     text: "Photos",
            //   ),
            //   Tab(
            //     text: "Videos",
            //   ),
            // ]),

//...........TabBar code work out>>>>>>>>>>>>>>>>>>>>>>*

            // Container(
            //   height: 50,
            //   width: double.infinity,
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Container(
            //           color: Colors.white,
            //           child: const Center(
            //             child: Text(
            //               "Photos",
            //               style: TextStyle(
            //                 color: Colors.grey,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           color: Colors.white,
            //           child: const Center(
            //             child: Text(
            //               "Videos",
            //               style: TextStyle(
            //                 color: Colors.grey,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // const SizedBox(height: 10),
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
            ),
          ],
        ),
      ),
    );
  }
}
