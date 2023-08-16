import 'package:flutter/material.dart';
import 'package:log_in_using_otp/phone_otp_ui/phone.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var selectedCountry = MyPhone.country;

  @override
  Widget build(BuildContext context) {
    if (MyPhone.country == 'India') {
      return Scaffold(
        appBar: AppBar(
          title: Text(MyPhone.country),
          centerTitle: true,
        ),
        backgroundColor: Colors.orange,
      );
    }
    if (MyPhone.country == 'Pakistan') {
      return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    'phone',
                  );
                },
                icon:const Icon(Icons.exit_to_app_outlined))
          ],
          title: Text(MyPhone.country),
          centerTitle: true,
        ),
        backgroundColor: Colors.green,
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('India'),
          centerTitle: true,
        ),
        backgroundColor: Colors.blue,
      );
    }
  }
}
