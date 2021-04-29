import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/views/auth_screen.dart';
import 'package:shop/widgets/auth.dart';
import 'products_overview_screen.dart';

class AuthOrHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
      Auth auth = Provider.of(context);
      return auth.isAuth ? ProductOverviewScreen() : AuthScreen();
      
   
  }
}