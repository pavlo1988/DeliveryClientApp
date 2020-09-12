class User {
  String uid;
  String name;
  String gender;
  String phone;
  String mobile;
  String email;

  User(
    {
      this.uid,
      this.name,
      this.gender,
      this.phone,
      this.mobile,
      this.email,
    }
  );


  User.fromJson(Map<dynamic, dynamic> json){
    uid = json['uid'];
    name = json['name'];
    gender = json['gender'];
    phone = json['phone'];
    mobile = json['mobile'];
    email = json['email'];
  }


  Map<String, dynamic> toJson() => {
    'uid': uid,
    'name': name,
    'gender': gender,
    'phone': phone,
    'mobile': mobile,
    'email': email,
  };
}
