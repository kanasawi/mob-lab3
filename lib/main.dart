import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.purple),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("PEA VOLTA",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            actions: [
              IconButton(
                  icon: const Icon(Icons.notifications_rounded),
                  color: Colors.white,
                  onPressed: () {
                    debugPrint("noticed");
                  }),
              IconButton(
                  icon: const Icon(Icons.table_rows_rounded),
                  color: Colors.white,
                  onPressed: () {
                    debugPrint("menu");
                  }),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Image.asset(
                  "assets/images/pea.png",
                  width: 200,
                  height: 100,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text("Charging Time", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                const SizedBox(height: 8,),
                const Card(
                    color: Colors.purple,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: Text(
                        "xx hrs",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), 
                      ),
                    )),
                const SizedBox(height: 16,),

                const Column(
                  children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Current SOC(%)",
                      hintText: "Enter Current SOC(%)",
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Target SOC(%)",
                      hintText: "Enter Target SOC(%)",
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Charging Rate(A)",
                      hintText: "Enter Charging Rate(A)",
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Voltage(V)",
                      hintText: "Enter Voltage(V)",
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Bat Capacity(kWh)",
                      hintText: "Enter Bat Capacity(kWh)",
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Efficiency(%)",
                      hintText: "Enter Efficiency(%)",
                    ),
                  ),
                ]),
              const SizedBox(height: 16,),
              ElevatedButton(
                onPressed: () {
                  debugPrint('clicked button');
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(fontSize: 20),
                ),
              )
              ],
            ),
          ),
        ));
  }
}
