import 'package:flutter/material.dart';
import 'package:stayfit/config/_sizes.dart';

class KTextInput extends StatelessWidget {
  const KTextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
          style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black54),
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.white,
            filled: true,
            contentPadding:
                const EdgeInsets.all(18),
            border: OutlineInputBorder(
                borderRadius:
                BorderRadius.circular(100),
                borderSide: BorderSide.none)
        )
      ),
    );
  }
}
