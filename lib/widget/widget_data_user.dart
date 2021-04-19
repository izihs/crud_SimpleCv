import 'package:alpha_cv/widget/theme.dart';
import 'package:flutter/material.dart';

class DataUser extends StatelessWidget {
  //constructor : untuk mengisi data Class DataUser
  final String idUser;
  final String fileName;
  final String nName;
  final String fName;
  final String place;
  final String dob;
  final String address;
  final String phone;
  final String email;
  final String eduY1;
  final String eduX1;
  final String eduY2;
  final String eduX2;
  final String weY1;
  final String weX1;
  final String weY2;
  final String weX2;
  final String skill1;
  final String skill2;
  final String skill3;
  final String about;
  final Function onUpdate;
  final Function onDelete;

  DataUser({
    this.idUser = "",
    this.fileName = "",
    this.nName = "",
    this.fName = "",
    this.place = "",
    this.dob = "",
    this.address = "",
    this.phone = "",
    this.email = "",
    this.eduY1 = "",
    this.eduX1 = "",
    this.eduY2 = "",
    this.eduX2 = "",
    this.weY1 = "",
    this.weX1 = "",
    this.weY2 = "",
    this.weX2 = "",
    this.skill1 = "",
    this.skill2 = "",
    this.skill3 = "",
    this.about = "",
    // 21 Var
    this.onUpdate,
    this.onDelete,
  });
  //stoper
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        //Container: utk menentukan padding (pada card)
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text("ID.0" + idUser, style: subtitleHeader),
                    //
                    SizedBox(
                      width: 100,
                      height: 70,
                    ),
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff1abc9c), // Background
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: onUpdate,
                            child: Text("Update",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffe74c3c), // Background
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: onDelete,
                          child: Text("Delete",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("File Name : " + fileName, style: subtitleHeader),
                    SizedBox(
                      width: 80,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text("Personal Resume", style: titleHeader),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text("Hello... "),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text("I'm " + nName, style: header01),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(about, style: subtitleHeader),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Icon(Icons.perm_identity),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Full Name"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(fName, style: header02),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Icon(Icons.location_city),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Place of Birth"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(place, style: header02),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Icon(Icons.date_range),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Day of Birth"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(dob, style: header02),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Address"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(address, style: header02),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Icon(Icons.phone_android),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Phone"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(phone, style: header02),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Email"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(email, style: header02),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ////
                Row(
                  children: [
                    Text("Education ", style: titleHeader),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.adjust),
                    SizedBox(
                      width: 10,
                    ),
                    Text(eduY1, style: header02),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Text(eduX1),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.adjust),
                    SizedBox(
                      width: 10,
                    ),
                    Text(eduY2, style: header02),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Text(eduX2),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),
                ///////
                Row(
                  children: [
                    Text("Work Experience ", style: titleHeader),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.adjust),
                    SizedBox(
                      width: 10,
                    ),
                    Text(weY1, style: header02),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Text(weX1),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.adjust),
                    SizedBox(
                      width: 10,
                    ),
                    Text(weY2, style: header02),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Text(weX2),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                ///////
                Row(
                  children: [
                    Text("Skills", style: titleHeader),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.adjust),
                    SizedBox(
                      width: 10,
                    ),
                    Text(skill1, style: header02),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.adjust),
                    SizedBox(
                      width: 10,
                    ),
                    Text(skill2, style: header02),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.adjust),
                    SizedBox(
                      width: 10,
                    ),
                    Text(skill3, style: header02),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
