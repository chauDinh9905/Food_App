import 'package:flutter/material.dart';

Widget _buttonInRow(
    Color color,
    String label,
    VoidCallback? function,
    ) {
  return Expanded(
    child: FilledButton(
      onPressed: function,
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 8,
        ),
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: color,
        disabledBackgroundColor: Colors.grey,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget _stateInRow(
    Color color,
    String label,
    ) {
  return Expanded(
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget informationButton({
  required bool isOrdered,
  required bool canOrder,
  required bool canCancel,
  required VoidCallback onOrder,
  required VoidCallback onCancel,
}) {
  return Row(
    children: [
      _buttonInRow(
        Colors.red,
        "Hủy món",
        canCancel ? onCancel : null,
      ),

      const SizedBox(width: 5),

      if (isOrdered)
        _stateInRow(
          Colors.grey,
          "Đã đặt",
        )
      else
        _buttonInRow(
          Colors.blue,
          "Đặt món",
          canOrder ? onOrder : null,
        ),
    ],
  );
}