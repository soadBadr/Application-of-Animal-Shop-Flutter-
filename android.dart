import 'package:flutter/material.dart';
import 'package:project_app/project_final/detials.dart';

class Gallery extends StatelessWidget
{
  List data =[
    {
      'title': 'Siamese cat' ,
      'icon' : NetworkImage('https://www.alroeya.com/uploads/images/2020/12/21/1024843.jpg'),
      'Mess': 'The Siamese cat species is a common species since the 19th century, '
          'this species originated from cats in Thailand (formerly known as Siam),'
          ' and Siamese helped create many other breeds including Oriental Shorthair,'
          ' Sphynx and Himalayan There are two types of Siamese cats, one with an "apple" head and a full body,'
          ' the other with a large head and a skinny body',
      'price': 500 ,
    } ,
    {
      'title': 'Shiraz cat' ,
      'icon' : NetworkImage('https://www.alroeya.com/uploads/images/2020/12/21/1024842.jpg'),
      'Mess': 'The Shiraz cat has a long, beautiful-looking fur,'
          ' and is not required to be a single cooler, '
          'it can come in any of the famous cat colors, '
          'and has a flat face when compared to most other cat breeds. Persian or Shiraz cat fur requires regular cleaning;'
          ' otherwise it will be prone to diseases, especially kidney and heart disease,'
          ' and the growth of fleas and insects within it.',
      'price': 1000 ,
    } ,
    {
      'title': 'Cat of Mine' ,
      'icon' : NetworkImage('https://www.alroeya.com/uploads/images/2020/12/21/1024840.jpg'),
      'Mess': 'Known for its large strength and thick fur, Maine Coon is a cat that is hard to ignore'
          ', it is a great hunter and rumored after CFA recognized it as an authentic breed in the late 1970s, '
          'still one of the most popular cat breeds',
      'price': 1500 ,
    } ,
    {
      'title': 'Ragdoll Cat' ,
      'icon' : NetworkImage('https://www.alroeya.com/uploads/images/2020/12/21/1024849.jpg'),
      'Mess': 'Ragdoll looks like long-haired Siamese cats with pointy cooler patterns'
          ', it also has distinctive blue eyes and dog-like characters, tracking owners around the house',
      'price': 2000 ,
    } ,
    {
      'title': 'Bengal Cat ' ,
      'icon' :NetworkImage('https://www.alroeya.com/uploads/images/2020/12/21/1024846.jpg'),
      'Mess': 'Bengal cats are literally wild-looking cats'
          ', their marks make them look more like they belong to the forest than your home'
          ', but they are nevertheless domesticated cats, they are talkative and require a lot of exercise',
      'price': 750 ,
    } ,
    {
      'title': 'Cat Sphinx ' ,
      'icon' : NetworkImage('https://www.alroeya.com/uploads/images/2020/12/21/1024847.jpg'),
      'Mess': 'This cat is the only one of its kind among other cat breeds, '
          'as it lacks fur and features curly skin, yet it is a very active and dog-like social breed',
      'price': 800 ,
    } ,
    {
      'title': 'Siberian Husky ' ,
      'icon' : NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Siberian-husky-1291343_1920.jpg/800px-Siberian-husky-1291343_1920.jpg'),
      'Mess': 'is a species of dog native to America and Russia',
      'price': 900 ,
    } ,
    {
      'title': 'Harrier' ,
      'icon' : NetworkImage('https://upload.wikimedia.org/wikipedia/commons/c/cc/Harrier_tricolour.jpg'),
      'Mess': 'is a species of dog native to the United Kingdom',
      'price': 950 ,
    } ,
    {
      'title': 'Dalmatian' ,
      'icon' : NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/BIR_Grupp-_6_DALMATINER%2C_Mellanm%C3%B6llan_Honey_Pie_%2824234227655%29.jpg/1024px-BIR_Grupp-_6_DALMATINER%2C_Mellanm%C3%B6llan_Honey_Pie_%2824234227655%29.jpg'),
      'Mess': 'is a species of dog native to Croatia',
      'price': 2500,
    } ,
    {
      'title': 'Maltese dog ' ,
      'icon' : NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/01_AKC_Maltese_Dog_Show_2013.jpg/800px-01_AKC_Maltese_Dog_Show_2013.jpg'),
      'Mess': 'is a species of dog native to Malta',
      'price': 1750,
    } ,
    {
      'title': 'Chow Chow Dog ' ,
      'icon' : NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/01_Chow_Chow.jpg/800px-01_Chow_Chow.jpg'),
      'Mess': 'is a species of dog native to China',
      'price': 956 ,
    } ,
    {
      'title': 'Volpino Italiano ' ,
      'icon' : NetworkImage('https://upload.wikimedia.org/wikipedia/commons/b/b7/Volpino04.jpg'),
      'Mess': 'is a species of dog native to Italy.',
      'price': 850 ,
    } ,
    {
      'title': 'sea turtle' ,
      'icon' : NetworkImage('https://modo3.com/thumbs/fit630x300/195242/1523967345/%D8%A3%D9%86%D9%88%D8%A7%D8%B9_%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D8%AD%D9%81_%D8%A7%D9%84%D9%85%D9%88%D8%AC%D9%88%D8%AF%D8%A9_%D9%81%D9%8A_%D8%A7%D9%84%D8%A8%D8%AD%D8%A7%D8%B1_%D9%88%D8%A7%D9%84%D9%85%D8%AD%D9%8A%D8%B7%D8%A7%D8%AA.jpg'),
      'Mess': 'Sea turtles have similar limbs to paddles and cannot enter their head inside their armour',
      'price': 1750 ,
    } ,
    {
      'title': 'The green turtle ' ,
      'icon' : NetworkImage('https://alwafd.news/images/thumbs/828/news/5befe44139297d3c6e1f9ecbbd513f4a.jpg'),
      'Mess': 'is widespread in the Mediterranean Sea and is about a meter long, and this species is threatened with extinction because it is a species whose flesh can be eaten.',
      'price': 1200,
    } ,
    {
      'title': 'Wild turtles ' ,
      'icon' : NetworkImage('https://www.elbalad.news/UploadCache/libfiles/756/2/600x338o/965.jpg'),
      'Mess': 'possess arched shield and have their own head with diriyah sheets',
      'price': 1250,
    } ,
    {
      'title': 'Parrot  ' ,
      'icon' : NetworkImage('https://read.opensooq.com/wp-content/uploads/2022/03/%D8%A7%D9%84%D8%A8%D8%A8%D8%BA%D8%A7%D8%A1-1024x576.webp'),
      'Mess': 'is a bird known for its bright colors ranging from green, red, blue and yellow, known as imitation of some sounds.',
      'price': 1450 ,
    } ,
    {
      'title': 'Canary  ' ,
      'icon' : NetworkImage('https://read.opensooq.com/wp-content/uploads/2022/03/%D8%A7%D9%84%D9%83%D9%86%D8%A7%D8%B1%D9%8A-1024x576.webp'),
      'Mess': 'is ranked third in the list of the best pet birds, it reacts excellent in case the cage is placed in the living room, the home canary is a chewed type of Atlantic canary, and the native home of this bird is the Macaronsia Islands',
      'price': 1550 ,
    } ,
    {
      'title': 'Cocktail bird  ' ,
      'icon' : NetworkImage('https://read.opensooq.com/wp-content/uploads/2022/03/%D8%A7%D9%84%D9%83%D9%88%D9%83%D8%AA%D9%8A%D9%84-1024x576.webp'),
      'Mess': 'From the parakeet family the cocktail bird has a grey body, a bright yellow face with an orange mole, so that in males these colors are more vibrant than females',
      'price': 1000 ,
    } ,
    {
      'title': 'Zebra ornamental birds  ' ,
      'icon' : NetworkImage('https://read.opensooq.com/wp-content/uploads/2022/03/%D8%B9%D8%B5%D8%A7%D9%81%D9%8A%D8%B1-%D8%A7%D9%84%D8%B2%D9%8A%D9%86%D8%A9-%D8%A7%D9%84%D8%B2%D9%8A%D8%A8%D8%B1%D8%A7-1024x576.webp'),
      'Mess': 'The Month of Birds in the Wax Beak Family in Central Australia',
      'price': 3000,
    } ,
    {
      'title': 'Love Birds ' ,
      'icon' : NetworkImage('https://read.opensooq.com/wp-content/uploads/2022/03/%D8%B9%D8%B5%D8%A7%D9%81%D9%8A%D8%B1-%D8%A7%D9%84%D8%AD%D8%A8-1024x576.webp'),
      'Mess': 'Love birds Fisher calls love birds Fisher relative to its German discovery Gustav Fisher',
      'price': 3500,
    } ,
    {
      'title': 'Capuchi monkey ' ,
      'icon' : NetworkImage('https://www.almrsal.com/wp-content/uploads/2017/07/%D9%82%D8%B1%D8%AF-%D8%A7%D9%84%D9%83%D8%A7%D8%A8%D9%88%D8%B4%D9%8A.jpg'),
      'Mess': 'It is one of the most intelligent monkeys in the new world, so scientists use it in scientific experiments. Spread in northern Argentina',
      'price': 3750,
    } ,
    {
      'title': 'Squirrel monkeys  ' ,
      'icon' : NetworkImage('https://www.almrsal.com/wp-content/uploads/2017/07/%D8%A7%D9%84%D9%82%D8%B1%D8%AF-%D8%A7%D9%84%D8%B3%D9%86%D8%AC%D8%A7%D8%A8%D9%8A.jpg'),
      'Mess': 'are very similar to squirrel animals, living on the continent of South America, feeding on insects, fruits, branches and tree leaves and are very fast',
      'price': 4000 ,
    } ,
    {
      'title': 'Japanese macaque monkeys  ' ,
      'icon' : NetworkImage('https://www.almrsal.com/wp-content/uploads/2017/07/%D9%82%D8%B1%D8%AF-%D8%A7%D9%84%D9%85%D8%A7%D9%83-%D8%A7%D9%84%D9%8A%D8%A7%D8%A8%D8%A7%D9%86%D9%8A.jpg'),
      'Mess': 'are the most adaptable monkeys to extreme climate changes',
      'price': 3000 ,
    } ,

  ] ;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for(int i =0 ; i<data.length ; i++)
            Card(
              color: Colors.grey[200],
              child: Container(
                width: double.infinity ,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=> Mess(data[i]))) ;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Hero(
                              tag: data[i]['title'],
                              child: CircleAvatar(
                                backgroundImage:  data[i]['icon'],
                                radius: 30,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[i]['title'],
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold ,

                                    ),
                                  ),
                                  Text(
                                    data[i]['Mess'],
                                    maxLines: 2 ,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ) ,
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
