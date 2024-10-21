import 'package:flutter/material.dart';

class Unselecteditem extends StatelessWidget {
  String unselected;
  Unselecteditem(this.unselected);

  @override
  Widget build(BuildContext context) {
    return Text(
      unselected,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
