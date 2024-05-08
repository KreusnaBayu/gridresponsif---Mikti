import 'package:flutter/material.dart';
import 'package:gallery/const/data.dart';

class DetailPage extends StatefulWidget {
  final Item item; // Terima data item

  const DetailPage({required this.item});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool liked = false;
  bool disliked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return _buildDetailmax();
        } else if (maxWidth >= 600) {
          return _buildDetail700();
        }
        return _buildDetail500();
      }),
    );
  }

  Widget _buildDetail500() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12), // Atur radius sudut gambar
            child: Image.asset(
              widget.item.image,
              width: double.infinity, // Agar gambar mengisi lebar yang tersedia
              height: 200, // Atur tinggi gambar sesuai kebutuhan
              fit:
                  BoxFit.cover, // Mengatur agar gambar terisi penuh dalam kotak
            ),
          ), // Tampilkan gambar dengan sudut sedikit melengkung di ujungnya
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      liked = true;
                      disliked = false;
                    });
                  },
                  icon: Icon(Icons.thumb_up,
                      color: Colors.black), // Mengatur warna ikon menjadi putih
                  label: Text('Like',
                      style: TextStyle(
                          color: Colors
                              .black)), // Mengatur warna teks menjadi putih
                  style: ElevatedButton.styleFrom(
                    primary: liked ? Colors.green : null,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      disliked = true;
                      liked = false;
                    });
                  },
                  icon: Icon(Icons.thumb_down,
                      color: Colors.black), // Mengatur warna ikon menjadi putih
                  label: Text('Dislike',
                      style: TextStyle(
                          color: Colors
                              .black)), // Mengatur warna teks menjadi putih
                  style: ElevatedButton.styleFrom(
                    primary: disliked ? Colors.red : null,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            widget.item.title, // Tampilkan judul
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.item.description, // Tampilkan deskripsi
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildDetail700() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(12), // Atur radius sudut gambar
                child: Image.asset(
                  widget.item.image,
                  width: 250,
                  height: 250,
                  fit: BoxFit
                      .cover, // Mengatur agar gambar terisi penuh dalam kotak
                ),
              ), // Tampilkan gambar dengan sudut sedikit melengkung di ujungnya
              SizedBox(width: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.title, // Tampilkan judul
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        widget.item.description, // Tampilkan deskripsi
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      liked = true;
                      disliked = false;
                    });
                  },
                  icon: Icon(Icons.thumb_up,
                      color: Colors.black), // Mengatur warna ikon menjadi putih
                  label: Text('Like',
                      style: TextStyle(
                          color: Colors
                              .black)), // Mengatur warna teks menjadi putih
                  style: ElevatedButton.styleFrom(
                    primary: liked ? Colors.green : null,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      disliked = true;
                      liked = false;
                    });
                  },
                  icon: Icon(Icons.thumb_down,
                      color: Colors.black), // Mengatur warna ikon menjadi putih
                  label: Text('Dislike',
                      style: TextStyle(
                          color: Colors
                              .black)), // Mengatur warna teks menjadi putih
                  style: ElevatedButton.styleFrom(
                    primary: disliked ? Colors.red : null,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailmax() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(12), // Atur radius sudut gambar
                child: Image.asset(
                  widget.item.image,
                  width: 500,
                  height: 500,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.title, // Tampilkan judul
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        widget.item.description, // Tampilkan deskripsi
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      liked = true;
                      disliked = false;
                    });
                  },
                  icon: Icon(Icons.thumb_up,
                      color: Colors.black), // Mengatur warna ikon menjadi putih
                  label: Text('Like',
                      style: TextStyle(
                          color: Colors
                              .black)), // Mengatur warna teks menjadi putih
                  style: ElevatedButton.styleFrom(
                    primary: liked ? Colors.green : null,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      disliked = true;
                      liked = false;
                    });
                  },
                  icon: Icon(Icons.thumb_down,
                      color: Colors.black), // Mengatur warna ikon menjadi putih
                  label: Text('Dislike',
                      style: TextStyle(
                          color: Colors
                              .black)), // Mengatur warna teks menjadi putih
                  style: ElevatedButton.styleFrom(
                    primary: disliked ? Colors.red : null,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
