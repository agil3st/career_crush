import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/pages/home/cards_holder.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      padding: EdgeInsets.zero,
      showSettingsButton: true,
      showFooter: false,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello, Gwen',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'We bring the best for you',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorName.lavender,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 28,
                  backgroundImage: Image.network(
                    'https://i.pravatar.cc/300?img=1',
                  ).image,
                )
              ],
            ),
          ),
          SizedBox(
            height: 140,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 300,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: ColorName.midnight,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Interview Tips',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Optio, odit?',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemCount: 4,
            ),
          ),
          const SizedBox(height: 30),
          CardsHolder(
            title: 'Featured Jobs',
            child: SizedBox(
              height: 130,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://uilogos.co/img/logomark/tvit.png',
                              width: 50,
                            ),
                            const SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Finance Officer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  'PT. Tvit Indonesia',
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 11,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      FeatherIcons.star,
                                      size: 12,
                                      color: Colors.yellow.shade800,
                                    ),
                                    const SizedBox(width: 2),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 2),
                                      child: Text(
                                        '4.8',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  FeatherIcons.mapPin,
                                  size: 12,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  'Jakarta, Indonesia',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            const Text(
                              'Full Time',
                              style: TextStyle(
                                fontSize: 10,
                                color: ColorName.lavender,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  onTap: () => context.push(Routes.jobDetail),
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemCount: 5,
              ),
            ),
          ),
          const SizedBox(height: 30),
          CardsHolder(
            title: 'Recommended',
            child: SizedBox(
              height: 180,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => Container(
                  width: 150,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: ColorName.jasmine.shade900,
                    // border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Image.network(
                                'https://uilogos.co/img/logomark/treva.png',
                                height: 50,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'UI/UX Designer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Row(
                            children: const [
                              Icon(
                                FeatherIcons.mapPin,
                                size: 12,
                              ),
                              SizedBox(width: 2),
                              Text(
                                'Jakarta, Indonesia',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Full Time',
                            style: TextStyle(
                              fontSize: 10,
                              color: ColorName.lavender,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                FeatherIcons.star,
                                size: 12,
                                color: Colors.yellow.shade800,
                              ),
                              const SizedBox(width: 2),
                              const Padding(
                                padding: EdgeInsets.only(top: 2),
                                child: Text(
                                  '4.8',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemCount: 5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
