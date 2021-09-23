import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape:CircularNotchedRectangle(),
      notchMargin:6,
      color: Colors.transparent,
      elevation: 9,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight:Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2-40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home,color:Color(0xFFEF7532),),
                  Icon(Icons.person_outline,color: Color(0xFF676E79),),
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2-40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search,color:Color(0xFFEF7532),),
                  Icon(Icons.shopping_basket,color: Color(0xFF676E79),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
