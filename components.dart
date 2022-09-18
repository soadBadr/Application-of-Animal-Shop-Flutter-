import 'package:flutter/material.dart';
Widget Textform({ Function function,TextEditingController con ,  Icon prefix , @required String label , @required String hint , @ required TextInputType type , bool obscure =false, IconButton SUFFIX})=> TextFormField(
  validator: function,
  controller: con,
  keyboardType: type,
  obscureText:obscure ,
  decoration: InputDecoration(
    prefixIcon: prefix ,
    suffixIcon: SUFFIX,
    labelText: label ,
    hintText: hint,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10)
    ),
  ),
) ;