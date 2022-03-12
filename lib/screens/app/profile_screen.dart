import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: ListView(
        padding: const EdgeInsets.all(28),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Akemi Yates',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    overflow: TextOverflow.ellipsis
                  ),),
                  Text('account@email.com',
                  style: TextStyle(
                    fontSize: 14
                  ),),
                ],
              ),
              Container(
                width: 88,
                height: 88,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnMDee2vjFJEskStXPWwXv8y3uQdL9kJsa_A&usqp=CAU')
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Colors.deepOrange,
                      style: BorderStyle.solid,
                    )
                ),
              ),
            ],
          ),
          const SizedBox(height: 28,),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: ListTile(
              leading: const Icon(Icons.local_drink_rounded, color: Colors.deepPurple,),
              title: const Text('3.021 Points',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min
                ,
                children: const [
                  Text('REWARDS',
                    style:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),),
                  CircleAvatar(backgroundColor: Colors.white38,child: Icon(Icons.arrow_forward_ios, size: 14,color: Colors.black,),)
                ],
              ),
            ),

          ),
          const SizedBox(height: 18,),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 28),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: const [
                      Text('Order #CF5Y8h',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      Spacer(),
                      Text('In Progress',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),),
                      SizedBox(width: 3,),
                      CircleAvatar(backgroundColor: Colors.deepPurple,radius: 6,)

                    ],
                  ),
                  const SizedBox(height: 28,),
                  Row(
                    children: [
                      Image.network('https://phoneaqua.com/products/apple-iphone-12.jpg',
                      width: 38,
                      height: 58,),
                      const SizedBox(width: 8,),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiNihpIUQoxHuBCXz7KXTV013TkP15OCtGXQ&usqp=CAU',
                      width: 38,
                      height: 58,),
                      const SizedBox(width: 8,),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXfCWdqBuY4JxjOIsDFDOAiQpdbEiKy1r8kQ&usqp=CAU',
                      width: 38,
                      height: 58,),
                      const SizedBox(width: 18,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('iPhone 11 Pro Max',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,

                            ),),
                          Text('and 2 more items',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,

                            ),),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 28,),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        opacity: 0.2,
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMgYr5yUTvAbUJLy4Nh_O7JUZpffhKU9nwE-ciO4yARlzgjsdRFY3tHD3Y5XIF_uGL5D8&usqp=CAU')
                      )
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.only(left: 0,right: 0),
                      leading: const Icon(Icons.indeterminate_check_box,size: 40,),
                      title: const Text('Your order on its way'),
                      subtitle: const Text('Will arrive in 2 days'),
                      trailing: ElevatedButton(
                        child: const Text('track'),
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                          primary: Colors.blue.shade900,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 38,),
          ListTile(
            iconColor: Colors.black,
            leading: const Icon(Icons.person, size: 38,),
            title: const Text('My Account',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            subtitle: const Text('Edit your information'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 18,),
            onTap: (){},
          ),
          ListTile(
            iconColor: Colors.black,
            leading: const Icon(Icons.shopping_cart_sharp, size: 38,),
            title: const Text('My Orders',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            subtitle: const Text('Manage your orders'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 18,),
            onTap: (){},
          ),
          ListTile(
            iconColor: Colors.black,
            leading: const Icon(Icons.credit_card, size: 38,),
            title: const Text('My Cards',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            subtitle: const Text('Manage your saved cards'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 18,),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
