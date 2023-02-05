// ignore: file_names
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/utils/colors.dart';
import 'package:pokedex_app/utils/json_model.dart';

class HomePage extends StatelessWidget {
  Future<List<Data>> readJsonData() async {
    final jsondata = await rootBundle.rootBundle.loadString('assets/data.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => Data.fromJson(e)).toList();
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colour.bgcolor,
        elevation: 0.0,
        leading: const Icon(
          Icons.menu,
          size: 30,
          color: Colors.black,
        ),
        title: const Text('hi'),
        actions: const <Widget>[
          Image(image: AssetImage('assets/icons/Pokeball_APPBAR.png')),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
        ],
      ),
      backgroundColor: Colour.bgcolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            // alignment: AlignmentDirectional.center,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 175,
                  ),
                  Image(
                    image: AssetImage('assets/images/Pokeball.png'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Hey Hunter,',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned.directional(
                textDirection: TextDirection.ltr,
                top: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('What you want to Browse',
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colour.actcolor,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              icon: const Icon(Icons.search),
                              hintText: 'Search',
                              hintStyle: GoogleFonts.poppins(
                                fontSize: 16,
                              ),
                              fillColor: Colour.actcolor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          height: 80,
                          width: 156,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colour.orangeColor,
                          ),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              const Image(
                                  height: 60,
                                  width: 50,
                                  image:
                                      AssetImage('assets/images/Pokeball.png')),
                              Center(
                                child: Text(
                                  'PokeDex',
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          height: 80,
                          width: 156,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colour.greenColor,
                          ),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              const Image(
                                  height: 60,
                                  width: 50,
                                  image:
                                      AssetImage('assets/images/Pokeball.png')),
                              Center(
                                child: Text(
                                  'PokeDex',
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          height: 80,
                          width: 156,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colour.blueColor,
                          ),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              const Image(
                                  height: 60,
                                  width: 50,
                                  image:
                                      AssetImage('assets/images/Pokeball.png')),
                              Center(
                                child: Text(
                                  'PokeDex',
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          height: 80,
                          width: 156,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colour.purpleColor,
                          ),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              const Image(
                                  height: 60,
                                  width: 50,
                                  image:
                                      AssetImage('assets/images/Pokeball.png')),
                              Center(
                                child: Text(
                                  'PokeDex',
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Favourites',
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
