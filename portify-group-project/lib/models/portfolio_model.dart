import 'package:flutter/material.dart';

class Skill {
  final String name;
  final int level;
  final List<String> tags;

  Skill({required this.name, required this.level, this.tags = const []});

  Map<String, dynamic> toJson() => {
        'name': name,
        'level': level,
        'tags': tags,
      };

  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(
      name: json['name'],
      level: json['level'],
      tags: List<String>.from(json['tags'] ?? []),
    );
  }
}

class Experience {
  final String id;
  final String title;
  final String company;
  final String period;
  final String description;
  final List<String> achievements;
  final int year;

  Experience({
    required this.id,
    required this.title,
    required this.company,
    required this.period,
    required this.description,
    required this.achievements,
    required this.year,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'company': company,
        'period': period,
        'description': description,
        'achievements': achievements,
        'year': year,
      };

  factory Experience.fromJson(Map<String, dynamic> json) {
    return Experience(
      id: json['id'],
      title: json['title'],
      company: json['company'],
      period: json['period'],
      description: json['description'],
      achievements: List<String>.from(json['achievements']),
      year: json['year'],
    );
  }
}

class Project {
  final String id;
  final String title;
  final String description;
  final List<String> technologies;
  final String? imageUrl;
  final String? liveLink;
  final String? githubLink;
  final int viewCount;

  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.technologies,
    this.imageUrl,
    this.liveLink,
    this.githubLink,
    this.viewCount = 0,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'technologies': technologies,
        'imageUrl': imageUrl,
        'liveLink': liveLink,
        'githubLink': githubLink,
        'viewCount': viewCount,
      };

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      technologies: List<String>.from(json['technologies']),
      imageUrl: json['imageUrl'],
      liveLink: json['liveLink'],
      githubLink: json['githubLink'],
      viewCount: json['viewCount'] ?? 0,
    );
  }
}

class Portfolio {
  final String id;
  final String fullName;
  final String title;
  final String bio;
  final String email;
  final String phone;
  final String? profileImagePath;
  final String category;
  final List<Skill> skills;
  final List<Experience> experiences;
  final List<Project> projects;
  final String themeColor;
  final DateTime createdAt;
  final String? portifyUsername;

  Portfolio({
    required this.id,
    required this.fullName,
    required this.title,
    required this.bio,
    required this.email,
    required this.phone,
    this.profileImagePath,
    required this.category,
    required this.skills,
    required this.experiences,
    required this.projects,
    required this.themeColor,
    required this.createdAt,
    this.portifyUsername,
  });
}

class PortfolioModel extends ChangeNotifier {
  final List<Portfolio> _portfolios = [];

  List<Portfolio> get portfolios => _portfolios;
  int get portfolioCount => _portfolios.length;

  PortfolioModel() {
    _loadSampleData();
  }

  void _loadSampleData() {
    // Load any saved data here
  }

  void addPortfolio(Portfolio portfolio) {
    _portfolios.add(portfolio);
    notifyListeners();
    debugPrint(
        'Portfolio added: ${portfolio.fullName}, Total: ${_portfolios.length}');
  }

  void deletePortfolio(String id) {
    _portfolios.removeWhere((p) => p.id == id);
    notifyListeners();
  }

  Portfolio? getPortfolioById(String id) {
    try {
      return _portfolios.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }
}
