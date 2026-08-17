import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/thong_ke_xuat_an/information/information_table.dart';
import 'package:intl/intl.dart';
import '../../../domain/entities/home/order_detail.dart';

final TextStyle _commonStyle = const TextStyle(
  color: Colors.white,
);

Widget tableHeader() {
  return Container(
    color: Colors.blue,
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              "STT",
              style: _commonStyle,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              "Tên món",
              style: _commonStyle,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              "Giá (VNĐ)",
              style: _commonStyle,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              "Ngày cung cấp",
              style: _commonStyle,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget tableRow(
    String stt,
    String name,
    String price,
    String date,
    ) {
  return Container(
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
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

Widget foodTable({
  required List<OrderDetail> orders,
  required int totalPrice,
  required bool hasMore,
  required bool isLoadingMore,
  required VoidCallback onLoadMore,
}) {
  final formatter = NumberFormat('#,###', 'vi_VN');

  return Column(
    children: [
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              tableHeader(),

              ...List.generate(
                orders.length,
                    (index) {
                  final orderDetail = orders[index];

                  return tableRow(
                    '${index + 1}',
                    orderDetail.food.name,
                    '${formatter.format(
                      orderDetail.food.price,
                    )} VNĐ',
                    DateFormat('d/M/yyyy').format(
                      orderDetail.food.availableDate.toLocal(),
                    ),
                  );
                },
              ),

              if (hasMore)
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: isLoadingMore
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                    onPressed: onLoadMore,
                    child: const Text('Xem thêm'),
                  ),
                ),
            ],
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          'Tổng tiền trong tháng: '
              '${formatter.format(totalPrice)} VNĐ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    ],
  );
}