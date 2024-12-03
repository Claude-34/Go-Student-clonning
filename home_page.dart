import 'package:flutter/material.dart';

class GoStudent extends StatefulWidget {
  const GoStudent({super.key});

  @override
  State<GoStudent> createState() => _GoStudentState();
}

class _GoStudentState extends State<GoStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 4,
        centerTitle: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Go-Student',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              'University of Buea',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Card(
              color: Colors.white,
              elevation: 0.5,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/sport.jpg'),
                    backgroundColor: Colors.blue,
                    radius: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ethe ename',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'FE23XXX',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'Beng Computer Engineering',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                          ),
                        ),
                        Row(
                          children: [
                            Text('2024/2025'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('First Semester'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyBox(
                  icon: Icons.star,
                  name: 'Academy structure',
                ),
                MyBox(
                    icon: Icons.my_library_books_rounded,
                    name: 'Course Registration'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyBox(icon: Icons.menu_book_outlined, name: 'Form B'),
                MyBox(icon: Icons.payment, name: 'Pay Feels'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyBox(icon: Icons.note_alt, name: 'CA Result'),
                MyBox(icon: Icons.pages, name: 'Final Result'),
              ],
            ),
            const Divider(),
            ListTile(
              enabled: true,
              leading: const Icon(Icons.notifications),
              title: const Text('Notificatuion'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              enabled: true,
              leading: const Icon(Icons.settings),
              title: const Text('Account Setting'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              enabled: true,
              leading: const Icon(Icons.help),
              title: const Text('UB Support'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ]),
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.blue, items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), label: 'Student Profile'),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Transation Details',
        ),
      ]),
    );
  }

  Widget _buildMenuItem(
      {required IconData icon, required String title, required VoidCallback}) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final IconData icon;
  final String name;
  const MyBox({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 2,
          ),
          Icon(
            icon,
            color: Colors.blue,
            size: 50,
          ),
          Text(
            name,
            style: const TextStyle(
                color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
