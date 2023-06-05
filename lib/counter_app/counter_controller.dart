import 'package:get/get.dart';

class CounterController extends GetxController {
  int no = 1;

  void add1() {
    no++;
    update();
  }

  void min1() {
    no--;
    update();
  }

  void multi2() {
    no = no * 2;
    update();
  }

  void multi3() {
    no = no * 3;
    update();
  }

  void multi4() {
    no = no * 4;
    update();
  }
// void add1() {  no++  ; update();  }
}
