
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  FloatingActionButtonGreen({
    required this.iconData,
    required this.onPressed
  });

  @override
  _FloatingActionButtonGreen createState() => _FloatingActionButtonGreen();
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool isFavorite = false;
  void onPressedFav() {
    setState(() {
      isFavorite = !this.isFavorite;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isFavorite
          ? 'Agregado a tus favoritos'
          : 'Eliminado de tus favoritos'
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: widget.onPressed,
      child: Icon(widget.iconData),
      heroTag: null,
    );
  }
  
}