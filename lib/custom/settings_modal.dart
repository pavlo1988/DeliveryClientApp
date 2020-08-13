import 'package:flutter/material.dart';
class SettingsModal extends StatefulWidget {

  @override
  _SettingsModalState createState() => _SettingsModalState();
}

class _SettingsModalState extends State<SettingsModal> {

  @override
  void initState() {
    super.initState();
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "Name"
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "Gender"
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "Phone"
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: "Mobile"
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextFormField(
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
                      Navigator.pop(context);
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