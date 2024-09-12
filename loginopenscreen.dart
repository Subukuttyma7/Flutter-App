import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';


void main() {
  runApp(hello());
}

class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('WHATSAPP'),
          backgroundColor: Colors.lightBlueAccent,
          leading: Image.network("https://thumbs.dreamstime.com/b/whatsapp-logo-minimal-simple-design-template-copy-space-d-188227564.jpg"),
          actions: [
            IconButton(onPressed: (){

            }, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Profile(),

      ),
    );
  }
}
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  File? pickedFile;
  final picker = ImagePicker();

  Future<XFile?> getImage() async {
    try {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      XFile? image = await picker.pickImage(source: ImageSource.camera);

      if (pickedFile == null) return image;
      final _image_path = File(pickedFile.path);
      print(_image_path);
      setState(() => this.pickedFile = _image_path);
    }on PlatformException catch(e)
    {
      print("Failed to load the Image: $e");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(height: 20,),
          ElevatedButton(onPressed: ()
          async{
            await getImage();
          },   child: Text('Select your Image in Gallery')),
          ElevatedButton(onPressed: ()
          async{
            await getImage();
          },   child: Text('Capture your image in camera')),
          SizedBox(height: 20,),
        ]
    );

  }
}
