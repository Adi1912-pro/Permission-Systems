import 'package:flutter/material.dart';
import 'package:nitc_venue_permission_app/auth/login_screen.dart';
import 'package:nitc_venue_permission_app/models/base_user.dart';
import 'package:nitc_venue_permission_app/widgets/selection_button.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  void goToLoginScreen(BuildContext context, UserType userType) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginScreen(userType: userType)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login as',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            SelectionButton(
                text: 'Club Admin',
                width: 300,
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () =>
                    {goToLoginScreen(context, UserType.clubAdmin)}),
            const SizedBox(
              height: 30,
            ),
            SelectionButton(
                text: 'Venue Admin',
                width: 300,
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () =>
                    {goToLoginScreen(context, UserType.venueAdmin)}),
            const SizedBox(
              height: 30,
            ),
            SelectionButton(
                text: 'Faculty Incharge',
                width: 300,
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () =>
                    {goToLoginScreen(context, UserType.facultyIncharge)}),
          ],
        ),
      ),
    );
  }
}
