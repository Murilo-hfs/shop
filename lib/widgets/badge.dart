import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color color;

  const Badge({
    this.color,
    @required this.value,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        child,
        Positioned(
          right: 2,
          top: 4,
          child: Container(
          
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color !=null ? color : Theme.of(context).accentColor,
              
            ),
            constraints: BoxConstraints(
              minHeight: 3,
              minWidth: 5,
            ),
           child:Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15
              ),
            ),
          ),
          ) ,
      ],
    );
  }
}
