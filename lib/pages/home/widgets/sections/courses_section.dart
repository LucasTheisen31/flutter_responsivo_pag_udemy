import 'package:flutter/material.dart';
import 'package:flutter_responsivo_pag_udemy/breakpoints.dart';

import '../course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(" biggest: ${constraints.biggest} | smallest: ${constraints.smallest}");
        return GridView.builder(
          shrinkWrap: true,
          itemCount: 20,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300, //largura maxima de cada item do GridView
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16,
          ),
          itemBuilder: (context, index) {
            return const CourseItem();
          },
        );
      },
    );
  }
}
