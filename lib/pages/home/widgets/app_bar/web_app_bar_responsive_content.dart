import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          //Quando utilizamos um expanded, ele ignora o tamanho do filho e o filho vai adotar o tamanho do pai expanded
          print(("biggest: ${constraints.biggest} | smallest: ${constraints.smallest}"));
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: Colors.grey.shade500,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise alguma coisa aqui',
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400)
                const SizedBox(
                  width: 32,
                ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: const Text("Aprender"),
              ),
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Flutter"),
                ),
              ]
            ],
          );
        },
      ),
    );
  }
}
