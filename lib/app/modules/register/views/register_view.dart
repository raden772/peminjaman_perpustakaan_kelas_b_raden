import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjaman_perpustakaan_kelas_b_raden/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                    controller: controller.namaController,
                    decoration: InputDecoration(hintText: "Masukkan Nama"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Nama tidak boleh kosong";
                      }
                      return null;
                    }),
                TextFormField(
                    controller: controller.usernameController,
                    decoration: InputDecoration(hintText: "Masukkan Username"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username tidak boleh kosong";
                      }
                      return null;
                    }),
                TextFormField(
                    controller: controller.teleponController,
                    decoration: InputDecoration(hintText: "Masukkan Telepon"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Telepon tidak boleh kosong";
                      }
                      return null;
                    }),
                TextFormField(
                    controller: controller.alamatController,
                    decoration: InputDecoration(hintText: "Masukkan Alamat"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Alamat tidak boleh kosong";
                      }
                      return null;
                    }),
                TextFormField(
                  controller: controller.passwordController,
                  decoration: InputDecoration(hintText: "Masukkan Password"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Obx(() => controller.register.value
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () => controller.registerpost(),
                        child: const Text("Register"))),
                ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.REGISTER),
                    child: const Text("Daftar"))
              ],
            )),
      ),
    );
  }
}
