import 'package:flutter/material.dart';
import 'package:kuis/models/data.dart';

class DetailScreen extends StatelessWidget {
  final Shoe shoe;

  const DetailScreen({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shoe.shoeName),
      ),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          shoe.image,
          width: 350,
          height: 300,
          fit: BoxFit.cover,
        ),

        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shoe.shoeName,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),

                const SizedBox(height: 5),
              
                //kategeori
                Text(
                  shoe.category,
                  style: const TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 168, 175, 160),
                ),
                ),

              const SizedBox(height: 20),

              
              //harga
                Text(
                  shoe.price,
                  style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 60, 104, 9),
                ),
                ),

              const SizedBox(height: 20),

            //jumlah produk
            Text(
              "Jumlah Produk: ",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            ListTile(
              trailing: Icon(Icons.favorite, color: Colors.red),
              title: Text(
                "Likes: ${shoe.likes}",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                ),
            ),
              //likes

                //stok
              Text(
                "Stok: ${shoe.stock}",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                ),
              
              const SizedBox(height: 5),
              //ukuran
                Text(
                  "Ukuran: ${shoe.sizes.join(', ')}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 42, 39, 46),
                  ),
                ),

                const SizedBox(height: 10),

                 Text(
                  "Deskripsi", style: TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.bold,
                ),
                ),

                const SizedBox(height: 5),
                Text(
                  shoe.description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
            ],
          )
        )
      ],
      )
    )
    );
  }
}