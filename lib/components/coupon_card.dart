import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
  final String text;
  final Color color;

  const CouponCard({Key? key, required this.text, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.all(5),
        height: 75,
        decoration: BoxDecoration(
            color: this.color,
            backgroundBlendMode: BlendMode.darken,
            borderRadius:
              BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)
              )
        ),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  this.text,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white),
                )
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
