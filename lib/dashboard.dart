import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color.fromRGBO(240, 244, 243, 100),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: ElevatedButton(
                onPressed: () {
                  // Add button pressed
                },
                child: const Icon(Icons.add),
              ),
            ),
            const Positioned(
              top: 320,
              right: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Good Afternoon',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 350,
              left: 330,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('clock.png'),
              ),
            ),
            const Positioned(
              top: 520,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task List',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 600,
              left: 220,
              child: Container(
                width: 350,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Daily Task',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Add button pressed
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.blue, // Warna ikon
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const TaskListItem(
                              description: 'Learning Programming by 12PM'),
                          const TaskListItem(
                              description: 'Learn how to cook by 1PM'),
                          const TaskListItem(
                              description: 'Learn how to play at 2PM'),
                          const TaskListItem(description: 'Have lunch at 4PM'),
                          const TaskListItem(
                              description: 'Going to travel 6PM'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 10,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                color: const Color.fromRGBO(80, 194, 201, 1),
                child: const Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('senja.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -20,
              left: -100,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(236, 255, 253, 0.5),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: -100,
              left: -20,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(236, 255, 253, 0.5),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const Positioned(
              top: 230,
              left: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Welcome Jaegar goyani',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskListItem extends StatefulWidget {
  final String description;

  const TaskListItem({Key? key, required this.description}) : super(key: key);

  @override
  _TaskListItemState createState() => _TaskListItemState();
}

class _TaskListItemState extends State<TaskListItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          activeColor: Colors.blue, // Warna saat checkbox di centang
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(widget.description),
      ],
    );
  }
}
