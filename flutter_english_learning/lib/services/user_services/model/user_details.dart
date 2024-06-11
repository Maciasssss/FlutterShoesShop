class UserDetails {
  String? username;
  String? email;
  String? id;
  String? wallet;
  String? city;
  String? zipCode;
  String? street;
  String? placementNumber;
  String? buildingNumber;

  UserDetails({
    this.username,
    this.email,
    this.id,
    this.wallet,
    this.city,
    this.zipCode,
    this.street,
    this.placementNumber,
    this.buildingNumber,
  });

  UserDetails.fromJson(Map<String, dynamic> json) {
    email = json['Email'];
    wallet = json['Wallet'];
    id = json['Id'];
    username = json['Name'];
    city = json['City'];
    zipCode = json['ZipCode'];
    street = json['Street'];
    placementNumber = json['PlacementNumber'];
    buildingNumber = json['BuildingNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Email'] = email;
    data['Wallet'] = wallet;
    data['Id'] = id;
    data['Name'] = username;
    data['City'] = city;
    data['ZipCode'] = zipCode;
    data['Street'] = street;
    data['PlacementNumber'] = placementNumber;
    data['BuildingNumber'] = buildingNumber;

    return data;
  }
}
