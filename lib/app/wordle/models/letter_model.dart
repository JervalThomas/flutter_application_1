import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_colors.dart';

enum LetterStatus { initial, notinword, inword, correct }

class Letter extends Equatable {
  const Letter({
    required this.val,
    this.status = LetterStatus.initial,
  });

  factory Letter.empty() => const Letter(val: '');

  final String val;

  final LetterStatus status;

  Color get backgroundColor {
    switch (status) {
      case LetterStatus.initial:
        return Colors.black;
      case LetterStatus.notinword:
        return notInWordColor;
      case LetterStatus.inword:
        return inWordColor;
      case LetterStatus.correct:
        return correctColor;
    }
  }

  Color get BorderColor {
    switch (status) {
      case LetterStatus.initial:
        return Colors.grey;
      default:
        return Colors.transparent;
    }
  }

  Letter copyWith({
    String? val,
    LetterStatus? status,
  }) {
    return Letter(val: val ?? this.val, status: status ?? this.status);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [val, status];
}
