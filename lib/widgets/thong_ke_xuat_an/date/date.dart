import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/thong_ke_xuat_an/buttons/search_button.dart';

Widget _dateBox(int n, int dropDownValue, {required ValueChanged<int?> function}){
  return DropdownButton<int>(
    value: dropDownValue,
    icon: Icon(Icons.arrow_downward),
    elevation: 16,
    style: TextStyle(color: Colors.black),
    underline: SizedBox(),
    onChanged: function,
    items: List.generate(
        n,
        (index){
          final myValue = index + 1;
          return DropdownMenuItem<int>(
            value: myValue,
            child: Text("$myValue"),
          );
        }
    ),
  );
}

Widget date(int month, int year, ValueChanged<int?> changeMonth, ValueChanged<int?> changeYear,{required VoidCallback searchFunction}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
        Text("Tháng"),
        _dateBox(12, month, function: changeMonth),
        Text("Năm"),
        _dateBox(2300, year, function: changeYear),
        searchButton(searchFunction: searchFunction),
    ],
  );
}