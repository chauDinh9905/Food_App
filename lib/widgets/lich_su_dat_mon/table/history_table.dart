import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget _historyTableHeader(){
  return Container(
    color: Colors.green,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: Text('STT')),
        Expanded(child: Text('Tên món')),
        Expanded(child: Text('Ngày cung cấp')),
        Expanded(child: Text('Trạng thái')),
      ],
    ),
  );
}

Widget _historyTableRow(int stt, String name, DateTime dt, String status){
  String dateString = DateFormat('dd/MM/yyyy').format(dt);
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: Text('$stt'),),
        Expanded(child: Text(name),),
        Expanded(child: Text(dateString),),
        Expanded(child: Text(status),),
      ],
    ),
  );
}

Widget historyTable(){
  DateTime now = DateTime.now();
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        _historyTableHeader(),
        _historyTableRow(1, "Cơm gà", now, "Đã đặt"),
        _historyTableRow(2, "Miến xào", now, "Đã đặt"),
        _historyTableRow(3, "Cơm trộn", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
        _historyTableRow(4, "Mỳ xào", now, "Đã đặt"),
      ],
    ),
  );
}