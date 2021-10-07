import 'package:flutter/material.dart';

import './models/course.dart';
import './models/new.dart';
import './models/item.dart';
import './models/pharmacy.dart';
import './models/activity.dart';

const presidentImageUrl = 'https://www.cesme.bel.tr/uploads/baskan/baskan.jpg';
const presidentText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In iaculis iaculis dui eget scelerisque. Integer eu auctor lacus. Phasellus non nulla justo. Aliquam sodales erat eget consequat lacinia. Nunc convallis nisl diam, a dignissim orci luctus ut. Fusce nec ante finibus, facilisis nunc sed, euismod lacus. Donec consequat consequat eleifend. Donec condimentum euismod accumsan. Duis mattis leo leo, et posuere mi interdum sed. Proin tellus elit, facilisis ut lorem et, ultricies pharetra velit. Suspendisse commodo, ex at fringilla ultrices, massa erat tristique metus, id ornare libero mauris sit amet enim. Aenean vel convallis sapien, eget fringilla leo. Pellentesque accumsan leo vitae eros condimentum lacinia. Mauris cursus iaculis consectetur.Praesent dui ante, imperdiet a mattis at, tempus sit amet justo. Quisque nec tempus magna. Aenean vel turpis ligula. Nulla id lorem at mauris condimentum scelerisque. Mauris fringilla lorem mi, vitae lobortis elit ultricies id. Vivamus viverra porta erat, quis tempus augue laoreet eu. Cras gravida pulvinar nisl, et tincidunt purus volutpat ut. In cursus at arcu at eleifend. Mauris feugiat dolor massa, eget rhoncus odio suscipit vitae. Duis placerat accumsan eros ut efficitur. Phasellus non varius mi';

const mission_text =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam gravida at libero a posuere. Sed feugiat eros quam, sit amet ullamcorper urna vulputate eu. Ut ut ante nulla. Morbi pulvinar enim ut odio pellentesque commodo. Nulla quis tellus pulvinar, malesuada mauris eu, rhoncus purus. Vestibulum aliquam consectetur turpis scelerisque eleifend. Nunc porttitor tristique vehicula.Quisque a volutpat tortor. Maecenas id fringilla dolor. Maecenas pulvinar non metus tristique vehicula. In hac habitasse platea dictumst. Nunc felis turpis, tristique sed tincidunt vel, facilisis ut ipsum. Sed vel turpis quis urna pretium suscipit. Aenean porttitor rutrum mauris. Morbi efficitur congue odio id pretium. Nulla id dolor id dolor commodo mollis et et sapien. Ut quis est quis nunc convallis commodo. Nullam eget odio commodo turpis sodales convallis. Nulla placerat efficitur lacus, ac tristique enim porttitor in. Nunc egestas consectetur nisi, nec posuere ante commodo nec. Fusce mollis lectus non sapien laoreet accumsan. Aliquam erat volutpat.';
const vision_text =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis neque a leo semper euismod. Sed bibendum id massa a blandit. Fusce auctor sed nunc in rhoncus. Sed et neque sagittis, accumsan orci vitae, maximus quam. Pellentesque ipsum magna, blandit vel elit in, tincidunt pharetra nunc. Donec a pretium urna. Suspendisse risus magna, rutrum id elit sit amet, tincidunt ullamcorper neque.';
const homeScreenImageUrl =
    'https://www.cesme.bel.tr/uploads/photogallery/big/3_2.jpg';

const DUMMY_ACTIVITIES = [
  Activity(
      name: 'Concert',
      date: '22.10.2021',
      hour: '21.00',
      adress: 'Cecilia Chapman 711-2880 Nulla St. Mankato Mississippi 96522',
      imageUrl:
          'https://i.la-croix.com/1400x933/smart/2021/06/30/1201163994/concerts-debout-peuvent-reprendre-30-juinune-jauge-75-interieur-A-lexterieur-jauge-100_0.jpg'),
  Activity(
      name: 'Painting Exhibition',
      date: '24.10.2021',
      hour: '16.00',
      adress: 'Cecilia Chapman 711-2880 Nulla St. Mankato Mississippi 96522',
      imageUrl:
          'https://i.hurimg.com/i/hdn/75/0x0/60b88b132269a21d2c75daa4.jpeg'),
];

const DUMMY_COURSES = const [
  Course(
    courseName: 'Okçuluk Kursu',
    imageUrl:
        'https://ok-ucu.com/wp-content/uploads/2018/07/archery_web-799x445.jpg',
    date: '23.12.2021',
  ),
  Course(
    courseName: 'Gitar Kursu',
    imageUrl:
        'https://kayasanatakademi.com/wp-content/uploads/2019/09/izmir-gitar-kursu-780x470.jpeg',
    date: '02.01.2022',
  ),
  Course(
    courseName: 'Yüzme Kursu',
    imageUrl:
        'https://yuzmekursuatasehir.com/wp-content/uploads/2019/01/istanbul-anadolu-yakas%C4%B1-%C3%B6zel-y%C3%BCzme-kursu-1024x683.jpg',
    date: '23.10.2021',
  ),
];

const DUMMY_PHARMACIES = const [
  Pharmacy(
    name: 'Fatih Eczanesi',
    phone_number: '0 (232) 444 54 65',
    adress: 'Cecilia Chapman 711-2880 Nulla St. Mankato Mississippi 96522',
  ),
  Pharmacy(
    name: 'Pınar Eczanesi',
    phone_number: '0 (232) 444 54 65',
    adress: 'P.O. Box 283 8562 Fusce Rd. Frederick Nebraska 20620',
  ),
  Pharmacy(
    name: 'Yalı Eczanesi',
    phone_number: '0 (232) 444 54 65',
    adress: 'Celeste Slater 606-3727 Ullamcorper. Street Roseville NH 11523',
  ),
];

const DUMMY_HOME = const [
  Item(
    title: 'Başkan',
    icon: Icon(Icons.account_box_rounded),
    routeName: '/baskan',
  ),
  Item(
    title: 'Haberler',
    icon: Icon(Icons.new_releases),
    routeName: '/haberler',
  ),
  Item(
    title: 'Otopark',
    icon: Icon(Icons.local_parking),
    routeName: '/otopark',
  ),
  Item(
    title: 'Etkinlikler',
    icon: Icon(Icons.schedule),
    routeName: '/etkinlikler',
  ),
  Item(
    title: 'Kurslar',
    icon: Icon(Icons.audiotrack),
    routeName: '/kurslar',
  ),
  Item(
    title: 'Nöbetçi Eczaneler',
    icon: Icon(Icons.local_pharmacy),
    routeName: '/nobetcieczaneler',
  ),
];

const DUMMY_NEWS = const [
  New(
    id: 'n1',
    news_title: 'Lorem ipsum',
    news_imageUrl:
        'https://s.france24.com/media/display/d1676b6c-0770-11e9-8595-005056a964fe/w:1400/p:16x9/news_1920x1080.webp',
    news_subtitle: 'Quisque et viverra lectus',
    news_main:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et viverra lectus. Phasellus quis purus aliquam, viverra nulla non, consequat mi. Curabitur vel porta justo, quis dapibus lacus. Nullam enim nunc, sodales id posuere quis, commodo in arcu. Etiam maximus pharetra posuere. Donec sed fringilla enim. Suspendisse posuere ut ex sed condimentum. Aliquam faucibus volutpat urna ac fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean urna mi, eleifend sed vestibulum at, lobortis nec tortor. Sed venenatis massa eu suscipit pharetra. Duis viverra rutrum lacus sed laoreet. Curabitur mattis orci nec lorem imperdiet tincidunt.',
  ),
  New(
    id: 'n2',
    news_title: 'Lorem ipsum',
    news_imageUrl:
        'https://s.france24.com/media/display/d1676b6c-0770-11e9-8595-005056a964fe/w:1400/p:16x9/news_1920x1080.webp',
    news_subtitle: 'Quisque et viverra lectus',
    news_main:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et viverra lectus. Phasellus quis purus aliquam, viverra nulla non, consequat mi. Curabitur vel porta justo, quis dapibus lacus. Nullam enim nunc, sodales id posuere quis, commodo in arcu. Etiam maximus pharetra posuere. Donec sed fringilla enim. Suspendisse posuere ut ex sed condimentum. Aliquam faucibus volutpat urna ac fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean urna mi, eleifend sed vestibulum at, lobortis nec tortor. Sed venenatis massa eu suscipit pharetra. Duis viverra rutrum lacus sed laoreet. Curabitur mattis orci nec lorem imperdiet tincidunt.',
  ),
  New(
    id: 'n3',
    news_title: 'Lorem ipsum',
    news_imageUrl:
        'https://s.france24.com/media/display/d1676b6c-0770-11e9-8595-005056a964fe/w:1400/p:16x9/news_1920x1080.webp',
    news_subtitle: 'Quisque et viverra lectus',
    news_main:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et viverra lectus. Phasellus quis purus aliquam, viverra nulla non, consequat mi. Curabitur vel porta justo, quis dapibus lacus. Nullam enim nunc, sodales id posuere quis, commodo in arcu. Etiam maximus pharetra posuere. Donec sed fringilla enim. Suspendisse posuere ut ex sed condimentum. Aliquam faucibus volutpat urna ac fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean urna mi, eleifend sed vestibulum at, lobortis nec tortor. Sed venenatis massa eu suscipit pharetra. Duis viverra rutrum lacus sed laoreet. Curabitur mattis orci nec lorem imperdiet tincidunt.',
  )
];
