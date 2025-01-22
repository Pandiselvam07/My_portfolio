class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/notes_application.png',
      title: 'Notes Application ',
      subtitle:
          'This is user-friendly mobile application built with Flutter and Dart, designed for efficient note-taking.',
      androidLink: '',
      iosLink: ''),
  ProjectUtils(
      image: 'assets/projects/todoList.jpg',
      title: 'To-Do List Application ',
      subtitle:
          'The To-Do-List is a Flutter-based mobile application , allowing users to sign up, log in, and manage tasks efficiently ',
      androidLink: '',
      iosLink: ''),
];

// ###############
// WORK PROJECTS
// List<ProjectUtils> workProjectUtils = [
//   ProjectUtils(
//     image: 'assets/projects/w01.png',
//     title: 'English Brain Craft',
//     subtitle:
//         'This is an English learning app for students to learn English through various methods.',
//     androidLink:
//         'https://play.google.com/store/apps/details?id=kr.co.evolcano.donotstudy',
//     iosLink:
//         "https://apps.apple.com/kr/app/%EC%98%81%EC%96%B4%EB%A8%B8%EB%A6%AC-%EA%B3%B5%EC%9E%91%EC%86%8C/id1507102714",
//   ),
// ];
