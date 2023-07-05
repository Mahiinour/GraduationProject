
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class WishImage extends StatefulWidget {
  const WishImage({
    Key? key,
    this.label,
    required this.onchange,
  }) : super(key: key);
  final String? label;

  final void Function(File?) onchange;

  @override
  State<WishImage> createState() => _WishImageState();
}

class _WishImageState extends State<WishImage> {
  File? pickedImage;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
            visible: widget.label != null,
            replacement: const SizedBox(),
            child: Column(
              children: [
                Text(
                  widget.label ?? '',
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            )),
        InkWell(
          onTap: () {
            _pickImages();
          },
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.image_outlined),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Tap To Select Images',
                  softWrap: true,

                )
              ],
            ),
          ),
        ),
        pickedImage == null ? SizedBox(): _pickedImageTile(pickedImage!),
      ],
    );
  }

  Widget _pickedImageTile(File image) {
    return ListTile(
      minLeadingWidth: 20,
      contentPadding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      title: Text(
        image.path.split('/').last,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,

      ),


    );
  }

  Future<void> _pickImages() async {
    final ImagePicker picker = ImagePicker();
    final XFile? images = await picker.pickImage(source:ImageSource.gallery);
    if (images != null) {

      pickedImage=File(images.path);
      widget.onchange(pickedImage);
      setState(() {});
    }
  }
}
