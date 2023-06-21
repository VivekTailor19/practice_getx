import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DataTableController extends GetxController
{

  RxList<Map> database = <Map>[
    {"id":01,"name":"Ajay","course":"Flutter","duration":12,'isSelected':false},
    {"id":02,"name":"Jay","course":"Python","duration":16,'isSelected':false},
    {"id":03,"name":"Jaydeep","course":"Animation","duration":8,'isSelected':false},
    {"id":05,"name":"Deep","course":"Web Design","duration":4,'isSelected':false},
    {"id":16,"name":"Dipesh","course":"Cyber Security","duration":24,'isSelected':true},
    {"id":03,"name":"Jaydeep","course":"Animation","duration":8,'isSelected':false},
    {"id":05,"name":"Deep","course":"Web Design","duration":4,'isSelected':false},
    {"id":16,"name":"Dipesh","course":"Cyber Security","duration":24,'isSelected':false},
    {"id":01,"name":"Ajay","course":"Flutter","duration":12,'isSelected':false},
    {"id":02,"name":"Jay","course":"Python","duration":16,'isSelected':false},
    {"id":03,"name":"Jaydeep","course":"Animation","duration":8,'isSelected':false},
    {"id":05,"name":"Deep","course":"Web Design","duration":4,'isSelected':false},
    {"id":16,"name":"Dipesh","course":"Cyber Security","duration":24,'isSelected':true},
    {"id":03,"name":"Jaydeep","course":"Animation","duration":8,'isSelected':true},
    {"id":05,"name":"Deep","course":"Web Design","duration":4,'isSelected':false},
    {"id":16,"name":"Dipesh","course":"Cyber Security","duration":24,'isSelected':false},

  ].obs;

}