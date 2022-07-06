import 'dart:convert';

class ContactModel{
    ContactModel({
        required this.id,
        required this.uid,
        required this.password,
        required this.firstName,
        required this.lastName,
        required this.username,
        required this.email,
        required this.avatar,
        required this.gender,
        required this.phoneNumber,
        required this.socialInsuranceNumber,
        required this.dateOfBirth,
        required this.employment,
        required this.address,
        required this.creditCard,
        required this.subscription,
    });

    int id;
    String uid;
    String password;
    String firstName;
    String lastName;
    String username;
    String email;
    String avatar;
    String gender;
    String phoneNumber;
    String socialInsuranceNumber;
    String dateOfBirth;
    String employment;
    String address;
    String creditCard;
    String subscription;

    factory ContactModel.fromJson(String str) => ContactModel.fromMap(json.decode(str));

    //String toJson() => json.encode(toMap());

    factory ContactModel.fromMap(Map<String, dynamic> json) => ContactModel(
        id: json["id"],
        uid: json["uid"],
        password: json["password"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        username: json["username"],
        email: json["email"],
        avatar: json["avatar"],
        gender: json["gender"],
        phoneNumber: json["phone_number"],
        socialInsuranceNumber: json["social_insurance_number"],
        dateOfBirth:json["date_of_birth"],
        employment:json["employment"],
        address: json["address"],
        creditCard: json["credit_card"],
        subscription: json["subscription"],
    );

  /*  Map<String, dynamic> toMap() => {
        "id": id,
        "uid": uid,
        "password": password,
        "first_name": firstName,
        "last_name": lastName,
        "username": username,
        "email": email,
        "avatar": avatar,
        "gender": gender,
        "phone_number": phoneNumber,
        "social_insurance_number": socialInsuranceNumber,
        "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "employment": employment.toMap(),
        "address": address.toMap(),
        "credit_card": creditCard.toMap(),
        "subscription": subscription.toMap(),
    };*/
}
