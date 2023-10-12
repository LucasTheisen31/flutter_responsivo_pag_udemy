import 'package:flutter/material.dart';
import 'package:flutter_responsivo_pag_udemy/breakpoints.dart';
import 'package:flutter_responsivo_pag_udemy/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:flutter_responsivo_pag_udemy/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:flutter_responsivo_pag_udemy/pages/home/widgets/sections/advantages_section.dart';
import 'package:flutter_responsivo_pag_udemy/pages/home/widgets/sections/courses_section.dart';
import 'package:flutter_responsivo_pag_udemy/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //biggest é o tamanho maximo que o widget pode ter, smallest é o tamanho minimo que o widget deve ter
        //como aqui o LayoutBuilder esta colocado diretamente na tela, então ele é obrigado a ter o tamanho total da tela, então o tamanho minimo e maximo é igual
        //print(" biggest: ${constraints.biggest} | smallest: ${constraints.smallest}");
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBar(),
                ),
          drawer: constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
