import "package:another/pages/details_pages.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Cardd extends StatelessWidget {
  const Cardd({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const DetailsPage()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: Colors.amber,
          image: const DecorationImage(
            image: AssetImage(
              "assets/background.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Graphic design",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.timelapse_sharp,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "24 Lessons",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "\$25.99",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
