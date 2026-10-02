import 'package:get/get.dart';

class NumberController extends GetxController {
  RxInt n = 3.obs;


void increase(){
  n++;
}
void decrease(){
  n--;
}
}
 

