import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Permission_Screen extends StatefulWidget {
  const Permission_Screen({super.key});

  @override
  State<Permission_Screen> createState() => _Permission_ScreenState();
}

class _Permission_ScreenState extends State<Permission_Screen> {

@override
  void initState() {
    permission();
    super.initState();
  }

  Future<void> permission()
  async {
    if(await Permission.camera.isDenied)
      {
        openAppSettings();
        //await Permission.audio.request();
        // await Permission.camera.request();
        // await Permission.location.request();
        // await Permission.storage.request();
        // Map<Permission, PermissionStatus> statuses = await [
        //   Permission.audio,
        //   Permission.camera,
        //   Permission.location,
        //   Permission.storage
        //
        // ].request();
      }






  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: Colors.black,
      body:  Center(
        child: Image.network("https://wallpaperaccess.com/full/3969977.jpg",height: 300,width: 360,
          fit: BoxFit.fill,),
      ),
    ),);
  }
}

