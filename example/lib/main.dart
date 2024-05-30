import 'package:flutter/material.dart';
import 'package:pm_text_fields/pm_text_fields.dart';

void main() {
  runApp(const PMApp());
}

class PMApp extends StatelessWidget {
  const PMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PM TextFields',
      home: MyHomePage(title: 'PM TextFields'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(child: Text(widget.title)),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _key,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Email TextField",
                ),
                const SizedBox(
                  height: 5,
                ),
                const PMTextField(
                  keyboardType: TextInputType.emailAddress,
                  hint: "Email",
                  textInputAction: TextInputAction.next,
                  prefixIcon: Icon(Icons.email),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Mobile",
                ),
                const SizedBox(
                  height: 10,
                ),
                PMTextField(
                  keyboardType: TextInputType.phone,
                  hint: "Enter mobile",
                  labelText: "Mobile",
                  theme: FilledOrOutlinedTextTheme(
                    enabledColor: Colors.grey,
                    focusedColor: Colors.purple,
                    fillColor: Colors.transparent,
                  ),
                  textInputAction: TextInputAction.next,
                  prefixIcon: const Icon(Icons.call),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "User Name",
                ),
                const SizedBox(
                  height: 10,
                ),
                PMTextField(
                  keyboardType: TextInputType.text,
                  hint: "User Name",
                  labelText: "User Name",
                  theme: FilledOrOutlinedTextTheme(
                    enabledColor: Colors.grey,
                    focusedColor: Colors.purple,
                    fillColor: Colors.transparent,
                  ),
                  textInputAction: TextInputAction.next,
                  prefixIcon: const Icon(Icons.person),
                ),
                const SizedBox(
                  height: 20,
                ),
                PMTitleTextField(
                  title: 'Password',
                  textField: PMTextField(
                    keyboardType: TextInputType.emailAddress,
                    hint: 'Password',
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    theme: FilledOrOutlinedTextTheme(
                      fillColor: Colors.purple.withAlpha(50),
                      radius: 10,
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.visibility_off),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
