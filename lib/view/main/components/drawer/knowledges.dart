import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(
          knowledge: 'Flutter • Dart',
        ),
        KnowledgeText(
          knowledge: 'Kotlin • Java • XML • Swift',
        ),
        KnowledgeText(
          knowledge: 'GetX • Bloc • Cubit',
        ),
        KnowledgeText(
          knowledge: 'Clean Architecture',
        ),
        KnowledgeText(
          knowledge: 'MVVM Architecture',
        ),
        KnowledgeText(
          knowledge: 'Google Maps',
        ),
        KnowledgeText(
          knowledge: 'Background Location Services',
        ),
        KnowledgeText(
          knowledge: 'SQLite • Firebase Firestore ',
        ),
        KnowledgeText(
          knowledge: 'Git • GitHub • Play Store • App Store',
        ),
        KnowledgeText(
          knowledge: 'Android Studio • VS Code • Xcode',
        ),
        KnowledgeText(
          knowledge: 'Razorpay • PhonePe',
        ),
        KnowledgeText(
          knowledge: 'In-App Purchases • In-App Reviews',
        ),
        KnowledgeText(
          knowledge: 'Push Notifications',
        ),
        KnowledgeText(
          knowledge: 'Firebase Cloud Messaging (FCM)',
        ),
        KnowledgeText(
          knowledge: 'Responsive UI • REST APIs',
        ),
        KnowledgeText(
          knowledge: 'GitHub Copilot • Cursor AI',
        ),
        KnowledgeText(knowledge: 'Python • FastAPI'),
        KnowledgeText(knowledge: 'Generative AI • ChatGPT'),
        KnowledgeText(knowledge: 'OpenAI API Gemini AI Claude AI'),

KnowledgeText(knowledge: 'LangChain'),
KnowledgeText(knowledge: 'Prompt Engineering'),
KnowledgeText(knowledge: 'AI Chatbot Development'),
      ],
    );
  }
}
