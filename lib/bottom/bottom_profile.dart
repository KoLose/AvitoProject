import 'dart:io';

import 'package:avitoproject/database/storage/storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:supabase_flutter/supabase_flutter.dart';

class BottomProfilePage extends StatefulWidget {
  const BottomProfilePage({super.key});

  @override
  State<BottomProfilePage> createState() => _BottomProfilePageState();
}

class _BottomProfilePageState extends State<BottomProfilePage> {
  final user_id = Supabase.instance.client.auth.currentUser!.id;
  dynamic docs;

  File? _selectFile;
  XFile? _file;

  StorageCloud storageCloud = StorageCloud();

  String? url;

  Future<void> GetUserById() async {
    try {
      var user = await Supabase.instance.client
          .from('user')
          .select()
          .eq('id', user_id)
          .single();

      setState(() {
        docs = user;
      });
    } catch (e) {
      return;
    }
  }

  Future<void> selectedImageGallery() async {
    final returnImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    setState(() {
      _selectFile = File(_selectFile!.path);
      _file = returnImage;
    });
  }

  Future<void> uploadImage() async {
    try {
      await storageCloud.addImageCloud(_file!);
    } catch (e) {
      return;
    }
  }

  Future<void> downloadUrl() async {
    try {
      final fileName = path.basename(_file!.path);
      final image = Supabase.instance.client.storage
          .from('storage')
          .getPublicUrl(fileName);
      setState(() {
        url = image;
      });
      print(image);
    } catch (e) {
      return;
    }
  }

  @override
  void initState() {
    GetUserById();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.35,
              child: CircleAvatar(
                backgroundImage: NetworkImage(docs['avatar']),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Container(
              alignment: Alignment.center,
              child: Text(docs['full_name'], style: TextStyle(fontSize: 18)),
            ),
            Container(alignment: Alignment.center, child: Text(docs['eаil'])),
            InkWell(child: Text('Редактировать профиль'), onTap: () {}),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Container(alignment: Alignment.topLeft, child: Text('Настройки')),
            Card(
              child: Column(
                children: [
                  ListTile(title: Text('Безопасность')),
                  ListTile(title: Text('Уведомления')),
                ],
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Разместить объявление'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
