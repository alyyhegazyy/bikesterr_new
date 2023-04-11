import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyAppbar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppbar({super.key});

  @override
  State<MyAppbar> createState() => _MyAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.pedal_bike_rounded),
            color: Colors.black,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: const Text(
        'Bikester',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 1.5,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Color.fromRGBO(233, 233, 235, 1),
    );
  }
}
