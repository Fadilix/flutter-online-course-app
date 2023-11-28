import 'package:another/components/card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // custom app bar

      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Good morning, Fadile!",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "best choice",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.poppins(
                        color: Colors.blue[200],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Cardd(),
                    Cardd(),
                    Cardd(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  "Category",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ]),
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(children: [
                    Icon(
                      Icons.design_services,
                      color: Colors.pink[400],
                    ),
                    const SizedBox(width: 5),
                    Text("Design",
                        style: GoogleFonts.poppins(color: Colors.white))
                  ]),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(children: [
                    const Icon(
                      Icons.developer_mode,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5),
                    Text("Development",
                        style: GoogleFonts.poppins(color: Colors.white))
                  ]),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(children: [
                    const Icon(
                      Icons.music_note,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5),
                    Text("Music",
                        style: GoogleFonts.poppins(color: Colors.white))
                  ]),
                )
              ]),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.shop_2,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 5),
                        Text("Marketing",
                            style: GoogleFonts.poppins(color: Colors.white))
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      const Icon(
                        Icons.photo_size_select_large_sharp,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 5),
                      Text("Photography",
                          style: GoogleFonts.poppins(color: Colors.white))
                    ]),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              // my courses section
              Row(
                children: [
                  Text(
                    "My courses",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Cardd(),
                    const Cardd(),
                    const Cardd(),
                    const Cardd(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
