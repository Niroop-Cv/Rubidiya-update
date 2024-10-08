import 'package:flutter/material.dart';
import 'package:flutter_application_8/saveControll.dart';
import 'package:flutter_application_8/savedData.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  String? bloodGroups;
  int check = 1;

  String? selectedValue;

  final List<String> dropitems = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];

  DateTime? selectedDate;
  late TextEditingController dateController;

  @override
  void initState() {
    super.initState();
    dateController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                "Create a profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Your profile saves lives",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            Divider(endIndent: 10, indent: 10),
            const SizedBox(height: 15),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: name,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 12.0),
                        filled: true,
                        fillColor: Colors.grey[200],
                        labelText: "Name",
                        hintText: "Enter your Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        controller: Mobile,
                        decoration: InputDecoration(
                          labelText: "Mobile Number",
                          hintText: "Enter your Mobile Number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                        ),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your mobile number';
                          } else if (value.length != 10) {
                            return 'Enter 10-digit mobile number';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        controller: Locat,
                        decoration: InputDecoration(
                          labelText: "Your Location",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                        ),
                        validator: (value) {
                          if (value == null || value.isNotEmpty) {
                            return "enter the location name";
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        controller: dateController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                          labelText: "DATE",
                          filled: true,
                          suffixIcon: Icon(Icons.calendar_today_rounded),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        readOnly: true,
                        onTap: () {
                          saveTheDate();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        controller: Age,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Age",
                          hintText: "Enter your Age",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                        ),
                        validator: (value) {
                          if (value == null || value.isNotEmpty) {
                            return "Enter your age";
                          }
                        },
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: check,
                        onChanged: (value) {
                          setState(() {
                            check = value!;
                          });
                        },
                      ),
                      Text("Male"),
                      SizedBox(width: 15),
                      Radio(
                        value: 2,
                        groupValue: check,
                        onChanged: (value) {
                          setState(() {
                            check = value!;
                          });
                        },
                      ),
                      Text("Female"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 10.0),
                        filled: true,
                        fillColor: Colors.grey[200],
                        labelText: "Blood Group",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      value: selectedValue,
                      items: dropitems.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                      isExpanded: true,
                      hint: Text('Select Blood Group'),
                    ),
                  ),

                  //<<code etc...====DropDownOtherCOde********===========>>>

                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: buildDropdownField(
                  //     label: "Blood Group",
                  //     items: dropitems,
                  //     value: bloodGroups,
                  //     onChanged: (String? newValue) {
                  //       setState(() {
                  //         bloodGroups = newValue!;
                  //       });
                  //     },
                  //   ),
                  // ),

                  //=====END====>>>>>>>>====DropDownOtherCOde********===========>>>
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        controller: WhatsApp,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Whatsapp Number",
                          hintText: "Enter your Whatsapp Number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                        ),
                        validator: (value) {
                          if (value == null || value.isNotEmpty) {
                            return "Enter your whatsapp number";
                          } else if (value.length != 10) {}
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  //extra code

                  //End of the code>>>>

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SavedData(),
                            ));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff1E3167),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // buildDropdownField({
  //   required String label,
  //   required List<String> items,
  //   required String? value,
  //   required Function(String?) onChanged,
  // }) {
  //   return Container(
  //     // height: 45,
  //     decoration: BoxDecoration(
  //         color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
  //     child: DropdownButtonFormField(
  //       decoration: InputDecoration(
  //         labelText: label,
  //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
  //       ),
  //       value: value,
  //       items: items.map((String item) {
  //         return DropdownMenuItem(
  //           value: item,
  //           child: Text(item),
  //         );
  //       }).toList(),
  //       onChanged: onChanged,
  //     ),
  //   );
  // }

  Future<void> saveTheDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;

        dateController.text =
            "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}";
      });
    }
  }
}
