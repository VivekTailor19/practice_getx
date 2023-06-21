import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_getx/dataTable_practice/dataTable_controller.dart';
import 'package:sizer/sizer.dart';

class DataTablePractice extends StatefulWidget {
  const DataTablePractice({super.key});

  @override
  State<DataTablePractice> createState() => _DataTablePracticeState();
}

class _DataTablePracticeState extends State<DataTablePractice> {

  DataTableController control = Get.put(DataTableController());



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Text(""),
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Text("DataTable",
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.sp,color: Colors.white),),),
        
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,

            child: Container(width: 600,
              child: Padding(
                padding:  EdgeInsets.all(8.0),

                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [Obx(() => DataTable(

                      border: TableBorder.all(width: 0.4,color: Colors.black38),
                        headingRowColor: MaterialStateColor.resolveWith((states) => Colors.black),
                        headingTextStyle: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),
                        columns: [
                          DataColumn(label: Text("No.")),
                          DataColumn(label: Text("Name")),
                          DataColumn(label: Text("Course")),
                          DataColumn(label: Text("Duration")),

                        ],
                        rows: [
                          for(int i=0;i<control.database.length ; i++)
                            buildDataRow(control.database[i],i)
                        ],
                    ),
                  )],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  DataRow buildDataRow(Map<dynamic, dynamic> e,int index) {
    return DataRow(
      selected: e['isSelected'],
                onSelectChanged: (value) {
                  Map temp = {
                    "id":e['id'],
                    "name":e['name'],
                    "course":e['course'],
                    "duration":e['duration'],
                    'isSelected':value
                  };

                  control.database[index] = temp;

                },
                cells: [
                  DataCell(Text("${e['id']}")),
                  DataCell(Text("${e['name']}")),
                  DataCell(Text("${e['course']}")),
                  DataCell(Text("${e['duration']} months"),),
                ],
                );
  }
}


class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

