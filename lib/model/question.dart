import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

void main() async {
  final env = DotEnv(quiet: false)..load(['../../.env']);
  final apiKey = env['API_KEY'];
  if (apiKey == null || apiKey.isEmpty) {
    print('No \$API_KEY environment variable found.');
    print(apiKey);
    exit(1);
  }

  final model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: apiKey);

  final content = [Content.text('Write a brief question about psychology')];
  final response = await model.generateContent(content);
  print(response.text);
}
