import 'package:geocoding/geocoding.dart';


import 'package:get/get.dart';

class LocationController extends GetxController
{
  RxDouble lat = 0.0.obs;
  RxDouble long = 0.0.obs;

  RxList<Placemark> placeLists = <Placemark>[].obs;
  Rx<Placemark> place  = Placemark().obs;


}