import 'package:delivery_app/custom/settings_modal.dart';
import 'package:flutter/material.dart';

Row setting(context){
  return Row(
    children: <Widget>[
      PopupMenuButton(
        onSelected: (selected){
          switch (selected) {
            case 0:
              showDialog(
                context: context,
                builder: (context) => SettingsModal(),
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