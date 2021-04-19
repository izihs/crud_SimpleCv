import 'dart:convert';

import 'package:alpha_cv/pages/form_add_user.dart';
import 'package:alpha_cv/pages/form_update_user.dart';
import 'package:alpha_cv/widget/theme.dart';
import 'package:alpha_cv/widget/widget_data_user.dart';
import 'package:flutter/material.dart';
import 'package:alpha_cv/model/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  List<UserModel> listUser = [];
  getListUser() async {
    listUser.clear();
    var url =
        Uri.parse("http://192.168.0.105/data_user_alphacv/get_data_user.php");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        final data = jsonDecode(response.body);
        for (Map item in data) {
          listUser.add(UserModel.fromJson(item));
        }
      });
    }
  }

  deleteMethod(String idUser) async {
    var url = Uri.parse(
        "http://192.168.0.105/data_user_alphacv/delete_data_user.php");
    final response = await http.post(url, body: {
      "idUser": idUser,
    });
    final data = jsonDecode(response.body);
    int value = data['value'];
    String message = data['message'];
    if (value == 1) {
      print(message);
      refresh();
    } else {
      print(message);
    }
  }

  Future<void> refresh() async {
    return getListUser();
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    getListUser();
  }

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
          title: Text("Simple Cv"),
        ),
      ),
      body: Container(
        child: RefreshIndicator(
          onRefresh: refresh,
          child: ListView(
            //listview = scrolling
            padding: EdgeInsets.all(24),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Lets Create Cv..."),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              DataUser(),
              //
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: listUser.length,
                itemBuilder: (context, index) {
                  final x = listUser[index];
                  return DataUser(
                    idUser: x.idUser,
                    fileName: x.fileName,
                    nName: x.nName,
                    fName: x.fName,
                    place: x.place,
                    dob: x.dob,
                    address: x.address,
                    phone: x.phone,
                    email: x.email,
                    eduY1: x.eduY1,
                    eduX1: x.eduX1,
                    eduY2: x.eduY2,
                    eduX2: x.eduX2,
                    weY1: x.weY1,
                    weX1: x.weX1,
                    weY2: x.weY2,
                    weX2: x.weX2,
                    skill1: x.skill1,
                    skill2: x.skill2,
                    skill3: x.skill3,
                    about: x.about,
                    onUpdate: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FormUpdateUser(
                                    method: refresh,
                                    model: x,
                                  )));
                    },
                    onDelete: () {
                      setState(() {
                        deleteMethod(x.idUser);
                      });
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
      //
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormAddUser(refresh);
          }));
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: btnGreen,
      ),
      //Menambah Floating Button
    );
  }
}
