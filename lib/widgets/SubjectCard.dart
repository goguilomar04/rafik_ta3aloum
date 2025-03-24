import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/AppColors.dart';
import 'package:flutter_application_1/theme/AppTextStyles.dart';
                                      // ----------------------------------p6------------


class SubjectCard extends StatelessWidget {
  final String subjectId;
  final String title;
  final String imageUrl;
  final double? rating;
  final int? count;

  const SubjectCard({
    required this.subjectId,
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.13),
            offset: const Offset(0, 10),
            blurRadius: 13,
          ),
        ],
      ),
      padding: const EdgeInsets.fromLTRB(7, 14, 7, 8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width: 144,
              height: 108,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 27),
          Text(
            title,
            style: AppTextStyles.subtitle,
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              'ضع العلامة',
              style: AppTextStyles.label,
            ),
          ),
        ],
      ),
    );
  }
}