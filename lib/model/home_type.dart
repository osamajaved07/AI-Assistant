// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:ai_assistant/screen/feature/chatbot_feature.dart';
import 'package:ai_assistant/screen/feature/image_feature.dart';
import 'package:ai_assistant/screen/feature/translator_feature.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

enum HomeType { aiChatBot, aiImage, aiTranslator }

extension MyHomeType on HomeType {
  //title
  String get title => switch (this) {
        HomeType.aiChatBot => 'AI ChatBot',
        HomeType.aiImage => 'AI Image Creator',
        HomeType.aiTranslator => 'Language Translator',
      };
      

  //lottie
  String get lottie => switch (this) {
        HomeType.aiChatBot => 'chatbot.json',
        HomeType.aiImage => 'ai_play.json',
        HomeType.aiTranslator => 'translate.json',
      };

  //for alignment
  bool get leftAlign => switch (this) {
        HomeType.aiChatBot => true,
        HomeType.aiImage => false,
        HomeType.aiTranslator => true,
      };

  //for padding
  EdgeInsets get padding => switch (this) {
        HomeType.aiChatBot => EdgeInsets.all(20),
        HomeType.aiImage => const EdgeInsets.all(20),
        HomeType.aiTranslator => EdgeInsets.all(20),
      };


  //for navigation
  VoidCallback get onTap => switch (this) {
        HomeType.aiChatBot => () => Get.to(() => const ChatBotFeature()),
        HomeType.aiImage => () => Get.to(() => const ImageFeature()),
        HomeType.aiTranslator => () => Get.to(() => const TranslatorFeature()),
      };
}