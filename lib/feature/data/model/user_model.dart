import 'package:flutter/material.dart';

class UserModel {
  final String name;
  final String lastName;
  final String email;
  final String password;
  final IconButton github;
  final IconButton instagram;
  final IconButton facebook;
  final IconButton whatsapp;

  const UserModel(
    this.name,
    this.lastName,
    this.email,
    this.password,
    this.github,
    this.instagram,
    this.facebook,
    this.whatsapp,
  );
}
