import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projects_for_mobile/domain/entities/home/order_detail.dart';
import 'package:projects_for_mobile/domain/entities/order.dart';

Widget _historyTableHeader() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8),
    color: Colors.green,
    child: Row(
      children: const [
        Expanded(
          flex: 1,
          child: Text(
            'STT',
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            'Tên món',
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            'Ngày cung cấp',
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            'Trạng thái',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}

Widget _historyTableRow(
    int stt,
    OrderDetail orderDetail,
    ) {
  final dateString = DateFormat('dd/MM/yyyy').format(
    orderDetail.food.availableDate.toLocal(),
  );

  final status = orderDetail.order.status == OrderStatus.ordered
      ? 'Đã đặt'
      : 'Đã hủy';

  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            '$stt',
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            orderDetail.food.name,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            dateString,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            status,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}

Widget historyTable({
  required List<OrderDetail> orders,
  required bool hasMore,
  required bool isLoadingMore,
  required int total,
  required VoidCallback onLoadMore,
}) {
  return Column(
    children: [
      _historyTableHeader(),

      Expanded(
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            return _historyTableRow(
              index + 1,
              orders[index],
            );
          },
        ),
      ),

      if (hasMore)
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: SizedBox(
            width: double.infinity,
            height: 40,
            child: OutlinedButton(
              onPressed: isLoadingMore ? null : onLoadMore,
              child: isLoadingMore
                  ? const SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              )
                  : const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_arrow_down),
                  SizedBox(width: 4),
                  Text('Xem thêm'),
                ],
              ),
            ),
          ),
        ),

      const SizedBox(height: 6),

      Text(
        'Đang hiển thị ${orders.length} / $total đơn',
      ),
    ],
  );
}