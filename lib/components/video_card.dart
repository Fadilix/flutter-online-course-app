import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class VideoCard extends StatelessWidget {
  final String title;
  final String time;
  const VideoCard({
    required this.title,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(8),
            ),
            width: 60,
            height: 60,
            child: Icon(
              Icons.play_circle,
              color: Colors.blue[400],
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                time,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
