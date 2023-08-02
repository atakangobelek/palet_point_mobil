import 'package:flutter/material.dart';

import '../view/chatpage_screen.dart';
import '../view/login_screen.dart';
import '../view/proposal_content_screen.dart';
import '../view/proposal_index_screen.dart';



final Map<String, WidgetBuilder> routes = {
  '/login': (BuildContext context) => const LoginScreen(),
  '/proposalScreen': (BuildContext context) => const ProposalScreen(),
  '/proposalContent': (BuildContext context) => const ProposalContentScreen(),
  '/chatPage': (BuildContext context) => const ChatPage(),

};