import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'utils/colorConst.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: baseColor,
          title: const Text('من نحن'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: [
                  Text('حول التطبيق',
                      style: Theme.of(context).textTheme.headline6),
                  const Text(
                      ':هذا التطبيق مفتوح المصدر ويمكنك الاطلاع عليه من خلال الرابط التالي  '),
                  TextButton(
                    onPressed: () => launch('https://github.com/devdhaif/math'),
                    child: const Text('https://github.com/devdhaif/math'),
                  ),
                  const Text(' يساعد هذا التطبيق الاطفال في تعلم الرياضيات'),
                  const Text(
                      'عن طريق انشاء امتحانات عشوائية مبسطة في العمليات الاساسية'),
                  const Text('ويمكن مراجعة النتيجة والتاكد من الاجابات'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: const [
                  Text('المطورين',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  // Widgets for first row go here

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/77447520?v=4'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Dhaifallah Ahmed',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Software Engineer',
                          style: TextStyle(fontSize: 12, color: Colors.teal),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(fontSize: 12, color: Colors.teal),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () => launch('https://www.devdhaif.me'),
                    icon: const Icon(MdiIcons.web, color: Colors.blue),
                  ),
                  IconButton(
                    onPressed: () => launch('https://www.github.com/devdhaif'),
                    icon: const Icon(MdiIcons.github),
                  )

                  // Icon with a link to the GitHub repository
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  // Widgets for first row go here

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://www.gravatar.com/avatar/00000000000000000000000000000000?d=mp&f=y'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Thanaa AlTayeb',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Software Engineer',
                          style: TextStyle(fontSize: 12, color: Colors.teal),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(fontSize: 12, color: Colors.teal),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    // ignore: deprecated_member_use
                    onPressed: () => launch('https://github.com/thanaa'),
                    icon: const Icon(MdiIcons.github),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
