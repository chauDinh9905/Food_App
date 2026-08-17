import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/thong_ke_xuat_an/buttons/search_button.dart';

Widget _monthBox(
    int? value, {
      required ValueChanged<int?> function,
    }) {
  return DropdownButton<int>(
    value: value,
    hint: const Text('Chọn tháng'),
    icon: const Icon(Icons.arrow_downward),
    elevation: 16,
    style: const TextStyle(color: Colors.black),
    underline: const SizedBox(),
    onChanged: function,
    items: List.generate(
      12,
          (index) {
        final myValue = index + 1;

        return DropdownMenuItem<int>(
          value: myValue,
          child: Text('$myValue'),
        );
      },
    ),
  );
}

Widget _yearBox(
    int? value, {
      required ValueChanged<int?> function,
    }) {
  return DropdownButton<int>(
    value: value,
    hint: const Text('Chọn năm'),
    icon: const Icon(Icons.arrow_downward),
    elevation: 16,
    style: const TextStyle(color: Colors.black),
    underline: const SizedBox(),
    onChanged: function,
    items: List.generate(
      2300 - 2020 + 1,
          (index) {
        final myValue = 2020 + index;

        return DropdownMenuItem<int>(
          value: myValue,
          child: Text('$myValue'),
        );
      },
    ),
  );
}

Widget date(
    int? month,
    int? year,
    ValueChanged<int?> changeMonth,
    ValueChanged<int?> changeYear, {
      required VoidCallback searchFunction,
    }) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text('Tháng'),

      _monthBox(
        month,
        function: changeMonth,
      ),

      const Text('Năm'),

      _yearBox(
        year,
        function: changeYear,
      ),

      searchButton(
        searchFunction: searchFunction,
      ),
    ],
  );
}