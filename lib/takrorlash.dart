import 'package:flutter/material.dart';

const String book =
    """Bir bor ekan, bir yo‘q ekan, uch opa-singil daryolar bo‘lgan ekan. Kattasining ismi Amudaryo, o‘rtanchasiniki Sirdaryo va kenjasining ismi Zarafshon ekan. Amudaryo kattasi bo‘lgani uchun Tojikistonning Panj viloyatidan Orol dengizigacha bo‘lgan masofada yumushlarni bajarar, hammaga shirindan shakar zilol suvini ulashar ekan. Amudaryoni barcha dov-daraxtlar, giyohlar va ekin-tikinlar yaxshi ko‘rar ekan. U Qoraqum va Qizilqum cho‘llarini ikkiga ajratib turarkan. O‘zbekiston orqali turkman eliga o‘tib, suv tashir, qaytib kelib, Orol dengiziga quyilarkan. Uning shahdu shiddati juda mo‘l, ko‘plab ishlarni yolg‘iz o‘zi bajarar ekan.

Sirdaryo ham go‘zallikda opasi Amudaryodan qolishmas ekan. Uning qaddi raso, yuzlari tiniq, sochlari Amudaryoday shovullab turarkan. Sirdaryo, Norin va Qoradaryo kabi daryolarning birlashishidan hosil bo‘lib, bu sirni hammadan sir tutib yasharkan. Chaqqonlikda opasi Amudaryoga teng kelolmasa ham, harakatdan to‘xtamas ekan. Ancha-muncha yumushlarda opasiga yordamchi ekan.

Kenjaoy Zarafshon esa jajji bo‘lgani uchun har bir qilig‘i o‘ziga yarashar ekan. Uch opa-singil juda ahil, inoq, halol mehnat qilib kun kechirisharkan. Biri daraxtlarga suv quysa, ikkinchisi tuproqni yashnatar ekan. Uchinchisi esa havoning namligini bir maromda ushlashga hissa qo‘sharkan. Ayniqsa, opalari Amudaryo „Yaxshilik qil-u, suvga ot, suv bilmasa baliq bilur, baliq bilmasa Xoliq bilur“, degan maqolni tez-tez takrorlar ekan. Bu naql Sirdaryo va Zarafshonning quloqlariga tilla zirakday taqilibdi.

Opa-singil daryolarning bag‘ri kengligidan suvosti dunyosining o‘simlig-u jonivorlari xotirjam maktabga, ishga qatnar ekan.

Uch opa-singil jahl, g‘azab nimaligini bilmas, shuning uchun atrofdagilar bir-birini ularning ismi bilan duo qilgani qilgan ekan:

– Shahding, qudrating Amudaryoday bo‘lsin, Sirdaryoday uyingga baraka kirsin, Zarafshonday shonli, shavkatli bo‘lgin!

O‘zlariga qiyosan qilingan duolar opa-singil daryolarga juda ham yoqarkan. Ular shu bois ham o‘z ahdlaridan qaytmay, zavqlanib naf keltirishda davom etishibdi. Olis-olislarda o‘z qavmdoshlari o‘zanidan toshib, haddidan oshib, toshqinlarga sababchi bo‘lib odamlarning, tabiatning umriga zomin bo‘lishganini eshitishsa, qattiq xafa bo‘lisharkan.

Uch opa-singil ko‘nglining ochiqligi, saxiyligi, yaxshilikdan tolmasligi, g‘azab va qahrdan yiroqligi bois kundan kunga yasharib, umri uzayaveribdi. Ular bilan do‘st bo‘lib yashayotgan odamlar esa hali ham farzandlariga Amudaryo, Sirdaryo, Zarafshon degan ismlarni qo‘yib, daryolarni farzandlariga qo‘shib suyarkanlar. Amudaryo, Sirdaryo, Zarafshon esa toza qalbini ona zaminga qo‘yib, olis-olis masofalarga oqishdan tolmay elga xizmatda ekan. """;
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

/// takrorlash

/// #T 4

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController controller;
  int selectIndex = 0;
  int lastPage = 0;
  final buttons = [
    "1. Car",
    "2. Exterior",
    "3. Interior",
    "4. AutoPilot",
  ];

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  void onTapTap(int i) {
    if (i <= lastPage) {
      selectIndex = i;
      setState(() {});
      controller.jumpToPage(i);
    }
  }
  void onPressed (int i){
  selectIndex = i;
  lastPage = lastPage < i ? i : lastPage;
  setState(() {});
  controller.jumpToPage(selectIndex);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < buttons.length; i++)
                 TapBarButton(
                     lastPage: lastPage,
                     sellectIndex: selectIndex,
                     i: i,
                     text: buttons[i],
                 ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          /// 0
          Pages(
            onPressed: () => onPressed(1),
              color: Colors.yellowAccent,
              text: buttons[0],
          ),
          /// 1
          Pages(
            onPressed: () => onPressed(2),
            color: Colors.tealAccent,
            text: buttons[1],
          ),
          /// 2
          Pages(
          onPressed: () => onPressed(3),
    color: Colors.tealAccent,
    text: buttons[2],
    ),
          /// 3
         Pages(
           onPressed: (){
             ScaffoldMessenger.of(context)
                 .showSnackBar(const SnackBar(content: Text("Tamom")));
           },
             color: Colors.blueGrey,
             text: buttons[3],
         ),
        ],
      ),
    );
  }
}

class TapBarButton extends StatelessWidget {
  final void Function()? onPressed;
  final int lastPage;
  final int sellectIndex;
  final int i;
  final String text;
  const TapBarButton({Key? key, this.onPressed, required this.lastPage, required this.sellectIndex, required this.i, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Text(
            text,
            style: (i <= lastPage)
                ? const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            )
                : const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 2,
            width: text.length * 7,
            color: (sellectIndex == i)
                ? Colors.red
                : Colors.transparent,
          )
        ],
      ),
    );
  }
}



class Pages extends StatefulWidget {
  final void Function()? onPressed;
  final Color color;
  final String text;
  const Pages({Key? key, this.onPressed, required this.color, required this.text}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      color: widget.color,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: Text(widget.text),
      ),
    );
  }
}
*/

/// #T 3

/*
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController controller;
  int selectIndex = 0;
  int lastPage = 0;
  final buttons = [
    "1. Car",
    "2. Exterior",
    "3. Interior",
    "4. AutoPilot",
  ];

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery
              .sizeOf(context)
              .width, 60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for(int i = 0; i < buttons.length; i++)
                  GestureDetector(
                    onTap: () {
                      if (i <= lastPage) {
                        selectIndex = i;
                        setState(() {});
                        controller.jumpToPage(i);
                      }
                    },
                    child: Column(
                      children: [
                        Text(buttons[i],
                          style: (lastPage >= i) ? const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ) : const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          height: 2,
                          width: buttons[i].length * 7,
                          color: (selectIndex == i) ? Colors.red : Colors.transparent,
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          /// 0
          Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            child: ElevatedButton(
              onPressed: (){
                selectIndex = 1;
                lastPage < 1 ? 1 : lastPage;
                setState(() {});
                controller.jumpToPage(1);
              },
              child: Text(buttons[0]),
            ),
          ),
          /// 1
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: ElevatedButton(
              onPressed: (){
                selectIndex = 2;
                lastPage < 2 ? 2 : lastPage;
                setState(() {});
                controller.jumpToPage(2);
              },
              child: Text(buttons[1]),
            ),
          ),
          /// 2
          Container(
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: ElevatedButton(
              onPressed: (){
                selectIndex = 3;
                lastPage < 3 ? 3 : lastPage;
                setState(() {});
                controller.jumpToPage(3);
              },
              child: Text(buttons[2]),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.blueGrey,
            child: ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tamom")));
              },
              child: Text(buttons[3]),
            ),
          ),
        ],
      ),
    );
  }
}
*/

/// #T 2

/*
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController controller;
  int selectIndex = 0;
  int lastPage = 0;
  final buttons = [
    "1. Car",
    "2. Exterior",
    "3. Interior",
    "4. AutoPilot",
  ];

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery
              .sizeOf(context)
              .width, 60),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for(int i = 0; i < buttons.length; i++)
                  GestureDetector(
                    onTap: () {
                      if (i <= lastPage) {
                        selectIndex = i;
                        setState(() {});
                        controller.jumpToPage(i);
                      }
                    },
                    child: Column(
                      children: [
                        Text(buttons[i],
                          style: (lastPage >= i) ? const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ) : const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          height: 2,
                          width: buttons[i].length * 7,
                          color: (selectIndex == i) ? Colors.red : Colors.transparent,
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          /// 0
          Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            child: ElevatedButton(
              onPressed: (){
                selectIndex = 1;
                lastPage = 1;
                setState(() {});
                controller.jumpToPage(1);
              },
              child: Text(buttons[0]),
            ),
          ),
           /// 1
           Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: ElevatedButton(
              onPressed: (){
                selectIndex = 2;
                lastPage = 2;
                setState(() {});
                controller.jumpToPage(2);
              },
              child: Text(buttons[1]),
            ),
          ),
           /// 2
           Container(
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: ElevatedButton(
              onPressed: (){
                selectIndex = 3;
                lastPage = 3;
                setState(() {});
                controller.jumpToPage(3);
              },
              child: Text(buttons[2]),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.blueGrey,
            child: ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tamom")));
              },
              child: Text(buttons[3]),
            ),
          ),
        ],
      ),
    );
  }
}
*/

/// #T 1
/*
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double p = 20.0;
  final double s = 14.0;
  /// 14x = w - 40 => x = (w - 40) / 14;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(p),
        child: SingleChildScrollView(

          child: Column(
            children: [
              /// header
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 3 * s,
                    height: 3.5 * s,
                    child: Text(
                      /// aytyaptiki book ning 1 - harfi
                      /// har doim 4 * s katta bulsin.
                      book.substring(0,1),
                      style: TextStyle(
                        fontSize: 4 * s,
                        height:  1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                      child: Text(
                        book.substring(1, 6 * (w - 2 * p - 3 * s) ~/ s),
                        style: TextStyle(
                          fontSize: s,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                  ),
                ],
              ),
              Text(book.substring(6 * (w - 2 * p - 3 * s / 2) ~/ s),
                style:  TextStyle(fontSize: s),
                softWrap: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/

/*
void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

*/

/// takrorlash

/// TabBarga cpments

/*
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin{
  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          /// TabBar tagidagi chiziqni rangini belgilaydi
          dividerColor: Colors.red,
          /// elementlarni boshishdan oldingi rangni belgilaydi
          unselectedLabelColor: Colors.orange,
          controller: controller,
          tabs: const [
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.search),),
            Tab(icon: Icon(Icons.book),),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Container(color: Colors.orange,),
          Container(color: Colors.grey,),
          Container(color: Colors.blue,),
        ],
      ),
    );
  }
}

*/

/// boshga yozgan coments

/*
class MyTapBar extends StatefulWidget {
  const MyTapBar({Key? key}) : super(key: key);

  @override
  State<MyTapBar> createState() => _MyTapBarState();
}

class _MyTapBarState extends State<MyTapBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      /// length - tab lar sonini belgilaydi.
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(

            /// bosganda orqa fondagi colorni belgilaydi
            overlayColor: MaterialStateProperty.all(Colors.red),

            /// isScrollable - tabs lar scrollable bo'lishini belgilaydi.
            isScrollable: false,

            /// indicatorColor - indikator (tablarni tagidagi chiziq) ni rangini
            /// belgilaydi.
            indicatorColor: Colors.red,

            /// IndicatorColor o'zi rangini to'g'irlashini belgilaydi.
            automaticIndicatorColorAdjustment: true,

            /// indicatorWeight - indikator (tablarni tagidagi chiziq) ni
            /// qalinligini belgilaydi.
            indicatorWeight: 2,

            /// indicatorPadding - indikator (tablarni tagidagi chiziq) ni
            /// padding qilib beradi.
            indicatorPadding:
            const EdgeInsets.only(top: 62, left: 62, right: 62),

            /// indicator - indikator (tablarni tagidagi chiziq) ni decorate
            /// qilish uchun ishlatiladi.
            indicator: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),

            /// indicatorSize - indikator (tablarni tagidagi chiziq) ni size ni
            /// belgilaydi.
            indicatorSize: TabBarIndicatorSize.tab,

            /// dividerColor - tab bar va page ni orasini ajratib turuvchi
            /// divider (chegarani) ni rangini belgilaydi.
            dividerColor: Colors.red,

            /// labelColor - tabs ni element larini rangini belgilaydi.
            labelColor: Colors.red,

            /// labelStyle - tabs ni text ni style ni belgilaydi.
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),

            /// labelPadding - tabs ni element larini padding qilib beradi.
            labelPadding: const EdgeInsets.only(bottom: 0),

            /// unselectedLabelColor - tabs ni element larini ichidagi
            /// tanlanmagan label ni rangini belgilaydi.
            unselectedLabelColor: Colors.black,

            /// unselectedLabelStyle - tabs ni element larini ichida tanlanmagan
            /// text larni style ni belgilaydi.
            unselectedLabelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),

            /// dragStartBehavior - ???
            dragStartBehavior: DragStartBehavior.start,

            /// overlayColor - tabs ni bosilganda orqa fondagi splash rangini
            /// belgilaydi.
            overlayColor: const MaterialStatePropertyAll(Colors.orange),

            /// mouseCursor - sichqonchani holatini belgilaydi.
            mouseCursor: SystemMouseCursors.none,

            /// enableFeedback - bosilganda ovoz chiqishini belgilaydi.
            enableFeedback: true,

            /// onTap - bosilganda bajariladigon void type li int qabul
            /// qiladigon funksiya.
            onTap: (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("TAPPED!!!!"),
                  backgroundColor: Colors.red,
                ),
              );
            },

            /// splashFactory - tabs ni element larini splash larini belgilaydi.
            splashFactory: InkSplash.splashFactory,

            /// splashBorderRadius - tabs ni element larini splash larini
            /// radiusini belgilaydi.
            splashBorderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),

            /// tabs - tab lar ni saqlaydi.
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Profile",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          /// viewportFraction - ???
          viewportFraction: 1.0,

          /// children - o'ziga widgetlar qabul qiladi.
          children: [
            Home(),
            Search(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
*/

/// #T 8
/*
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin{
  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.search),),
            Tab(icon: Icon(Icons.book),),
          ],
        ),
      ),
      bottomNavigationBar:  TabBar(
        ///indicatorColor pasti chiziq rangi
        indicatorColor: Colors.black,
       /// labelColor => element color,
        labelColor: Colors.red,
        controller: controller,
        tabs:  const [
          Tab(icon: Icon(Icons.home),),
          Tab(icon: Icon(Icons.search),),
          Tab(icon: Icon(Icons.book),),
        ],
      ),
      body: TabBarView(
        controller: controller,
        children: [
          const PageOne(),
          Container(color: Colors.grey,),
          Container(color: Colors.blue,),
        ],
      ),
    );
  }
}

/// shirinkWrab => bu ichida gi elementni urab oladi icma ich bulgan listViweda foydalidr
class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Colors.primaries.length,
        itemBuilder: (context,index){
          return ListView(
            primary: false,
            shrinkWrap: true,
            children: [
              Container(height: 200,color: Colors.yellowAccent,),
              Container(height: 200,color: Colors.black,),
              Container(height: 200,color: Colors.yellowAccent,),
              Container(height: 200,color: Colors.black,),
              Container(height: 200,color: Colors.yellowAccent,),
              Container(height: 200,color: Colors.black,),
            ],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
*/

/// #T 7

/*
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = PageController(initialPage: 0);
  int index = 0;
  void  navigationPage(int page){
    controller.jumpToPage(page);
    onChangePage(page);
  }
  void  onChangePage(int page){
    index = page;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: navigationPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
        ],
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        allowImplicitScrolling: false,
        onPageChanged: onChangePage,
        padEnds: true,
        pageSnapping: true,
        reverse: false,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const PageOne(),
          Container(color: Colors.grey,),
          Container(color: Colors.blue,),
        ],
      ),
    );
  }
}

/// shirinkWrab => bu ichida gi elementni urab oladi icma ich bulgan listViweda foydalidr
class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Colors.primaries.length,
        itemBuilder: (context,index){
          return ListView(
            primary: false,
            shrinkWrap: true,
            children: [
              Container(height: 200,color: Colors.yellowAccent,),
               Container(height: 200,color: Colors.black,),
               Container(height: 200,color: Colors.yellowAccent,),
              Container(height: 200,color: Colors.black,),
              Container(height: 200,color: Colors.yellowAccent,),
              Container(height: 200,color: Colors.black,),
            ],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
*/

/// #T 6

/// sellected and keep selected
/*
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = PageController(initialPage: 0);
  int index = 0;
  void  navigationPage(int page){
    controller.jumpToPage(page);
    onChangePage(page);
  }
  void  onChangePage(int page){
    index = page;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: navigationPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
        ],
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        allowImplicitScrolling: false,
        onPageChanged: onChangePage,
        padEnds: true,
        pageSnapping: true,
        reverse: false,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const PageOne(),
          Container(color: Colors.grey,),
          Container(color: Colors.blue,),
        ],
      ),
    );
  }
}

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> with AutomaticKeepAliveClientMixin{
  List <bool> userCheck = [for(int i = 0; i < Colors.primaries.length;i++)false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Colors.primaries.length,
        itemBuilder: (context,index){
          bool check = false;
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: ListTile(
                leading: Icon(Icons.account_circle,
                  color: Colors.primaries[index],
                  size: 40,
                ),
                title: Text("User ${index + 1}"),
                subtitle: Text("Id: ${Colors.primaries[index].value}"),
                trailing: Checkbox(
                  value: userCheck[index],
                  onChanged: (value){
                    userCheck[index] =! userCheck[index];
                    setState(() {});
                  },
                )
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
*/

/// #T 5

/*
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = PageController(initialPage: 0);
  int index = 0;
  void  navigationPage(int page){
    controller.jumpToPage(page);
    onChangePage(page);
  }
  void  onChangePage(int page){
    index = page;
    controller.jumpToPage(page);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (page){
          index = page;
          controller.jumpToPage(page);
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
        ],
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        padEnds: true,
        children: [
          const PageOne(),
          Container(color: Colors.grey,),
          Container(color: Colors.blue,),
        ],
      ),
    );
  }
}

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  List <bool> userCheck = [for(int i = 0; i < Colors.primaries.length;i++)false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Colors.primaries.length,
        itemBuilder: (_,index){
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: ListTile(
                leading: Icon(Icons.account_circle,
                  color: Colors.primaries[index],
                  size: 40,
                ),
                title: Text("User ${index + 1}"),
                subtitle: Text("Id: ${Colors.primaries[index].value}"),
                trailing: Checkbox(
                  value: userCheck[index],
                  onChanged: (value){
                    userCheck[index] != userCheck[index];
                    setState(() {});
                  },
                )
            ),
          );
        },
      ),
    );
  }
}

class ItemWidgets extends StatefulWidget {
  final int index;
  const ItemWidgets({Key? key, required this.index}) : super(key: key);

  @override
  State<ItemWidgets> createState() => _ItemWidgetsState();
}

class _ItemWidgetsState extends State<ItemWidgets> with AutomaticKeepAliveClientMixin {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: ListTile(
          leading: Icon(Icons.account_circle,
            color: Colors.primaries[widget.index],
            size: 40,
          ),
          title: Text("User ${widget.index + 1}"),
          subtitle: Text("Id: ${Colors.primaries[widget.index].value}"),
          trailing: Checkbox(
            value: check,
            onChanged: (value){
             check != check;
              setState(() {});
            },
          )
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
*/

/// #T 4

/*
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = PageController(initialPage: 0);
  int index = 0;
  void  navigationPage(int page){
    controller.jumpToPage(page);
    onChangePage(page);
  }
  void  onChangePage(int page){
    index = page;
    controller.jumpToPage(page);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (page){
          index = page;
          controller.jumpToPage(page);
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
        ],
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        padEnds: true,
        children: [
          const PageOne(),
          Container(color: Colors.grey,),
          Container(color: Colors.blue,),
        ],
      ),
    );
  }
}

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with AutomaticKeepAliveClientMixin{
  List <bool> userCheck = [for(int i = 0; i < Colors.primaries.length;i++)false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Colors.primaries.length,
        itemBuilder: (_,index){
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: ListTile(
              leading: Icon(Icons.account_circle,
                color: Colors.primaries[index],
                size: 40,
              ),
              title: Text("User ${index + 1}"),
              subtitle: Text("Id: ${Colors.primaries[index].value}"),
              trailing: Checkbox(
                value: userCheck[index],
                onChanged: (value){
                  userCheck[index] != userCheck[index];
                 setState(() {});
                },
              )
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

*/

/// #T 3

/*
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = PageController(initialPage: 0);
  int index = 0;
  void  navigationPage(int page){
    controller.jumpToPage(page);
    onChangePage(page);
  }
  void  onChangePage(int page){
    index = page;
    controller.jumpToPage(page);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (page){
          index = page;
          controller.jumpToPage(page);
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
        ],
      ),
      body: PageView(
        controller: controller,
          scrollDirection: Axis.horizontal,
          padEnds: true,
        children: [
          const PageOne(),
          Container(color: Colors.grey,),
          Container(color: Colors.blue,),
        ],
      ),
    );
  }
}

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: Colors.primaries.length,
          itemBuilder: (_,index){
            return Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: ListTile(
                leading: Icon(Icons.account_circle,
                color: Colors.primaries[index],
                  size: 40,
                ),
                title: Text("User ${index + 1}"),
                subtitle: Text("Id: ${Colors.primaries[index].value}"),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            );
          },
      ),
    );
  }
}

*/

/// #T 2
/*
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(initialPage: 0,);
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700,
        ),
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          reverse: false,
          pageSnapping: true,
          //allowImplicitScrolling: false,
          //padEnds: true,
          onPageChanged: (page){
            index = page;
            setState(() {});
          },
          children: [
            Container(color: Colors.red,),
             Container(color: Colors.blue,),
             Container(color: Colors.yellow,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (page){
          index = page;
          controller.jumpToPage(page);
         setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
        ],
      ),
    );
  }
}
*/

/// #T 1

/*
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(initialPage: 1,viewportFraction: 0.76);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        reverse: false,
        pageSnapping: true,
        allowImplicitScrolling: false,
        scrollBehavior: const MaterialScrollBehavior(),
        children: [
         Container(
           color: Colors.blueGrey,
           child: Text("Text",style: TextStyle(fontSize: 30),),
         ),
          Container(color: Colors.red,),
           Container(color: Colors.grey,),
           Container(color: Colors.yellow,),

        ],
      ),
    );
  }
}
*/

/*
class ListViweLearn extends StatelessWidget {
  const ListViweLearn({Key? key}) : super(key: key);
 static int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (page){
          index = page;

        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: "Bookmark"),

        ],
      ),
      body: ListView.builder(
        itemBuilder: (_,i) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: ListTile(
              leading: Icon(Icons.account_circle,color: Colors.primaries[i],),
              title: Text("User${i + 1}"),
              subtitle: Text("Id: ${Colors.primaries[i].value}"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          );
        },

      ),
    );
  }
}

class LearnPageView extends StatefulWidget {
  const LearnPageView({Key? key}) : super(key: key);

  @override
  State<LearnPageView> createState() => _LearnPageViewState();
}

class _LearnPageViewState extends State<LearnPageView> {
  int index = 0;
  final controller = PageController(initialPage: 0,);
  ///initialPage: 1 => qaysi pagedan poshlaniashimni belgilaydi list kabi ishlaydi
  /// viewportFraction: 0.75 => ekranni polnni egallaydi va chuzsa buladi
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (page){
          index = page;
         controller.jumpToPage(page);
         setState(() {});
        },
        items: const [
         BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
         BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: "Bookmark"),

        ],
      ),
      body: DefaultTextStyle(
        style: const TextStyle(fontSize: 50),
        child: PageView(
          onPageChanged: (page){
            index = page;
            setState(() {});
          },
          controller: controller,
          scrollDirection: Axis.horizontal,
          ///reverse teskari scroll qiladi
          // reverse: false,
          /// pageSnapping orqali page larni aylanadi yani oqadi horizantalga or vertikalga
         // pageSnapping: false,
          /// scrolga qushimcha kuch qushadi tezroq scril buladi
         // allowImplicitScrolling: true,
        //  scrollBehavior:const MaterialScrollBehavior(),
          //padEnds: false,
          physics: NeverScrollableScrollPhysics(),
          children:  [
            Home(),
            Container(color: Colors.blue,),
             Container(color: Colors.yellowAccent,),

          ],
        ),
      ),
    );
  }
}



class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final controller = PageController(initialPage: 0);
  int index = 0;

  void navigatePage(int page) {
    controller.jumpToPage(page);
    onPageChange(page);
  }

  void onPageChange(int page) {
    index = page;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        reverse: false,
        pageSnapping: true,
        allowImplicitScrolling: false,
        scrollBehavior: const MaterialScrollBehavior(),
        padEnds: true,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: onPageChange,
        children: const [
          Home(),
          Search(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
        ],
        onTap: navigatePage,
      ),
    );
  }
}
*/

class LearnTabBar extends StatefulWidget {
  const LearnTabBar({Key? key}) : super(key: key);

  @override
  State<LearnTabBar> createState() => _LearnTabBarState();
}

class _LearnTabBarState extends State<LearnTabBar>
    with TickerProviderStateMixin {
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
            Tab(
              icon: Icon(Icons.bookmark),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Container(
            color: Colors.blueGrey,
          ),
          Container(
            color: Colors.yellowAccent,
          ),
          Container(
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Build: Home");
    return Scaffold(
      body: ListView.builder(
        // addRepaintBoundaries: true,
        // addAutomaticKeepAlives: true,
        itemCount: Colors.primaries.length,
        itemBuilder: (context, i) => WidgetItem(i: i),
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build: Search");
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text("Search")),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build: Profile");
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(child: Text("Profile")),
    );
  }
}

class WidgetItem extends StatefulWidget {
  final int i;

  const WidgetItem({Key? key, required this.i}) : super(key: key);

  @override
  State<WidgetItem> createState() => _WidgetItemState();
}

class _WidgetItemState extends State<WidgetItem>
    with AutomaticKeepAliveClientMixin {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(
          Icons.account_circle,
          color: Colors.primaries[widget.i],
          size: 40,
        ),
        title: Text("User ${widget.i + 1}"),
        subtitle: Text("Id: ${Colors.primaries[widget.i].value}"),
        trailing: Checkbox(
          value: check,
          onChanged: (value) {
            check = !check;
            setState(() {});
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

///  ///   ///  ///
///
/*
class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(color: Colors.blue,child: const Center(child: Text("Home"),),),
      ),
    );
  }
}

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:   Container(color: Colors.blueGrey,child: const Center(child: Text("Page one"),)),
      ),
    );
  }
}


class ThrePage extends StatelessWidget {
  const ThrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.yellowAccent,
            child: const Center(child: Text("Page two"),)),
      ),
    );
  }
}

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint("Build: Home");
    return Scaffold(
      body: ListView.builder(
        itemCount: Colors.primaries.length,
        itemBuilder: (_, i) {
          return Card(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.primaries[i],
                size: 40,
              ),
              title: Text("User ${i + 1}"),
              subtitle: Text("Id: ${Colors.primaries[i].value}"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          );
        },
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build: Search");
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text("Search")),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build: Profile");
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(child: Text("Profile")),
    );
  }
}




class WidgetItem extends StatefulWidget {
  final int i;
  const WidgetItem({Key? key, required this.i}) : super(key: key);

  @override
  State<WidgetItem> createState() => _WidgetItemState();
}

class _WidgetItemState extends State<WidgetItem> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(
          Icons.account_circle,
          color: Colors.primaries[widget.i],
          size: 40,
        ),
        title: Text("User ${widget.i + 1}"),
        subtitle: Text("Id: ${Colors.primaries[widget.i].value}"),
        trailing: Checkbox(
          value: check,
          onChanged: (value) {
            check = !check;
            setState(() {});
          },
        ),
      ),
    );
  }
}

 */
