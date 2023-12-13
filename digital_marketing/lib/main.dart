import 'package:digital_marketing/di/locator.dart';
import 'package:digital_marketing/presentation/app/digital_marketing_app.dart';
import 'package:flutter/material.dart';

void main() {
  initDiModule();
  runApp(const DigitalMarketingApp());
}