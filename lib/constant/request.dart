import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthController {
  Future<String> signUpUsingEmailPassword(email, pass, fname) async {
    final response = await http.post(
        Uri.parse(
            'https://auth-backend-production-054a.up.railway.app/api/v1/auth/signup'),
        body: json.encode({"name": fname, "email": email, "password": pass}));
    if (response.statusCode == 200) {
      return "success";
    } else {
      return "bad request";
    }
  }

  Future<String> signInUsingOtp() async {
    final response = await http.post(
        Uri.parse(
            'https://auth-backend-production-054a.up.railway.app/api/v1/auth/send-otp'),
        body: json.encode({"email": "utkarsh2110024@akgec.ac.in"}));
    if (response.statusCode == 200) {
      return "success";
    } else {
      return "bad request";
    }
  }

  Future signInVerifyOtp(int otp) async {
    final response = await http.post(
        Uri.parse(
            'https://auth-backend-production-054a.up.railway.app/api/v1/auth/verify'),
        body: json.encode({"otp": otp, "email": "utkarsh2110024@akgec.ac.in"}));
    if (response.statusCode == 200) {
      return "success";
    } else {
      return "bad request";
    }
  }

  Future<String> signInUsingEmailPassword(email, pass) async {
    final response = await http.post(
        Uri.parse(
            'https://auth-backend-production-054a.up.railway.app/api/v1/auth/login'),
        body: json.encode({"email": email, "password": pass}));
    if (response.statusCode == 200) {
      AccessToken accessTokens = accessTokenFromJson(response.body);
      print(accessTokens.accessToken);
      return "success";
    } else {
      return "bad request";
    }
  }

  Future resetPasswordUsingOtp(email) async {
    final response = await http.post(
        Uri.parse(
            'https://auth-backend-production-054a.up.railway.app/api/v1/auth/reset'),
        body: json.encode({"email": email}));
    if (response.statusCode == 200) {
      return "success";
    } else {
      return "bad request";
    }
  }
}

AccessToken accessTokenFromJson(String str) =>
    AccessToken.fromJson(json.decode(str));

String welcomeToJson(AccessToken data) => json.encode(data.toJson());

class AccessToken {
  AccessToken({
    required this.accessToken,
    required this.refreshToken,
  });

  String accessToken;
  String refreshToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) => AccessToken(
        accessToken: json["access_token"],
        refreshToken: json["refresh_token"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "refresh_token": refreshToken,
      };
}

showSnackBarr(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}
