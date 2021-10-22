class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course> generateCourses() {
    return [
      Course('Luma Lunari', 'assets/icons/icon1.png', 'Plant',
          'assets/images/image1.jpg'),
      Course('Daniel Dia', 'assets/icons/icon2.png', 'Mushroom',
          'assets/images/image2.jpg'),
    ];
  }
}
