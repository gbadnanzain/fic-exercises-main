import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_enabled_or_disabled_controller.dart';

class LtsmEnabledOrDisabledView extends StatefulWidget {
  const LtsmEnabledOrDisabledView({Key? key}) : super(key: key);

  Widget build(context, LtsmEnabledOrDisabledController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Latihan Enable or Disable"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                initialValue: 'admin@gmail.com',
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.email,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: 'Enter your email address',
                ),
                onChanged: (value) {
                  controller.email = value;
                  controller.setState(() {});
                },
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                initialValue: '123456',
                maxLength: 20,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.password,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: 'Enter your password',
                ),
                onChanged: (value) {
                  controller.password = value;
                  controller.setState(() {});
                },
              ),
              const SizedBox(height: 20.0),
              ElevatedButton.icon(
                  onPressed: () {
                    if (!controller.enabled) return;
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          controller.enabled ? Colors.blueGrey : Colors.grey),
                  icon: const Icon(Icons.login),
                  label: const Text("Login")),
              const SizedBox(height: 40.0),
              ElevatedButton.icon(
                  onPressed: () {
                    controller.enabled = !controller.enabled;
                    controller.setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          controller.enabled ? Colors.blueGrey : Colors.grey),
                  icon: const Icon(Icons.developer_board),
                  label: const Text("Enable Button")),

              /*
              ? Buat variabel enabled di dalam State/Controller
              ! bool enabled = false;

              ? Tambahkan widget ini di dalam Column:
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      controller.enabled ? Colors.orange : Colors.grey,
                ),
                onPressed: () {
                  if(controller.enabled==false) return;
                },
              ),

              ? Buat button lainnya, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.enabled = controller.enabled!;
              controller.setState((){});
              */
                
              */
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmEnabledOrDisabledView> createState() =>
      LtsmEnabledOrDisabledController();
}
