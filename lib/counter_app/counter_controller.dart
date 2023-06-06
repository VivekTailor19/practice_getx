import 'package:get/get.dart';

class CounterController extends GetxController {
  double no = 1;

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
  void divide2() {
    no = no / 2;
    update();
  }
  void divide5() {
    no = no / 5;
    update();
  }
  void divide10() {
    no = no / 10;
    update();
  }
// void add1() {  no++  ; update();  }
}
