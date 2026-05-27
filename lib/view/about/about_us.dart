import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff0F172A),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // HEADER
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xff38BDF8),
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff38BDF8)
                                .withOpacity(0.4),
                            blurRadius: 25,
                            spreadRadius: 2,
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/profile.jpeg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "HARIKRISHNA KALYANAM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Flutter Developer",
                      style: TextStyle(
                        color: Color(0xff38BDF8),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // ABOUT SECTION
              const Text(
                "About Me",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                "Flutter Developer with 4+ years of experience in building scalable and high-performance cross-platform mobile applications for Android and iOS. Skilled in Flutter, Dart, Firebase, REST APIs, GetX, Bloc, and Cubit with expertise in creating modern UI/UX designs and optimized mobile experiences.\n\nExperienced in complete application lifecycle management including development, testing, deployment, Play Store releases, and App Store publishing. Passionate about clean architecture, performance optimization, and delivering production-ready applications aligned with business goals.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.8,
                ),
              ),

              const SizedBox(height: 35),

              // SKILLS
              const Text(
                "Technical Skills",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: const [

                  SkillChip(title: "Flutter"),
                  SkillChip(title: "Dart"),
                  SkillChip(title: "Firebase"),
                  SkillChip(title: "REST APIs"),
                  SkillChip(title: "GetX"),
                  SkillChip(title: "Bloc"),
                  SkillChip(title: "Cubit"),
                  SkillChip(title: "Java"),
                  SkillChip(title: "Kotlin"),
                  SkillChip(title: "Google Maps"),
                  SkillChip(title: "Razorpay"),
                  SkillChip(title: "PhonePe"),
                  SkillChip(title: "GitHub"),
                  SkillChip(title: "Play Store"),
                  SkillChip(title: "App Store"),
                ],
              ),

              const SizedBox(height: 40),

              // EXPERIENCE
              const Text(
                "Experience",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const ExperienceCard(
                company: "Colourmoon Technologies",
                role: "Flutter Developer",
                duration: "2022 - 2026",
                description:
                    "Developed and maintained multiple production-grade Flutter applications for Android and iOS platforms with scalable architecture and optimized performance.",
              ),

              const SizedBox(height: 20),

              const ExperienceCard(
                company: "New Thoughts IT Solutions",
                role: "Android Developer Intern",
                duration: "2021",
                description:
                    "Worked on Android application development using Java and XML with REST API integrations and responsive UI implementation.",
              ),

              const SizedBox(height: 40),

              // CONTACT
              const Text(
                "Contact",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const ContactTile(
                icon: Icons.email_outlined,
                title: "Email",
                value: "harikrishnakalyanam1997@gmail.com",
              ),

              const SizedBox(height: 15),

              const ContactTile(
                icon: Icons.phone_outlined,
                title: "Phone",
                value: "+91 97010 98826",
              ),

              const SizedBox(height: 15),

              const ContactTile(
                icon: Icons.location_on_outlined,
                title: "Location",
                value: "Visakhapatnam, Andhra Pradesh",
              ),

              SizedBox(height: size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}

// ================= SKILL CHIP =================

class SkillChip extends StatelessWidget {
  final String title;

  const SkillChip({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: const Color(0xff1E293B),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xff38BDF8).withOpacity(0.3),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

// ================= EXPERIENCE CARD =================

class ExperienceCard extends StatelessWidget {
  final String company;
  final String role;
  final String duration;
  final String description;

  const ExperienceCard({
    super.key,
    required this.company,
    required this.role,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: const Color(0xff1E293B),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            role,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            company,
            style: const TextStyle(
              color: Color(0xff38BDF8),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            duration,
            style: TextStyle(
              color: Colors.grey.shade400,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            description,
            style: const TextStyle(
              color: Colors.white70,
              height: 1.7,
            ),
          ),
        ],
      ),
    );
  }
}

// ================= CONTACT TILE =================

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const ContactTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xff1E293B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [

          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: const Color(0xff38BDF8).withOpacity(0.15),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              icon,
              color: const Color(0xff38BDF8),
              size: 20,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}