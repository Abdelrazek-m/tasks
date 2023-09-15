import 'package:flutter/material.dart';

import '../pages/sura.dart';

class suraName extends StatelessWidget {
  const suraName({super.key, required this.su});
  final Map<String, dynamic> su;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SuraPage(
                      id: su['id'],
                    )));
      },
      child: Container(
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 124, 100, 181),
        ),
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 50,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 71, 35, 117),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  '${su['id']}',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 185, 162, 207),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'سورة ${su['name']}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '${su['name_translation']}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(16),
              child: Image(
                image: su['type'] == 'مكية'
                    ? const AssetImage('assets/images/quran/kaaba_9995470.png')
                    : const AssetImage('assets/images/quran/mosque_618845.png'),
                color: const Color.fromARGB(255, 185, 162, 207),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
