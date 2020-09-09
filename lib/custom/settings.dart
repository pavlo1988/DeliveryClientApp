import 'package:delivery_app/custom/settings_modal.dart';
import 'package:delivery_app/screens/login.dart';
import 'package:delivery_app/utils/session_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Row setting(context){
  return Row(
    children: <Widget>[
      PopupMenuButton(
        onSelected: (selected) async {
          switch (selected) {
            case 0:
              showDialog(
                context: context,
                builder: (context) => SettingsModal(),
              );
              break;
            
            case 1:
              SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
              sharedPreferences.clear();
              SessionManager.initialize(sharedPreferences);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Login()),
              );
              break;
            default:
          }
        },
        color: Color(0xff88b2ca),
        itemBuilder: (context) {
          var list = List<PopupMenuEntry<Object>>();
          list.add(
            PopupMenuItem(
              child: Text("SETTINGS", style: TextStyle(fontWeight: FontWeight.w600)),
              value: 0,
            ),
          );

          list.add(
            PopupMenuItem(
              child: Text("LOG OUT", style: TextStyle(fontWeight: FontWeight.w600)),
              value: 1,
            ),
          );

          list.add(
            PopupMenuItem(
              child: Text("ABOUT", style: TextStyle(fontWeight: FontWeight.w600)),
              value: 1,
            ),
          );
          return list;
        },
        icon: Icon(Icons.settings, color: Color.fromRGBO(192, 220, 245, 1)),
      ),
    ],
  );
}