import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/add_peminjaman_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pinjam Buku ${Get.parameters['judul'].toString()}'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                    controller: controller.tanggalPinjamController,
                    decoration: InputDecoration(hintText: "Masukkan Nama"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Nama tidak boleh kosong";
                      }
                      return null;
                    }),
                TextFormField(
                    controller: controller.tanggalKembaliController,
                    decoration: InputDecoration(hintText: "Masukkan Username"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username tidak boleh kosong";
                      }
                      return null;
                    }),
                Obx(() => controller.loading.value
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                    onPressed: () => controller.post(),
                    child: const Text("Pinjam"))),
              ],
            )),
      ),
    );
  }
}
