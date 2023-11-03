import 'package:flutter/material.dart';
import 'formExemple1.dart';
import 'formExemple2.dart';
import 'marc_form.dart';
import '../code_page.dart';

class CreacionesForm extends StatelessWidget {
  const CreacionesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: const Text('Marc Form libre'),
              trailing: const Icon(Icons.arrow_right_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const CodePage(
                        title: 'Marc Vega Form creación libre',
                        child: NewForm(),
                      );
                    },
                  ),
                );
              },
            ),
            const Divider(),
             ListTile(
              title: const Text('Marc Form 1'),
              trailing: const Icon(Icons.arrow_right_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const CodePage(
                        title: 'Marc Form 1',
                        child: MarcForm1(),
                      );
                    },
                  ),
                );
              },
            ),
             const Divider(),
             ListTile(
              title: const Text('Marc Form 2'),
              trailing: const Icon(Icons.arrow_right_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const CodePage(
                        title: 'Marc Form 2',
                        child: MarcForm2(),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
