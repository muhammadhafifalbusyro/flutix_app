import 'package:flutter/material.dart';

class MyTicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Gantilah data dummy ini dengan data tiket aktual dari server atau penyimpanan lokal
    List<String> tickets = ['Ticket 1', 'Ticket 2', 'Ticket 3'];

    return ListView.builder(
      itemCount: tickets.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(tickets[index]),
        );
      },
    );
  }
}
