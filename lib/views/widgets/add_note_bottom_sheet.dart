import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

import 'custom_botton.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 32),
            CustomTextField(hint: 'Tittle'),
            SizedBox(height: 16),
            CustomTextField(hint: 'Content', maxLines: 5),
            SizedBox(height: 32),
            CustomBottom(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
