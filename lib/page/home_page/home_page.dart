import 'package:flutter/material.dart';
import 'package:student_detials_app/app_route/app_route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Student Detials Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: size.height * 0.1,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.red,
              ),
              padding: const EdgeInsets.all(10),
              child: const Align(
                alignment: AlignmentDirectional.centerStart,
                child: CircleAvatar(radius: 40),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.detailspage,
                );
              },
              child: const Icon(
                Icons.add_circle_outline_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
