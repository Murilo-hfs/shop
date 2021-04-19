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
          right: 8,
          top: 8,
        //   // child: Container(
        //   //   height:200,
        //   //   padding: EdgeInsets.all(2),
        //   //   decoration: BoxDecoration(
        //   //     borderRadius: BorderRadius.circular(10),
              
        //   //   ),
        //   //   // constraints: BoxConstraints(
        //   //   //   minHeight: 16,
        //   //   //   minWidth: 16,
        //   //   // ),
           child:Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: color !=null ? color : Theme.of(context).accentColor,
                fontSize: 6
              ),
            ),
          ),
          // ) ,
      ],
    );
  }
}
