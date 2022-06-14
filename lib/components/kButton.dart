import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  final VoidCallback onPressed;

  const KButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * .6,
      child: TextButton(
        child: Text('NEXT', style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.purpleAccent, fontSize: 18)),
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
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
