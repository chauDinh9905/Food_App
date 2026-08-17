import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../information/food_information.dart';
import '../buttons/informationButton.dart';

Widget foodCard(
    String fileImage,
    String foodName,
    String foodPrice,
    DateTime dt, {
      required bool isOrdered,
      required bool canOrder,
      required bool canCancel,
      required VoidCallback onOrder,
      required VoidCallback onCancel,
    }) {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 5,
      vertical: 4,
    ),
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: Colors.grey,
        width: 1.5,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.2),
          blurRadius: 8,
          spreadRadius: 1,
          offset: const Offset(2, 3),
        ),
      ],
    ),
    child: LayoutBuilder(
      builder: (context, constraints) {
        final imageWidth =
        (constraints.maxWidth * 0.35).clamp(110.0, 300.0);

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: imageWidth,
              child: AspectRatio(
                aspectRatio: 1.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    '${dotenv.env['BASE_URL']!.replaceFirst('/api', '')}$fileImage',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(
                          Icons.image_not_supported,
                          size: 40,
                        ),
                      );
                    },
                  )
                ),
              ),
            ),

            const SizedBox(width: 8),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  foodInformation(
                    foodName,
                    foodPrice,
                    dt,
                  ),

                  const SizedBox(height: 5),

                  informationButton(
                    isOrdered: isOrdered,
                    canOrder: canOrder,
                    canCancel: canCancel,
                    onOrder: onOrder,
                    onCancel: onCancel,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    ),
  );
}