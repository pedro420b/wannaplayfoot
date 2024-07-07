import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profilübersicht'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon tap
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Picture and Info
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.grey,
                    child: const Icon(Icons.person, size: 50),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: Maxchihaja'),
                      Text('Position: Defense'),
                      Text('Niveau: Prosplayer'),
                      Text('Bio: chitkhribiga'),
                    
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Social Media Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () {
                      // Handle Instagram tap
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.xTwitter),
                    onPressed: () {
                      // Handle Twitter tap
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.facebook),
                    onPressed: () {
                      // Handle Facebook tap
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.tiktok),
                    onPressed: () {
                      // Handle TikTok tap
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Upcoming Games
              Container(
                color: Colors.cyan,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text('Kommende Spiele'),
                    DataTable(
                      columns: const [
                        DataColumn(label: Text('Spieltitel')),
                        DataColumn(label: Text('Datum.Zeit')),
                        DataColumn(label: Text('Ort')),
                        DataColumn(label: Text('Teilnehmer')),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text('Spielxyz')),
                          DataCell(Text('04.03')),
                          DataCell(Text('Rabat')),
                          DataCell(Text('Karim rachid')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Spiel3')),
                          DataCell(Text('04.03')),
                          DataCell(Text('Sla')),
                          DataCell(Text('abdoud toto')),
                        ]),
                         DataRow(cells: [
                          DataCell(Text('Spielxyz')),
                          DataCell(Text('04.03')),
                          DataCell(Text('Rabat')),
                          DataCell(Text('Karim rachid')),
                        ]),
                         DataRow(cells: [
                          DataCell(Text('Spielxyz')),
                          DataCell(Text('04.03')),
                          DataCell(Text('Rabat')),
                          DataCell(Text('Karim rachid')),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Statistics and Achievements
              Container(
                color: Colors.cyan,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text('Statistiken und Erfolge'),
                    DataTable(
                      columns: const [
                        DataColumn(label: Text('Anzahl der Spiele')),
                        DataColumn(label: Text('Tore')),
                        DataColumn(label: Text('Assists')),
                        DataColumn(label: Text('Erfolge')),
                        DataColumn(label: Text('Geld')),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text('20')),
                          DataCell(Text('15')),
                          DataCell(Text('7')),
                          DataCell(Text('Meisterschaftssieger')),
                          DataCell(Text('+200\$')),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Spiele',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Mehr',
          ),
        ],
      ),
    );
  }
}
