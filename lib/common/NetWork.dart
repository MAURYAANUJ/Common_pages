import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

import 'AlertDialog.dart';


const  baseURL = "http://pnsapi.integritydigital.in/api/GetCustListBySalesmanID";

Future<dynamic> getURLData(BuildContext context,String uri,bool indicator) async {
  indicator?showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return getProgressDialog();
      }):null;
    http.Response response;
    try{
      response = await http.get(Uri.parse(baseURL + uri));
    } on SocketException{
      indicator?dismissIndicator(context):null;
      return  showAlertDialog(context,"No internet Connection");
    }
    if(response.statusCode == 200){
      indicator?dismissIndicator(context):null;
      return jsonDecode(response.body);
    }
    else if(response.statusCode == 500) {
      indicator?dismissIndicator(context):null;
      return showAlertDialog(context,"Internal Server Error");
    }else{
      return showAlertDialog(context,"Something went wrong!!!");
    }
}

void dismissIndicator(BuildContext context) {
  Navigator.of(context, rootNavigator: true).pop(context);
}




