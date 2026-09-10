import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _HomepageState();
}
class _HomepageState extends State<homepage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page',style: TextStyle(color: Colors.indigo),),
        centerTitle: true,
        leading: const Icon(Icons.one_k_outlined, color: Colors.indigo),
        actions: [
          IconButton(
            onPressed: decrementCounter,
            icon: const Icon(Icons.minimize, color: Colors.indigo),
          ),
        ],
      ),

      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              child: ElevatedButton.icon(
                onPressed: incrementCounter,
                icon: const Icon(Icons.add, color: Colors.greenAccent),
                label: const Text('Add',style: TextStyle(color: Colors.greenAccent, fontSize: 20)),
              ),
            ),

            Container(
              width: 300,
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Count',style: TextStyle(color: Colors.indigo, fontSize: 30 ),),
                  Text(
                    '$counter',
                    style: const TextStyle(fontSize: 40),
                  ),
                ],
              ),
            ),

            Container(
              width: 200,
              height: 100,
              child: ElevatedButton.icon(
                onPressed: decrementCounter,
                icon: const Icon(Icons.remove, color: Colors.greenAccent),
                label: const Text('Remove',style: TextStyle(color: Colors.greenAccent, fontSize: 20)),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: const Icon(Icons.add, color: Colors.indigo),
      ),
    );
  }
}

