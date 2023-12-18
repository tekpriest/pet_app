import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/mock/notification.dart';
import 'package:pet_app/models/notification/activity.dart';
import 'package:pet_app/widgets/notification_card.widget.dart';

class NotificationActivitiyScreen extends StatelessWidget {
  NotificationActivitiyScreen({super.key});

  final List<NotificationActivityModel> activities = Notifications.getActivities();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Notifications.getActivities().length,
        itemBuilder: (context, index) {
          final NotificationActivityModel activity = activities[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              children: [
                buildNotificationCardImage(activity.imgUrl),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activity.title.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      activity.details,
                      style: const TextStyle(
                        color: AppColors.textGray,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  IconlyLight.arrowRight2,
                  size: 35,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
