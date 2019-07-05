import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> _categories = ['LAZER', 'ESTUDOS', 'TRABALHO'];

  int _category = 0;

  void _selectNext() {
    setState(() {
      _category++;
    });
  }

  void _selectPrevious() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          color: Colors.white,
          disabledColor: Colors.white30,
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: _category > 0 ? _selectPrevious : null,
        ),
        Text(
          _categories[_category].toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w300,
          ),
        ),
        IconButton(
          color: Colors.white,
          disabledColor: Colors.white30,
          icon: Icon(
            Icons.arrow_forward_ios,
          ),
          onPressed: _category < _categories.length - 1 ? _selectNext : null,
        ),
      ],
    );
  }
}
