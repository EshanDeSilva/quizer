import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({super.key, required this.data});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(60)),
                color: data['user_answer'] != data['correct_answer']
                    ? const Color.fromARGB(255, 255, 99, 164)
                    : const Color.fromARGB(255, 0, 216, 202)),
            padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
            child: Text(
              ((data['question_index'] as int) + 1).toString(),
              style: GoogleFonts.lato(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    data['question'] as String,
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 242, 230, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    data['user_answer'] as String,
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 215, 134, 255),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    data['correct_answer'] as String,
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 98, 247, 255),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
