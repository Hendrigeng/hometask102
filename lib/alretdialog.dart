

import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task102/model/model.dart';
import 'package:task102/view_model/view_model.dart';

class Myareart extends StatelessWidget {
   Myareart({super.key});

  final text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   Consumer<ViewModel>  (builder: (context , viewModel , child){

      return AlertDialog(
        title: new Text("Alert!!"),
        content: new Text("You are awesome!"),
        actions: <Widget>[
          TextField(
            controller: text,
            decoration: InputDecoration(
                label: Text("username")
            ),
          ),
          TextButton(
            child: new Text("OK"),
            onPressed: () {

              ViewModel viewmode = new ViewModel();
              viewmode.adduser(text.text as UsersModel);
              Navigator.of(context).pop();
            },
          ),
        ],
      )  ;
    } )  ;
  }
}
