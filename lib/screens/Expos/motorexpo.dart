import 'dart:io';

import 'package:ecommerce/Utils/constant.dart';
import 'package:ecommerce/enums.dart';
import 'package:ecommerce/screens/NavBar.dart';

import 'package:ecommerce/components/coustom_bottom_nav_bar.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MotorExpo extends StatefulWidget {
  const MotorExpo({Key? key}) : super(key: key);

  @override
  _MotorExpoScreenState createState() => _MotorExpoScreenState();
}

class _MotorExpoScreenState extends State<MotorExpo> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> _selectedFiles = [];
  FirebaseStorage _storageRef = FirebaseStorage.instance;
  List<String> _arrImageUrls = [];
  int uploadItem = 0;
  bool _isUploading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      body: SafeArea(
          child: Center(
        child: _isUploading
            ? showLoading()
            : Column(
                children: [
                  OutlinedButton(
                      onPressed: () {
                        selectImage();
                      },
                      child: Text("Select Files")),
                  ElevatedButton.icon(
                      onPressed: () {
                        if (_selectedFiles.isNotEmpty) {
                          uploadFunction(_selectedFiles);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Please Select Images.")));
                        }
                      },
                      icon: Icon(Icons.file_upload),
                      label: Text("Upload ")),
                  _selectedFiles.length == 0
                      ? const Padding(
                          padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                          child: Text("No images selected"),
                        )
                      : Expanded(
                          child: GridView.builder(
                              itemCount: _selectedFiles.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.file(
                                    File(_selectedFiles[index].path),
                                    fit: BoxFit.cover,
                                  ),
                                );
                              }),
                        ),
                ],
              ),
      )),
    );
  }

  Widget showLoading() {
    return Center(
      child: Column(
        children: [
          Text("Uploading : " +
              uploadItem.toString() +
              "/" +
              _selectedFiles.length.toString()),
          SizedBox(
            height: 30,
          ),
          CircularProgressIndicator()
        ],
      ),
    );
  }

  void uploadFunction(List<XFile> _images) {
    setState(() {
      _isUploading = true;
    });
    for (int i = 0; i < _images.length; i++) {
      var imageUrl = uploadFile(_images[i]);
      _arrImageUrls.add(imageUrl.toString());
    }
  }

  Future<String> uploadFile(XFile _image) async {
    Reference reference =
        _storageRef.ref().child("multiple_images").child(_image.name);
    UploadTask uploadTask = reference.putFile(File(_image.path));
    await uploadTask.whenComplete(() {
      setState(() {
        uploadItem++;
        if (uploadItem == _selectedFiles.length) {
          _isUploading = false;
          uploadItem = 0;
        }
      });
    });

    return await reference.getDownloadURL();
  }

  Future<void> selectImage() async {
    if (_selectedFiles != null) {
      _selectedFiles.clear();
    }
    try {
      final List<XFile>? imgs = await _picker.pickMultiImage();
      if (imgs!.isNotEmpty) {
        _selectedFiles.addAll(imgs);
      }
      print("List of selected Images : " + imgs.length.toString());
    } catch (e) {
      print("something wrong." + e.toString());
    }
    setState(() {});
  }
}
