class UserModel {
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

  UserModel({
    this.idUser = "",
    this.fileName = "File Name : ",
    this.nName = "",
    this.fName = "Full Name :",
    this.place = "Place Of Birth :",
    this.dob = "Day Of Birth :",
    this.address = "Address :",
    this.phone = "Phone :",
    this.email = "Email :",
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
    this.about = "About me :",
    // 21 Var
  });

  factory UserModel.fromJson(Map<String, dynamic> data) {
    return UserModel(
      idUser: data['idUser'],
      fileName: data['fileName'],
      nName: data['nName'],
      fName: data['fName'],
      place: data['place'],
      dob: data['dob'],
      address: data['address'],
      phone: data['phone'],
      email: data['email'],
      eduY1: data['eduY1'],
      eduX1: data['eduX1'],
      eduY2: data['eduY2'],
      eduX2: data['eduX2'],
      weY1: data['weY1'],
      weX1: data['weX1'],
      weY2: data['weY2'],
      weX2: data['weX2'],
      skill1: data['skill1'],
      skill2: data['skill2'],
      skill3: data['skill3'],
      about: data['about'],
    );
  }
}
