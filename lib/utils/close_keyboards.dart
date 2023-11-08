import 'package:flutter/material.dart';

void closeKeyboard() {
  try {
    FocusManager.instance.primaryFocus?.unfocus();
  } catch (_) {}
}
