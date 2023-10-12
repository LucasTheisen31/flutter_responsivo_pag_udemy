import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'images/course_img.jpg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        Flexible(
          //Flexible limita o tamanho máximo, mas o minimo é 0, ou seja, pode diminuir e não ocupa o espaço inteiro como o Expanded
          child: LayoutBuilder(
            builder: (_, constraints) {
              print(" biggest: ${constraints.biggest}"); //colocamos um LayoutBuilder para poder printar as constraints
              return const AutoSizeText(
                'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
                minFontSize: 12,
                maxLines: 3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        const Text(
          "Lucas Theisen",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const Text(
          "R\$31,00",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
