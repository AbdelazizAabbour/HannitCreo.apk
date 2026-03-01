import 'package:flutter/material.dart';
import '../../presentation/theme/app_colors.dart';
import '../../presentation/theme/app_typography.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cabinet Hannit',
          style: AppTypography.heading2.copyWith(color: AppColors.primary),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(LucideIcons.user)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section
            Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                gradient: AppColors.heroGradient,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Smile, Our Passion',
                    style: AppTypography.heading1.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Providing the best medical and dental care for you and your family.',
                    style: AppTypography.bodyLarge.copyWith(
                      color: AppColors.white.withValues(alpha: 0.9),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white,
                      foregroundColor: AppColors.primary,
                    ),
                    child: const Text('Book Appointment'),
                  ),
                ],
              ),
            ),

            // Services Preview
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Our Services', style: AppTypography.heading2),
                      TextButton(
                        onPressed: () {},
                        child: const Text('View All'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 180,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 16),
                      itemBuilder: (context, index) =>
                          _buildServiceCard(context),
                    ),
                  ),
                ],
              ),
            ),

            // About Preview
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        'Experience Excellence',
                        style: AppTypography.heading2.copyWith(fontSize: 20),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'We are a multi-disciplinary clinic dedicated to providing high-quality care with modern technology.',
                        textAlign: TextAlign.center,
                        style: AppTypography.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: const Icon(LucideIcons.calendarPlus, color: Colors.white),
      ),
    );
  }

  Widget _buildServiceCard(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.lightGray),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: const Icon(LucideIcons.activity, color: AppColors.primary),
          ),
          const SizedBox(height: 12),
          Text(
            'General Dental',
            textAlign: TextAlign.center,
            style: AppTypography.bodyLarge.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
