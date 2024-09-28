import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:share_plus/share_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const MyCardText(),
    const CardVideo(),
    const CardPhoto(),
  ];
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Text',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Image',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}

class MyCardText extends StatelessWidget {
  const MyCardText({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          cardItem(
            'Owls are birds from the order Strigiformes[1] (/ˈstrɪdʒəfɔːrmiːz/), which includes over 200 species of mostly solitary and nocturnal birds of prey typified by an upright stance, a large, broad head, binocular vision, binaural hearing, sharp talons, and feathers adapted for silent flight. Exceptions include the diurnal northern hawk-owl and the gregarious burrowing owl.Owls are divided into two families: the true (or typical) owl family, Strigidae, and the barn-owl family, Tytonidae.[2] Owls hunt mostly small mammals, insects, and other birds, although a few species specialize in hunting fish. They are found in all regions of the Earth except the polar ice caps and some remote islands.',
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: const Center(
                child: Text(
                    'Owls are birds from the order Strigiformes[1] (/ˈstrɪdʒəfɔːrmiːz/), which includes over 200 species of mostly solitary and nocturnal birds of prey typified by an upright stance, a large, broad head, binocular vision, binaural hearing, sharp talons, and feathers adapted for silent flight. Exceptions include the diurnal northern hawk-owl and the gregarious burrowing owl.Owls are divided into two families: the true (or typical) owl family, Strigidae, and the barn-owl family, Tytonidae.[2] Owls hunt mostly small mammals, insects, and other birds, although a few species specialize in hunting fish. They are found in all regions of the Earth except the polar ice caps and some remote islands.'),
              ),
            ),
          ),
          cardItem(
            'A deer (pl.: deer) or true deer is a hoofed ruminant ungulate of the family Cervidae (informally the deer family). Cervidae is divided into subfamilies Cervinae (which includes, among others, muntjac, elk (wapiti), red deer, and fallow deer) and Capreolinae (which includes, among others reindeer (caribou), white-tailed deer, roe deer, and moose). Male deer of almost all species (except the water deer), as well as female reindeer, grow and shed new antlers each year. These antlers are bony extensions of the skull and are often used for combat between males.',
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: const Center(
                child: Text(
                    'Owls are birds from the order Strigiformes[1] (/ˈstrɪdʒəfɔːrmiːz/), which includes over 200 species of mostly solitary and nocturnal birds of prey typified by an upright stance, a large, broad head, binocular vision, binaural hearing, sharp talons, and feathers adapted for silent flight. Exceptions include the diurnal northern hawk-owl and the gregarious burrowing owl.Owls are divided into two families: the true (or typical) owl family, Strigidae, and the barn-owl family, Tytonidae.[2] Owls hunt mostly small mammals, insects, and other birds, although a few species specialize in hunting fish. They are found in all regions of the Earth except the polar ice caps and some remote islands.'),
              ),
            ),
          ),
          cardItem(
            'A deer (pl.: deer) or true deer is a hoofed ruminant ungulate of the family Cervidae (informally the deer family). Cervidae is divided into subfamilies Cervinae (which includes, among others, muntjac, elk (wapiti), red deer, and fallow deer) and Capreolinae (which includes, among others reindeer (caribou), white-tailed deer, roe deer, and moose). Male deer of almost all species (except the water deer), as well as female reindeer, grow and shed new antlers each year. These antlers are bony extensions of the skull and are often used for combat between males.',
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: const Center(
                child: Text(
                    'Owls are birds from the order Strigiformes[1] (/ˈstrɪdʒəfɔːrmiːz/), which includes over 200 species of mostly solitary and nocturnal birds of prey typified by an upright stance, a large, broad head, binocular vision, binaural hearing, sharp talons, and feathers adapted for silent flight. Exceptions include the diurnal northern hawk-owl and the gregarious burrowing owl.Owls are divided into two families: the true (or typical) owl family, Strigidae, and the barn-owl family, Tytonidae.[2] Owls hunt mostly small mammals, insects, and other birds, although a few species specialize in hunting fish. They are found in all regions of the Earth except the polar ice caps and some remote islands.'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardPhoto extends StatelessWidget {
  const CardPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          cardItem(
            'hello',
            const Image(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
          ),
          cardItem(
            'hello',
            const Image(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
          ),
          cardItem(
            'hello',
            const Image(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

class CardVideo extends StatefulWidget {
  const CardVideo({super.key});

  @override
  State<CardVideo> createState() => _CardVideoState();
}

class _CardVideoState extends State<CardVideo> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          cardItem(
            'An Owl Image',
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          ),
          cardItem(
            'An Owl Image',
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          ),
          cardItem(
            'An Owl Image',
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          ),
        ],
      ),
    );
  }
}

cardItem(String title, Widget content) {
  return Card(
    color: Colors.white70,
    elevation: 1.5,
    child: Column(
      children: [
        content,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.thumb_up),
            ),
            IconButton(
              onPressed: () async {
                await Share.share(title);
              },
              icon: const Icon(Icons.share),
            ),
            IconButton(
              // onPressed: () async {
              //   final result = await Share.shareXFiles([
              //     XFile(
              //         '${'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'}/image.jpg')
              //   ], text: 'Great picture');
              //
              //   if (result.status == ShareResultStatus.success) {
              //     print('Thank you for sharing the picture!');
              //   }
              // },
              onPressed: () {},
              icon: const Icon(Icons.send),
            ),
          ],
        )
      ],
    ),
  );
}
