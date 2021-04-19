import 'dart:convert';

import 'package:alpha_cv/widget/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FormAddUser extends StatefulWidget {
  final VoidCallback method;
  FormAddUser(this.method);
  @override
  _FormAddUserState createState() => _FormAddUserState();
}

class _FormAddUserState extends State<FormAddUser> {
  TextEditingController fileNameController = TextEditingController();
  TextEditingController nNameController = TextEditingController();
  TextEditingController fNameController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController eduY1Controller = TextEditingController();
  TextEditingController eduX1Controller = TextEditingController();
  TextEditingController eduY2Controller = TextEditingController();
  TextEditingController eduX2Controller = TextEditingController();
  TextEditingController weY1Controller = TextEditingController();
  TextEditingController weX1Controller = TextEditingController();
  TextEditingController weY2Controller = TextEditingController();
  TextEditingController weX2Controller = TextEditingController();
  TextEditingController skill1Controller = TextEditingController();
  TextEditingController skill2Controller = TextEditingController();
  TextEditingController skill3Controller = TextEditingController();
  TextEditingController aboutController = TextEditingController();

  submit() async {
    var url =
        Uri.parse("http://192.168.0.105/data_user_alphacv/add_data_user.php");
    final response = await http.post(url, body: {
      "fileName": fileNameController.text,
      "nName": nNameController.text,
      "fName": fNameController.text,
      "place": placeController.text,
      "dob": dobController.text,
      "address": addressController.text,
      "phone": phoneController.text,
      "email": emailController.text,
      "eduY1": eduY1Controller.text,
      "eduX1": eduX1Controller.text,
      "eduY2": eduY2Controller.text,
      "eduX2": eduX2Controller.text,
      "weY1": weY1Controller.text,
      "weX1": weX1Controller.text,
      "weY2": weY2Controller.text,
      "weX2": weX2Controller.text,
      "skill1": skill1Controller.text,
      "skill2": skill2Controller.text,
      "skill3": skill3Controller.text,
      "about": aboutController.text,
    });
    final data = jsonDecode(response.body);
    int value = data["value"];
    String message = data["message"];
    if (value == 1) {
      setState(() {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Information..."),
                content: Text(message),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        widget.method();
                      },
                      child: Text("Ok"))
                ],
              );
            });
      });
    } else {
      setState(() {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Warning..."),
                content: Text(message),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Ok"))
                ],
              );
            });
      });
    }
  }

  //
  //
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        //mengatur tinggi AppBar
        child: AppBar(
          centerTitle: true,
          //mengatur letak title
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35)),
          ),
          //Mengatur bentuk AppBar
          title: Text("Add Your Data"),
        ),
      ),
      ///////////////////////////////
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            child: Column(
              children: [
                ///////////////////////////////////
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("File Name"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: fileNameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type File Name",
                    ),
                  ),
                ),

                ///
                ///
                ///
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Text("Personal Detail ", style: titleHeader),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                  ],
                ),
                ///////////////////////////////////
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("Nick Name"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: nNameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Nick Name",
                    ),
                  ),
                ),
                //////////Email/////////////////////////
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("Full Name"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: fNameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Full Name",
                    ),
                  ),
                ),
                ///////////////////////////////////
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("Place Of Birth"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: placeController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Place",
                    ),
                  ),
                ),
                ///////////////////////////////////
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("Day Of Birth"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: dobController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type DD-MM-YY",
                    ),
                  ),
                ),
                ///////////////////////////////////
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("Address"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: addressController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Address",
                    ),
                  ),
                ),
                ///////////////////////////////////
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("Phone"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Phone",
                    ),
                  ),
                ),
                ///////////////////////////////////
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("Email"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Email",
                    ),
                  ),
                ),
//
//
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("About"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: aboutController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type About you",
                    ),
                  ),
                ),

                ///
                ///
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Text("Education ", style: titleHeader),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                  ],
                ),

                ///
                ///
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("1st Year"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: eduY1Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Year to Year",
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("University Etc"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: eduX1Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type University Etc",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("2nd Year*"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: eduY2Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Year to Year",
                    ),
                  ),
                ),

                ///
                ///
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("University Etc"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: eduX2Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type University Etc",
                    ),
                  ),
                ),

                ///
                ///
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Text("Work Experience ", style: titleHeader),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                  ],
                ),

                ///
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("1st Year"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: weY1Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Year to Year",
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("Work Experience"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: weX1Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Work Experience",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("2nd Year*"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: weY2Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Year to Year",
                    ),
                  ),
                ),
                //
                //
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("Work Experience"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: weX2Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Work Experience",
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Text("Skills ", style: titleHeader),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                  ],
                ),

                ///
                ///
                ///
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("1st Skill"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: skill1Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Skill",
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("2nd Skill*"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: skill2Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Skill",
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                  child: Text("3rd Skill*"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                  )),
                  child: TextField(
                    controller: skill3Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Skill",
                    ),
                  ),
                ),

                ///
                ///
                SizedBox(
                  height: 30,
                ),

                ///Button
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff1abc9c), // Background
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    //elevation : Efek bayangan pd button
                    //RoundedRectangleBorder (borderRadius) : Efek circular
                    onPressed: () {
                      setState(() {
                        submit();
                      });
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
