import 'package:flutter/material.dart';
// import 'package:rubidya/screens/profile_screen/packages/widgets/blood_donation.dart';
// import 'package:rubidya/screens/profile_screen/packages/widgets/select_digital_plan.dart';

// import '../../../resources/color.dart';
// import '../business_account/business_category.dart';

class SelectPackages extends StatefulWidget {
  const SelectPackages({super.key});

  @override
  State<SelectPackages> createState() => _SelectPackagesState();
}

class _SelectPackagesState extends State<SelectPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
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
    );
  }
}
