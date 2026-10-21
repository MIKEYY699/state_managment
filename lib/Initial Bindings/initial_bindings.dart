import 'package:get/get.dart';
import 'package:state_managment/views/Home/number_controller.dart';
import 'package:state_managment/views/firebase_screens/firebase_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<NumberController>(() => NumberController());
    Get.lazyPut<UiController>(() => UiController());
    Get.lazyPut<FirebaseController>(()=> FirebaseController());
  }
}
