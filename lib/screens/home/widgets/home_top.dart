import 'package:animated_todo/screens/home/widgets/category_view.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height / 3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Bem-vindo, Luiz Jacó!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 80,
              height: containerGrow.value * 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'images/perfil.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: containerGrow.value * 30,
                height: containerGrow.value * 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(80, 210, 194, 1.0),
                ),
                margin: const EdgeInsets.only(left: 60),
                alignment: Alignment.center,
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: containerGrow.value * 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            CategoryView(),
          ],
        ),
      ),
    );
  }
}
