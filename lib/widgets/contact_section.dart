import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import '../constants/colors.dart';
import 'custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  ContactSection({super.key});

  // Controllers for name, email, and message fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  // Function to open email client with pre-filled information
  void _launchEmail() async {
    final String name = _nameController.text;
    final String email = _emailController.text;
    final String message = _messageController.text;

    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'rpandiselvam07@gmail.com',
      query:
          'subject=Contact from $name&body=Name: $name\nEmail: $email\nMessage: $message',
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          // Title
          const Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50),

          // Name and Email fields
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                }
                return buildNameEmailFieldMobile();
              },
            ),
          ),
          const SizedBox(height: 15),

          // Message field
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              controller: _messageController,
              hintText: "Your message",
              maxLines: 16,
            ),
          ),
          const SizedBox(height: 20),

          // Send button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.green)),
                onPressed: _launchEmail,
                child: const Text(
                  "Get in touch",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          // Divider
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(height: 15),

          // SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              _buildSocialIcon(SnsLinks.github, "assets/github.png"),
              _buildSocialIcon(SnsLinks.linkedIn, "assets/linkedin.png"),
              _buildSocialIcon(SnsLinks.facebook, "assets/facebook.png"),
              _buildSocialIcon(SnsLinks.instagram, "assets/instagram.png"),
              _buildSocialIcon(SnsLinks.telegram, "assets/telegram.png"),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(
          child: CustomTextField(
            controller: _nameController,
            hintText: "Your name",
          ),
        ),
        const SizedBox(width: 15),
        Flexible(
          child: CustomTextField(
            controller: _emailController,
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(
          child: CustomTextField(
            controller: _nameController,
            hintText: "Your name",
          ),
        ),
        const SizedBox(height: 15),
        Flexible(
          child: CustomTextField(
            controller: _emailController,
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  InkWell _buildSocialIcon(String url, String assetPath) {
    return InkWell(
      onTap: () {
        js.context.callMethod('open', [url]);
      },
      child: Image.asset(
        assetPath,
        width: 28,
      ),
    );
  }
}
