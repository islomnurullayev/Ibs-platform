class UnboardingContent {
  String image;
  String discription;
  String discription2;
  UnboardingContent(
      {required this.image,
      required this.discription,
      required this.discription2});
}

List<UnboardingContent> contents = [
  UnboardingContent(
    image: "assets/images/1.png",
    discription: "O'quv markazingizni\n onlayn formatga o'tkazing!",
    discription2: "yoki shaxsiy kursingizni\n shu yerda yarating!",
  ),
  UnboardingContent(
    image: "assets/images/2.png",
    discription: "Proffessional mentorlardan\n zamonaviy o'quv kurslari",
    discription2: "Kurslar onlayn formatda\n IT va Dizayn sohalari bo'yicha",
  ),
  UnboardingContent(
    image: "assets/images/3.png",
    discription: "Ushbu platformada o'z\n jamoangizni tuzishingiz",
    discription2: "yoki o'zingizga munosib\n ish topishingiz mumkin",
  ),
  UnboardingContent(
    image: "assets/images/4.png",
    discription: "online webinar va\n masterclasslar!",
    discription2: "yoki o'zingizga munosib\n ish topishingiz mumkin",
  ),
];
