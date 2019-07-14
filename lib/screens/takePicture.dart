import 'package:flutter/material.dart';

import 'package:camera/camera.dart';
import 'dart:async';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TakePictureScreen extends StatefulWidget {
  @override
  _TakePictureScreenState createState() => _TakePictureScreenState();
}

class _TakePictureScreenState extends State<TakePictureScreen> {

  CameraController controller;

  List cameras;

  int selectedCameraIdx;

  final GlobalKey _scaffoldKey = GlobalKey();

  @override
  void initState() {    
    super.initState();
    availableCameras().then((availableCameras) {

      cameras = availableCameras;

      if (cameras.length > 0) {
        setState(() {
          selectedCameraIdx = 0;
        });

        _onCameraSwitched(cameras[selectedCameraIdx]).then((void v) {});
      }

    }).catchError((onError) {
      print('Error: $onError');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(MdiIcons.close),
        ),
        title: Text('Photo'),
      ),
      body: _cameraPreviewWidget(),
    );
  }

  Widget _cameraPreviewWidget() {

    if (cameras == null) {
      return Row();
    }

    if (controller == null || !controller.value.isInitialized) {
      return Center(
        child: Text(
          'Loading Camera',
          style:TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w900
          )
        ),
      );
    }

    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              child: AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: CameraPreview(controller),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: _onSwitchCamera,
                    icon: Icon(MdiIcons.autorenew),
                    iconSize: 38.0,
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(MdiIcons.flashAuto),
                    iconSize: 38.0,
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Container(
            child: Container(
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
            ),
            width: 90.0,
            height: 90.0,
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              shape: BoxShape.circle
            ),
          ),
        )
      ],
    );

  }

  Future _onCameraSwitched(CameraDescription cameraDescription) async {

    if (controller != null) {
      await controller.dispose();
    }

    controller =CameraController(cameraDescription, ResolutionPreset.high);

    controller.addListener(() {
      if (mounted) {
        setState(() {});
      }

      if (controller.value.hasError) {}
    });

    try {
      await controller.initialize();
    } catch (e) {
      print(e);
    }

    if (mounted) {
      setState(() {});
    }

  }

  void _onSwitchCamera() {
    selectedCameraIdx = selectedCameraIdx < cameras.length - 1 ? selectedCameraIdx + 1 : 0;

    CameraDescription selectedCamera =cameras[selectedCameraIdx];

    _onCameraSwitched(selectedCamera);

    setState(() {
      selectedCameraIdx = selectedCameraIdx;
    });

  }

}


class CameraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TakePictureScreen(),
    );
  }  
}

Future main() async {
  runApp(CameraApp());
}
