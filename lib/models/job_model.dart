class JobModel {
  String id;
  String name;
  String category;
  String companyName;
  String companyLogo;
  String location;
  List about;
  List qualifications;
  List responsibilities;

  JobModel({
    this.id,
    this.name,
    this.category,
    this.companyName,
    this.companyLogo,
    this.location,
    this.about,
    this.qualifications,
    this.responsibilities,
  });

  JobModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    companyName = json['companyName'];
    companyLogo = json['companyLogo'];
    location = json['location'];
    about = json['about'];
    qualifications = json['qualifications'];
    responsibilities = json['responsibilities'];
  }

  Map<String, dynamic> toJson() {
    return {
    'id': id,
    'name': name,
    'category': category,
    'companyName': companyName,
    'companyLogo': companyLogo,
    'location': location,
    'about': about,
    'qualifications': qualifications,
    'responsibilities': responsibilities,
    };
  }
}
