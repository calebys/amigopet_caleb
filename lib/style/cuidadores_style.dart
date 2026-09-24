import 'package:flutter/material.dart';
import 'amigopet_style.dart';

class CuidadoresStyle {
  static final BoxDecoration cardDecoration = BoxDecoration(
    color: AmigoPetStyle.branco,
    borderRadius: BorderRadius.circular(18),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.08),
        blurRadius: 8,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static const TextStyle nome = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AmigoPetStyle.marrom,
  );

  static const TextStyle subtitulo = TextStyle(
    fontSize: 14,
    color: AmigoPetStyle.marromClaro,
  );

  static const TextStyle avaliacao = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AmigoPetStyle.marrom,
  );

  static const TextStyle servico = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AmigoPetStyle.laranja,
  );
}