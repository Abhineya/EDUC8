import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
late CameraController cameraController; // Define the variable with 'late'

  @override
  void initState() {
    super.initState();
    // Call initializeCamera using SchedulerBinding.addPostFrameCallback
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      initializeCamera();
    });
  }

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    cameraController =  CameraController(
      firstCamera,
      ResolutionPreset.medium,
    );

    await cameraController.initialize();
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Check if cameraController is null before accessing it
    if (cameraController == null || !cameraController.value.isInitialized) {
      return Container(); // Or you can return a loading indicator
    }

    return Scaffold(
      body: Stack(
        children: [
          CameraPreview(cameraController),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                child: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                backgroundColor: const Color(0xFF547CAB),
                onPressed: () {
                  takePicture(); // Call takePicture function when the button is pressed
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  void takePicture() async {
    try {
      final XFile? file = await cameraController.takePicture();
      if (file != null) {
        print('Picture saved');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  void dispose() {
    cameraController.dispose(); // Dispose the camera controller
    super.dispose();
  }
}
