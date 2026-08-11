import 'package:flutter/material.dart';

TextStyle _commonStyle = TextStyle(color: Colors.white);

Widget tableHeader(){
    return Container(
      color: Colors.blue,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Text("STT", style: _commonStyle,),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text("Tên món", style: _commonStyle,),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text("Giá (VNĐ)", style: _commonStyle),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text("Ngày cung cấp", style: _commonStyle,),
            ),
          )
        ],
      ),
    );
}

Widget tableRow(String stt, String name, String price, String date){
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5),),
    ),
    child: Row(
      children: [
        Expanded(
            child: Center(
              child: Text(stt),
            ),
        ),
        Expanded(
          child: Center(
            child: Text(name),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(price),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(date),
          ),
        ),
      ],
    ),
  );
}