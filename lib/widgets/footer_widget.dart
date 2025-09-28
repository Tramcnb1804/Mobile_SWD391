import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        children: [
          // Main footer content
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo and tagline section
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Logo with recycling symbol
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF22C55E), // Green color
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.recycling,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Green Loop',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1F2937), // Dark gray
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Making fashion circular, one item at a time.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6B7280), // Light gray
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 40),
              // Navigation columns
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    // Platform column
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Platform',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2937),
                            ),
                          ),
                          const SizedBox(height: 12),
                          _buildFooterLink('Marketplace'),
                          _buildFooterLink('Join'),
                          _buildFooterLink('How it Works'),
                        ],
                      ),
                    ),
                    // Company column
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Company',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2937),
                            ),
                          ),
                          const SizedBox(height: 12),
                          _buildFooterLink('About'),
                          _buildFooterLink('Careers'),
                          _buildFooterLink('Contact'),
                        ],
                      ),
                    ),
                    // Support column
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Support',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2937),
                            ),
                          ),
                          const SizedBox(height: 12),
                          _buildFooterLink('Help Center'),
                          _buildFooterLink('Privacy'),
                          _buildFooterLink('Terms'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          // Separator line
          Container(
            height: 1,
            color: const Color(0xFFE5E7EB), // Light gray line
          ),
          const SizedBox(height: 24),
          // Copyright
          const Center(
            child: Text(
              '© 2024 Green Loop. All rights reserved.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF6B7280), // Light gray
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          // Handle navigation here
          print('Navigating to: $text');
        },
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF6B7280), // Light gray
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
