class CourseCategory {
  final String title, image, batchNo, availableSit, day;

  CourseCategory({
    required this.title,
    required this.image,
    required this.batchNo,
    required this.availableSit,
    required this.day,
  });
}

List<CourseCategory> courseCategories = [
  CourseCategory(
    title: 'Full Stack Web Development with JavaScript (MERN)',
    image: 'assets/images/javascript.jpg',
    batchNo: 'ব্যাচ ১১',
    availableSit: '৬ সিট বাকি',
    day: '৬ দিন বাকি',
  ),
  CourseCategory(
    title: 'Full Stack Web Development with Python, Django & React',
    image: 'assets/images/python.jpg',
    batchNo: 'ব্যাচ ৬',
    availableSit: '৮৬ সিট বাকি',
    day: '৪০ দিন বাকি',
  ),
  CourseCategory(
    title: 'Full Stack Web Development with ASP.NET Core',
    image: 'assets/images/asp.jpg',
    batchNo: 'ব্যাচ ৭',
    availableSit: '৭৫ সিট বাকি',
    day: '৩৯ দিন বাকি',
  ),
  CourseCategory(
    title: 'SQA: Manual & Automated \n Testing',
    image: 'assets/images/sqa.jpg',
    batchNo: 'ব্যাচ ১৩',
    availableSit: '৬৫ সিট বাকি',
    day: '৪১ দিন বাকি',
  ),
];
