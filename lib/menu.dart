import 'package:flutter/material.dart';
import 'about_us.dart';

// ================= Hazard Menu =================
class HazardMenuPage extends StatefulWidget {
  const HazardMenuPage({super.key});

  @override
  State<HazardMenuPage> createState() => _HazardMenuPageState();
}

class _HazardMenuPageState extends State<HazardMenuPage> {
  bool voiceAlert = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D4059),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back + Title
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    "Types of Hazard",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Hazard Icons
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                  children: [
                    _hazardButton(
                      "assets/images/pedestrian_logo.png",
                      "Pedestrians",
                    ),
                    _hazardButton(
                      "assets/images/potholeshumps_logo.png",
                      "Potholes / Humps",
                    ),
                    _hazardButton("assets/images/animals_logo.png", "Animals"),
                    _hazardButton(
                      "assets/images/roadworks_logo.png",
                      "Road Works",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Voice Alert Switch (aligned with Types of Hazard)
              Padding(
                padding: const EdgeInsets.only(left: 48),
                child: Row(
                  children: [
                    Switch(
                      value: voiceAlert,
                      onChanged: (value) {
                        setState(() {
                          voiceAlert = value;
                        });
                      },
                      activeColor: Colors.white, // thumb when ON
                      activeTrackColor: Colors.green, // track when ON
                      inactiveThumbColor: Colors.white, // thumb when OFF
                      inactiveTrackColor: Colors.grey, // track when OFF
                    ),
                    const Text(
                      "Voice Alert",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 200),

              // Detect Now Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Add detection logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFD7014),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    "Detect Now",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              // About Us link
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutUsPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "About Us",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _hazardButton(String imagePath, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFD9D9D9),
          ),
          child: Image.asset(
            imagePath,
            height: 60,
            color: const Color(0xFF2D4059),
          ),
        ),
        const SizedBox(height: 10),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
