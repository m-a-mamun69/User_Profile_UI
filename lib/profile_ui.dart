import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget> [
        Stack(
          clipBehavior: Clip.none, alignment: Alignment.center,
          children: <Widget> [
            Image(
              width: double.infinity,
                height: MediaQuery.of(context).size.height/5,
                fit: BoxFit.cover,
                image: const NetworkImage('https://images.photowall.com/products/58832/blue-mountain-view.jpg?h=699&q=85')),
            const Positioned(
                bottom: -50.0,
                child: CircleAvatar(
                  radius: 80, backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://st.depositphotos.com/2101611/3925/v/450/depositphotos_39257945-stock-illustration-businessman-avatar-profile-picture.jpg'),
                ),),
          ],
        ),
        const SizedBox(height: 50,),
        const ListTile(
          title: Center(child: Text('M A MAMUN'),) ,
          subtitle: Center(child: Text('View Your Profile'),) ,
        ),
        FloatingActionButton.extended(
          label: const Text('Edit Profile'), // <-- Text
          backgroundColor: Colors.grey[800],
          icon: const Icon( // <-- Icon
            Icons.edit,
            size: 24.0,
          ),
          onPressed: () {},
        ),
        const ListTile(
          title: Text('About Me'),
          subtitle: Text('MyShop is a Business to Consumer online E-commerce application which is designed for creating a smart online shopping opportunity for consumers. This shopping platform has a lot of features for consumers. The system is developed using Python, HTML, CSS, JavaScrip and Django Framework.'),
        ),
        const SizedBox(height: 20,),
        const Divider(),
        const SizedBox(height: 10,),
        buildAccountOption(context, "Account Information"),
        const Divider(),
        buildAccountOption(context, "Settings"),
        const Divider(),
        buildAccountOption(context, "Bookmarks"),
        const Divider(),
        buildAccountOption(context, "Recent Activity"),
        const Divider(),
        buildAccountOption(context, "Logout"),
        //ProfileMenuWidget(title: "Settings", icon: LineAwesomeIcons.cog, onPress: () {}),
        //ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.settings, color: Colors.white), label: Text('Edit Profile', style: TextStyle(color: Colors.white),),b)
      ],
    );
  }
  GestureDetector buildAccountOption(BuildContext context, String title){
    return GestureDetector(
      onTap: (){
        
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600]
            )),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}

