import 'package:flutter/material.dart';

class CircularButtonWidget extends StatelessWidget {
  final bool isLoading;
  final IconData icon;
  final Function() onPressed;

  const CircularButtonWidget({
    Key? key,
    this.isLoading = false,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: isLoading
          ? Padding(
              padding: const EdgeInsets.all(5),
              child: const CircularProgressIndicator(),
            )
          : ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(0),
                shape: const StadiumBorder(),
                primary: Theme.of(context).accentColor,
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
              onPressed: onPressed,
            ),
    );
  }
}
