import 'package:animated_todo/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  List<Map<String, dynamic>> _data = [
    {
      'title': 'Teste 4',
      'subtitle': 'Testando 4',
      'image': 'images/perfil.jpg',
      'margin': 0.0
    },
    {
      'title': 'Teste 3',
      'subtitle': 'Testando 3',
      'image': 'images/perfil.jpg',
      'margin': 1.0
    },
    {
      'title': 'Teste 2',
      'subtitle': 'Testando 2',
      'image': 'images/perfil.jpg',
      'margin': 2.0
    },
    {
      'title': 'Teste 1',
      'subtitle': 'Testando 1',
      'image': 'images/perfil.jpg',
      'margin': 3.0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: _data
          .map((item) => ListData(
                title: item['title'],
                subTitle: item['subtitle'],
                image: item['image'],
                margin: listSlidePosition.value * item['margin'],
              ))
          .toList(),
    );
  }
}
