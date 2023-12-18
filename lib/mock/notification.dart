import 'package:pet_app/models/notification/activity.dart';

class Notifications {
  static List<NotificationActivityModel> getActivities() {
    return [
      const NotificationActivityModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'Sale 50%',
        details: 'Check the details',
      ),
      const NotificationActivityModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'Sale 50%',
        details: 'Check the details',
      ),
      const NotificationActivityModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'Sale 50%',
        details: 'Check the details',
      ),
      const NotificationActivityModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'Sale 50%',
        details: 'Check the details',
      ),
    ];
  }

  static List<NotificationSellerModeModel> getSellerNotifications() {
    return [
      const NotificationSellerModeModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'You Got New Order',
        details: 'Please arrange delivery',
      ),
      const NotificationSellerModeModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'Momon',
        details: 'Liked your product',
        productImgUrl: 'assets/imgs/products/rc_pomeranian.png',
      ),
      const NotificationSellerModeModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'Ola',
        details: 'Liked your product',
        productImgUrl: 'assets/imgs/products/rc_pomeranian.png',
      ),
      const NotificationSellerModeModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'Raul',
        details: 'Liked your product',
        productImgUrl: 'assets/imgs/products/rc_pomeranian.png',
      ),
      const NotificationSellerModeModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'You Got New Order',
        details: 'Please arrange delivery',
      ),
      const NotificationSellerModeModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'You Got New Order',
        details: 'Please arrange delivery',
      ),
      const NotificationSellerModeModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'You Got New Order',
        details: 'Please arrange delivery',
      ),
      const NotificationSellerModeModel(
        imgUrl: 'assets/imgs/products/rc_pomeranian.png',
        title: 'Raul',
        details: 'Liked your product',
        productImgUrl: 'assets/imgs/products/rc_pomeranian.png',
      ),
    ];
  }
}
