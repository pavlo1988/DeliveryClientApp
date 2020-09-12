import 'package:delivery_app/firebase_services/authentication.dart';
import 'package:delivery_app/models/user_model.dart';
import 'package:delivery_app/utils/session_manager.dart';
import 'package:flutter/material.dart';
class SettingsModal extends StatefulWidget {

  @override
  _SettingsModalState createState() => _SettingsModalState();
}

class _SettingsModalState extends State<SettingsModal> {

  String name = "";
  String gender = "";
  String phone = "";
  String mobile = "";

  @override
  void initState() {
    name = SessionManager.getUserName();
    gender = SessionManager.getGender();
    phone = SessionManager.getPhone();
    mobile = SessionManager.getMobile();
    super.initState();
  }

  saveUserInfo() async {
    await Auth().saveUserInfo(
      User(
        uid: SessionManager.getUserId(),
        name: name,
        gender: gender,
        phone: phone,
        mobile: mobile,
        email: SessionManager.getEmail(),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(     
      backgroundColor: Colors.white,
      child: Container(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("GENERAL", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),

              Image.asset("assets/products/product2.jpg"),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
                  initialValue: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "Name"
                  ),
                  onChanged: (value){
                    setState(() {
                      name = value;
                    });
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
                  initialValue: gender,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "Gender"
                  ),
                  onChanged: (value){
                    setState(() {
                      gender = value;
                    });
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
                  initialValue: phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "Phone"
                  ),
                  onChanged: (value){
                    setState(() {
                      phone = value;
                    });
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
                  initialValue: mobile,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "Mobile"
                  ),
                  onChanged: (value){
                    setState(() {
                      mobile = value;
                    });
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
                  initialValue: SessionManager.getEmail(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "Email"
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 25,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text("CANCEL", style: TextStyle(color: Colors.white)),
                  ),

                  SizedBox(width: 50),

                  MaterialButton(
                    color: Color.fromRGBO(0, 193, 93, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 25,
                    onPressed: (){
                      SessionManager.setUserName(name);
                      SessionManager.setGender(gender);
                      SessionManager.setPhone(phone);
                      SessionManager.setMobile(mobile);
                      Navigator.pop(context);
                      saveUserInfo();
                    },
                    child: Text("SAVE", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),

              Text("CHANGE PASSWORD", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "New password"
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "Repeat password"
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 25,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text("CANCEL", style: TextStyle(color: Colors.white)),
                  ),

                  SizedBox(width: 50),

                  MaterialButton(
                    color: Color.fromRGBO(0, 193, 93, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 25,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text("SAVE", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}