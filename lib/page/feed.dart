
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class triptales extends StatelessWidget {
  const triptales({super.key});

  final List<Map<String, String>> feedData = const
  [
    {
      "name": "Yami Gautam",
      "ProfilePic": "https://thumbs.dreamstime.com/z/young-woman-profile-avatar-beautiful-girl-face-female-cartoon-character-portrait-young-woman-profile-avatar-beautiful-girl-face-198696882.jpg",
      "post": "https://images.squarespace-cdn.com/content/v1/58019e32be65946b43904797/1594419311474-DH8WG38M2KDKP9UTYDI9/Hollywood-copy.jpg?format=2500w",
      "location": "Los Angeles",
      "likes": "909"
    },
    {
      "name": "Milan Koshy",
      "ProfilePic": "https://thumbs.dreamstime.com/b/flat-male-avatar-image-beard-hairstyle-businessman-profile-icon-vector-179285629.jpg",
      "post": "https://images.pexels.com/photos/2416419/pexels-photo-2416419.jpeg?cs=srgb&dl=pexels-phil-s-964389-2416419.jpg&fm=jpg",
      "location": "Switzerland",
      "likes": "54"
    },
    {
      "name": "Ashley Simons",
      "ProfilePic": "https://thumbs.dreamstime.com/z/young-woman-profile-avatar-beautiful-girl-face-female-cartoon-character-portrait-young-woman-profile-avatar-beautiful-girl-face-198696882.jpg",
      "post": "https://images.pexels.com/photos/1731660/pexels-photo-1731660.jpeg?cs=srgb&dl=pexels-the-trvlr-1731660.jpg&fm=jpg",
      "location": "Qatar",
      "likes": "89"
    },
    {
      "name": "Kiara Advani",
      "ProfilePic": "https://cdni.iconscout.com/illustration/premium/thumb/woman-profile-illustration-download-in-svg-png-gif-file-formats--young-female-girl-avatar-portraits-pack-people-illustrations-6590622.png?f=webp",
      "post": "https://media.istockphoto.com/id/1029797404/photo/cheenavala-in-kochi.jpg?s=612x612&w=0&k=20&c=njgmKK-rdoZS0BWz0MkZuWJHzpE0qzwKuqtpsBz-BB0=",
      "location": "Kochi",
      "likes": "476"
    },
    {
      "name": "Hari Singh",
      "ProfilePic": "https://thumbs.dreamstime.com/b/flat-male-avatar-image-beard-hairstyle-businessman-profile-icon-vector-179285629.jpg",
      "post": "https://images.unsplash.com/photo-1534695215921-52f8a19e7909?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGdyZWVjZXxlbnwwfHwwfHx8MA%3D%3D",
      "location": "Greece",
      "likes": "671"
    },
    {
      "name": "Victoria M S",
      "ProfilePic": "https://cdni.iconscout.com/illustration/premium/thumb/woman-profile-illustration-download-in-svg-png-gif-file-formats--young-female-girl-avatar-portraits-pack-people-illustrations-6590622.png?f=webp",
      "post": "https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "location": "Greenland",
      "likes": "34"
    }

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: feedData.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        feedData[index][ "ProfilePic"]!),
                  ),
                  title: Text(feedData[index]["name"]!,
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(feedData[index]["location"]!,
                    style: TextStyle(fontSize: 8),),
                  trailing: Icon(Icons.more_vert),
                ),
                Image.network(
                  feedData[index]["post"]!,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.verified_outlined)),
                    Text(feedData[index][ "likes"]!),
                    IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }
}