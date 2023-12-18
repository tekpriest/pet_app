import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/mock/notification.dart';
import 'package:pet_app/models/notification/activity.dart';
import 'package:pet_app/widgets/notification_card.widget.dart';

class NotificationSellerModeScreen extends StatelessWidget {
  NotificationSellerModeScreen({super.key});

  final List<NotificationSellerModeModel> notifications =
      Notifications.getSellerNotifications();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final NotificationSellerModeModel notification = notifications[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              children: [
                buildNotificationCardImage(notification.imgUrl),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      notification.details,
                      style: const TextStyle(
                        color: AppColors.textGray,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                notification.productImgUrl != null &&
                        notification.productImgUrl!.isNotEmpty
                    ? buildNotificationCardImage(notification.productImgUrl!)
                    : const Icon(
                        IconlyLight.arrowRight2,
                        size: 35,
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
