class NotificationActivityModel {
  final String imgUrl;
  final String title;
  final String details;

  const NotificationActivityModel({
    required this.imgUrl,
    required this.title,
    required this.details,
  });
}

class NotificationSellerModeModel {
  final String imgUrl;
  final String title;
  final String details;
  final String? productImgUrl;

  const NotificationSellerModeModel({
    required this.imgUrl,
    required this.title,
    required this.details,
    this.productImgUrl,
  });
}
