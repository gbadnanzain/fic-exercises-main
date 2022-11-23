import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_counter_controller.dart';

class TrsmCounterView extends StatefulWidget {
  const TrsmCounterView({Key? key}) : super(key: key);

  Widget build(context, TrsmCounterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmCounter"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.counter}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("Add"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    controller.counter++;
                    controller.setState(() {});
                  }),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                  icon: const Icon(Icons.remove),
                  label: const Text("Minus"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    controller.counter--;
                    controller.setState(() {});
                  }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrsmCounterView> createState() => TrsmCounterController();
}
