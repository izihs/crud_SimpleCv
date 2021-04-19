import 'dart:convert';

import 'package:alpha_cv/model/user_model.dart';
import 'package:alpha_cv/widget/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FormUpdateUser extends StatefulWidget {
  final VoidCallback method;
  final UserModel model;
  FormUpdateUser({this.method, this.model});
  @override
  _FormUpdateUserState createState() => _FormUpdateUserState();
}

class _FormUpdateUserState extends State<FormUpdateUser> {
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

  submitUpdate() async {
    var url = Uri.parse(
        "http://192.168.0.105/data_user_alphacv/update_data_user.php");
    final response = await http.post(url, body: {
      "fileName": fileNameController.text.isEmpty
          ? widget.model.fileName
          : fileNameController.text,
      "nName": nNameController.text.isEmpty
          ? widget.model.nName
          : nNameController.text,
      "fName": fNameController.text.isEmpty
          ? widget.model.fName
          : fNameController.text,
      "place": placeController.text.isEmpty
          ? widget.model.place
          : placeController.text,
      "dob": dobController.text.isEmpty ? widget.model.dob : dobController.text,
      "address": addressController.text.isEmpty
          ? widget.model.address
          : addressController.text,
      "phone": phoneController.text.isEmpty
          ? widget.model.phone
          : phoneController.text,
      "email": emailController.text.isEmpty
          ? widget.model.email
          : emailController.text,
      "eduY1": eduY1Controller.text.isEmpty
          ? widget.model.eduY1
          : eduY1Controller.text,
      "eduX1": eduX1Controller.text.isEmpty
          ? widget.model.eduX1
          : eduX1Controller.text,
      "eduY2": eduY2Controller.text.isEmpty
          ? widget.model.eduY2
          : eduY2Controller.text,
      "eduX2": eduX2Controller.text.isEmpty
          ? widget.model.eduX2
          : eduX2Controller.text,
      "weY1":
          weY1Controller.text.isEmpty ? widget.model.weY1 : weY1Controller.text,
      "weX1":
          weX1Controller.text.isEmpty ? widget.model.weX1 : weX1Controller.text,
      "weY2":
          weY2Controller.text.isEmpty ? widget.model.weY2 : weY2Controller.text,
      "weX2":
          weX2Controller.text.isEmpty ? widget.model.weX2 : weX2Controller.text,
      "skill1": skill1Controller.text.isEmpty
          ? widget.model.skill1
          : skill1Controller.text,
      "skill2": skill2Controller.text.isEmpty
          ? widget.model.skill2
          : skill2Controller.text,
      "skill3": skill3Controller.text.isEmpty
          ? widget.model.skill2
          : skill3Controller.text,
      "about": aboutController.text.isEmpty
          ? widget.model.about
          : aboutController.text,
    });
    var jsonDecode2 = jsonDecode(response.body);
    final data = jsonDecode2;
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
          title: Text("Update Your Data"),
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
                      hintText: widget.model.fileName,
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
                        border: InputBorder.none, hintText: widget.model.nName),
                  ),
                ),
                /////////////////////////////////
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
                      hintText: widget.model.fName,
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
                      hintText: widget.model.place,
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
                      hintText: widget.model.dob,
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
                      hintText: widget.model.address,
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
                      hintText: widget.model.phone,
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
                      hintText: widget.model.email,
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
                      hintText: widget.model.about,
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
                      hintText: widget.model.eduY1,
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
                      hintText: widget.model.eduX1,
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
                      hintText: widget.model.eduY2,
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
                      hintText: widget.model.eduX2,
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
                      hintText: widget.model.weY1,
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
                        border: InputBorder.none, hintText: widget.model.weX1),
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
                      hintText: widget.model.weY2,
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
                      hintText: widget.model.weX2,
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
                      hintText: widget.model.skill1,
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
                      hintText: widget.model.skill2,
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
                      hintText: widget.model.skill3,
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
                        submitUpdate();
                      });
                    },
                    child: Text(
                      "Update",
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
