import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool hasLeading;

  @override
  final Size preferredSize;

  CustomAppBar({
    Key key,
    this.hasLeading = false,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: hasLeading
          ? IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.grey[900],
      title: Text('PS13SI'),
      centerTitle: true,
    );
  }
}
