import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final bool? isPrimary;

  const KButton({Key? key, this.isPrimary = true, required this.onPressed, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * .6,
      child: TextButton(
        child: Text(label.toUpperCase(), style: Theme.of(context).textTheme.headline6?.copyWith(color: isPrimary == true ? Colors.purple : Colors.white, fontSize: 18)),
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: isPrimary == true ? Colors.white : Colors.purpleAccent,
          primary: Colors.purple,
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.circular(100)
          )
        ),
      ),
    );
  }
}
