import 'package:flutter/material.dart'; 
import 'package:flutter_application_5/userdetails.dart';


class HomePage extends StatelessWidget {
 const HomePage({super.key});


 @override
 Widget build(BuildContext context) {
   return  const MaterialApp(
     debugShowCheckedModeBanner: false,
     home:UserdetailsPage(),
   );
 }
}
