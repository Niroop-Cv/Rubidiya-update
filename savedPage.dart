import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter_application_8/savedData.dart';

class SavedPage extends StatefulWidget {
  SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

final SnackBar _snackBar = SnackBar(
  content: Text(
    "Saved Successfully...",
    style: TextStyle(color: Colors.grey),
  ),
  duration: Duration(seconds: 1),
);

class _SavedPageState extends State<SavedPage> {
  String? bloodGroups;
  int? check;

  String? selectedValue;

  TextEditingController name = TextEditingController();
  TextEditingController Mobile = TextEditingController();
  TextEditingController Locat = TextEditingController();
  TextEditingController Age = TextEditingController();
  TextEditingController WhatsApp = TextEditingController();
  TextEditingController Date = TextEditingController();
  TextEditingController Blood = TextEditingController();
  TextEditingController Gender = TextEditingController();

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

  final _ValidateKey = GlobalKey<FormState>();

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
        child: Form(
          key: _ValidateKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Create a profile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Your profile saves lives",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),
              Divider(endIndent: 10, indent: 10),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
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
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: Mobile,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 12.0),
                        filled: true,
                        fillColor: Colors.grey[200],
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
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: Locat,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 12.0),
                        filled: true,
                        fillColor: Colors.grey[200],
                        labelText: "Your Location",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your location";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: dateController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 12.0),
                        filled: true,
                        fillColor: Colors.grey[200],

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        labelText: "DATE",
                        // filled: true,
                        suffixIcon: Icon(Icons.calendar_today_rounded),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      readOnly: true,
                      onTap: () {
                        saveTheDate();
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Select a date';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: Age,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 12.0),
                        filled: true,
                        fillColor: Colors.grey[200],
                        labelText: "Age",
                        hintText: "Enter your Age",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your age";
                        }
                        return null;
                      },
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: check,
                          onChanged: (int? value) {
                            setState(() {
                              check = value;
                            });
                          },
                        ),
                        Text("Male"),
                        SizedBox(width: 15),
                        Radio(
                          value: 2,
                          groupValue: check,
                          onChanged: (int? value) {
                            setState(() {
                              check = value;
                            });
                          },
                        ),
                        Text("Female"),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 12.0),
                        filled: true,
                        fillColor: Colors.grey[200],
                        labelText: "Blood Group",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
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
                      validator: (value) {
                        if (value == null) {
                          return 'Select a blood group';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: WhatsApp,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 12.0),
                        filled: true,
                        fillColor: Colors.grey[200],
                        labelText: "WhatsApp Number",
                        hintText: "Enter your WhatsApp Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your WhatsApp number";
                        } else if (value.length != 10) {
                          return 'Enter 10-digit WhatsApp number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          if (_ValidateKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(_snackBar);
                          }

                          if (_ValidateKey.currentState!.validate()) {
                            String gender = check == 1 ? "Male" : "Female";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SavedData(
                                  name: name.text,
                                  mobile: Mobile.text,
                                  location: Locat.text,
                                  date: dateController.text,
                                  age: Age.text,
                                  gender: gender,
                                  bloodGroup: selectedValue ?? '',
                                  whatsApp: WhatsApp.text,
                                ),
                              ),
                            );
                          }
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff1E3167),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
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
      ),
    );
  }

  Future<void> saveTheDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      // initialDate: DateTime(2022, 10, 09),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
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
