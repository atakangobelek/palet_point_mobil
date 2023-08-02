import 'package:flutter/material.dart';

class ProposalCard extends StatelessWidget {
  final IconData icon;
  final String textBox1;
  final String textBox2;
  final String text;

  const ProposalCard({
    required this.icon,
    required this.textBox1,
    required this.textBox2,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/proposalContent');
      },
      child: Container(
        height: 110,
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black, width: 1)),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 40.0,
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    textBox1,
                    style: const TextStyle(fontSize: 16).copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    textBox2,
                    style: const TextStyle(fontSize: 12).copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
            Text(text),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
