import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF687D99),
      appBar: AppBar(
        backgroundColor: const Color(0xFF687D99),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            // Header Section with horizontal margin
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Divider(
                color: Colors.white,
                thickness: 1.5,
              ),
            ),

            const SizedBox(height: 10),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'FOCUSNet',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Paragraphs with same horizontal margin
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Text(
                'FOCUSNet is a research project focused on improving road safety by enhancing object detection in low-light environments. The goal is to accurately detect road hazards at night using deep learning techniques.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Text(
                'This study presents a modified Single Shot MultiBox Detector (SSD) that combines MobileNetV3 and the Convolutional Block Attention Module (CBAM) to improve detection performance in low-light conditions. The performance of this model is compared with a baseline SSD using standard evaluation metrics.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Text(
                'FOCUSNet aims to support safer nighttime driving through intelligent and efficient object detection systems.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
