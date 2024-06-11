class UserDetails {

  String? username;
  String? email;
  String? city;
  String? street;
  String? buildingNumber;
  String? placementNumber;
  String? zipCode;

  UserDetails({
  
    required this.username,
    required this.email,
     this.city,
     this.street,
     this.buildingNumber,
     this.placementNumber,
     this.zipCode,
  });

  Map<String, dynamic> toMap() {
    return {
     
      'Name': username,
      'Email': email,
      'City': city,
      'Street': street,
      'BuildingNumber': buildingNumber,
      'PlacementNumber': placementNumber,
      'ZipCode': zipCode,
    };
  }

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      username: map['Name'],
      email: map['Email'],
      city: map['City'],
      street: map['Street'],
      buildingNumber: map['BuildingNumber'],
      placementNumber: map['PlacementNumber'],
      zipCode: map['ZipCode'],
    );
  }
}
