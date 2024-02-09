import 'package:flutter/material.dart';

import '../../../../breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      );
    }

    Widget buildVerticalAdvantage(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ],
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        //print(" biggest: ${constraints.biggest} | smallest: ${constraints.smallest}");
        if (constraints.maxWidth >= mobileBreakpoint) {
          // se for maior que MOBILE, ou seja >= 700
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 8,
              children: [
                buildHorizontalAdvantage('+45.000 alunos', 'Didática garantida'),
                buildHorizontalAdvantage('Certificado de conclusão', 'Disponivel para cursos pagos'),
                buildHorizontalAdvantage('Acesso vitalicio', 'Aprenda no seu tempo'),
              ],
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: buildVerticalAdvantage('+45.000 alunos', 'Didática garantida'),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: buildVerticalAdvantage('Certificado de conclusão', 'Disponivel para cursos pagos'),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: buildVerticalAdvantage('Acesso vitalicio', 'Aprenda no seu tempo'),
              ),
            ],
          ),
        );
      },
    );
  }
}
