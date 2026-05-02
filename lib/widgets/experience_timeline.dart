import 'package:flutter/material.dart';
import '../models/portfolio_model.dart';

class ExperienceTimeline extends StatefulWidget {
  final List<Experience> experiences;
  final Color themeColor;

  const ExperienceTimeline({
    super.key,
    required this.experiences,
    required this.themeColor,
  });

  @override
  State<ExperienceTimeline> createState() => _ExperienceTimelineState();
}

class _ExperienceTimelineState extends State<ExperienceTimeline> {
  int _selectedYear = DateTime.now().year;

  @override
  void initState() {
    super.initState();
    if (widget.experiences.isNotEmpty) {
      _selectedYear = widget.experiences.first.year;
    }
  }

  @override
  Widget build(BuildContext context) {
    final years = widget.experiences.map((e) => e.year).toSet().toList()
      ..sort((a, b) => b.compareTo(a));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 45,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: years.length,
            itemBuilder: (context, index) {
              final year = years[index];
              final isSelected = _selectedYear == year;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedYear = year;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    gradient: isSelected
                        ? LinearGradient(
                            colors: [
                              widget.themeColor,
                              widget.themeColor.withValues(alpha: 0.7)
                            ],
                          )
                        : null,
                    color: isSelected ? null : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    year.toString(),
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        ...widget.experiences
            .where((e) => e.year == _selectedYear)
            .map((experience) => _buildExperienceCard(experience)),
      ],
    );
  }

  Widget _buildExperienceCard(Experience experience) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            blurRadius: 10,
          ),
        ],
      ),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundColor: widget.themeColor.withValues(alpha: 0.2),
          child: Icon(Icons.work, color: widget.themeColor),
        ),
        title: Text(
          experience.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(experience.company),
            Text(
              experience.period,
              style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.description,
                  style: const TextStyle(height: 1.4),
                ),
                if (experience.achievements.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  const Text(
                    'Key Achievements:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ...experience.achievements.map((achievement) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.check_circle,
                                size: 16, color: widget.themeColor),
                            const SizedBox(width: 8),
                            Expanded(child: Text(achievement)),
                          ],
                        ),
                      )),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
