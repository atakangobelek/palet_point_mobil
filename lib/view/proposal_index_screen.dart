import 'package:flutter/material.dart';
import 'package:satta_mobil/view/widget/bottom_navigation_bar.dart';
import 'package:satta_mobil/view/widget/proposal_index_card.dart';

class ProposalScreen extends StatefulWidget {
  const ProposalScreen({Key? key}) : super(key: key);

  @override
  _ProposalScreenState createState() => _ProposalScreenState();
}

class _ProposalScreenState extends State<ProposalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('TEKLİF İSTEKLERİ'),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu), // Menü simgesi
          onPressed: () {
            // Menü işlevselliğini buraya ekleyebilirsiniz
          },
        ),
      ),
      body: Column(
        children: const [
          ProposalCard(
            icon: Icons.notifications,
            textBox1: 'Teklif No: 1533',
            textBox2: '2. El  Palet İhtiyacı',
            text: '2G:15S:11D:30',
          ),
          ProposalCard(
            icon: Icons.message,
            textBox1: 'Teklif No: 1533',
            textBox2: 'Yeni Palet',
            text: '2G:15S:11D:30',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
