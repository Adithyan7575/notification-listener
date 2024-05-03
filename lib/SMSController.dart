import 'package:notification_listener_service/notification_listener_service.dart';
import 'package:get/get.dart';

class SMSController extends GetxController {
  void requestForPermission() async {
    print("requesting permission");
    final bool status = await NotificationListenerService.isPermissionGranted();
    if (status != true) {
      print("NO permission");
      final bool statuss =
          await NotificationListenerService.requestPermission();
    } else {
      listenNotification();
    }
  }

  void listenNotification() async {
    print("Listening notification");
    NotificationListenerService.notificationsStream.listen((event) {
      print("Current notification : $event ");
    });
  }
}
