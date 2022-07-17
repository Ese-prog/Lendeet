

import 'package:flutter/material.dart';



class BorderBox extends StatelessWidget {
  const BorderBox({Key? key, required this.width, required this.height, required this.color, required this.child}) : super(key: key);
  final double width;
  final double height;
  final Color color;
  final  child;

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: width,
                  height: width,
                 
                  decoration: BoxDecoration(
                     color: color,
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child:  child
                  );
  }
}

/*Container(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
          (crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15), 
          itemCount: Meals.length,
          itemBuilder: (context, index) => MenUItem(itemData: Meals[index],)
          ),
    );*/