import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards UI'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Find the right product for your money goals',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const CreditCardList(title: 'Credit Cards');
                        }));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadowColor: Colors.black,
                        elevation: 3,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.lightBlue.withOpacity(0.2)),
                                child: Image.asset(
                                  'assets/card.png',
                                  scale: 0.5,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Credit cards',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const PersonalLoan(title: 'Personal Loans');
                        }));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadowColor: Colors.black,
                        elevation: 3,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.amber.withOpacity(0.2)),
                                child: Image.asset(
                                  'assets/loan.png',
                                  scale: 0.5,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Personal Loan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Banking(title: 'Banking ');
                        }));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadowColor: Colors.black,
                        elevation: 3,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green.withOpacity(0.2)),
                                child: Image.asset(
                                  'assets/bank.png',
                                  scale: 0.5,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Banking',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: (() {
                launchUrl(Uri.parse('https://fonts.google.com/icons'),
                    mode: LaunchMode.externalApplication);
              }),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                shadowColor: Colors.amber,
                elevation: 3,
                child: const SizedBox(
                  height: 30,
                  width: 200,
                  child: Center(child: Text('Open Web View')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CreditCardList extends StatefulWidget {
  const CreditCardList({super.key, required this.title});

  final String title;

  @override
  State<CreditCardList> createState() => _CreditCardListState();
}

class _CreditCardListState extends State<CreditCardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    4,
                    (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: CreditCardWidget(
                        title: 'Cheese Freedom Unlimited',
                        rating: '5,0',
                        imageUrl:
                            'https://img.freepik.com/free-vector/gradient-golden-luxury-horizontal-business-card-template_23-2149025600.jpg?w=2000',
                        row1Value: '\$0',
                        row2Value: '\$300',
                        row3Value: '1.5%-6.5%',
                        recommendCreditScore: '690-850',
                        row1Title: 'Annual Fee',
                        row2Title: 'Intro Offer',
                        row3Title: 'Rewards rate',
                        info1: true,
                        info2: true,
                      ),
                    ),
                  ).toList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalLoan extends StatefulWidget {
  const PersonalLoan({super.key, required this.title});

  final String title;

  @override
  State<PersonalLoan> createState() => _PersonalLoanState();
}

class _PersonalLoanState extends State<PersonalLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    4,
                    (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: PersonalLoadWidget(
                        title: 'Happy Money',
                        rating: '4.5',
                        imageUrl:
                            'https://img.freepik.com/free-vector/bank-credit-finance-management-loan-agreement-signing-mortgage-money-credit_335657-3136.jpg',
                        row1Value: '7.99-29.99%',
                        row2Value: '\$5,000 - \$40,000',
                        row1Title: 'EST. APR',
                        row2Title: 'Loan Amount',
                        info1: false,
                        info2: false,
                      ),
                    ),
                  ).toList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Banking extends StatefulWidget {
  const Banking({super.key, required this.title});

  final String title;

  @override
  State<Banking> createState() => _BankingState();
}

class _BankingState extends State<Banking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    4,
                    (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: BankingWidget(
                        title: 'Sofi Checking and Savings',
                        rating: '4.5',
                        imageUrl:
                            'https://media.istockphoto.com/photos/bank-doorway-picture-id1008926982?b=1&k=20&m=1008926982&s=612x612&w=0&h=Nnt146fD55eb0n5dPe8kWOGIRSmyU3poAFZBvBgWK7w=',
                        row1Value: '7.99-29.99%',
                        row2Value: '\$0',
                        row1Title: 'APY',
                        row2Title: 'Min. balance for APY',
                        info2: false,
                        info1: true,
                        monthlyFee: 'monthly fee \$0',
                      ),
                    ),
                  ).toList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.recommendCreditScore,
    required this.row3Value,
    required this.row2Value,
    required this.row1Value,
    required this.row1Title,
    required this.row2Title,
    required this.row3Title,
    required this.rating,
    required this.info1,
    required this.info2,
  }) : super(key: key);

  final String imageUrl;

  final String title;
  final String rating;
  final String row1Value;
  final String row2Value;
  final String row3Value;
  final String row1Title;
  final String row2Title;
  final String row3Title;
  final String recommendCreditScore;
  final bool info2;
  final bool info1;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      elevation: 10,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.80,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(2),
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: MediaQuery.of(context).size.width * 0.5,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 16,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        rating,
                        style: const TextStyle(color: Colors.blue),
                      ),
                      const Text(
                        ' /5',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'NerdWallet rating',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: const Icon(
                            Icons.question_mark,
                            size: 10,
                            color: Colors.grey,
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      row1Title,
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      row1Value,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      row2Title,
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            row2Value,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        if (info1) ...[
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black,
                                  )),
                              child: const Icon(
                                Icons.question_mark,
                                size: 10,
                              )),
                        ]
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      row3Title,
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                row3Value,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            if (info2) ...[
                              const SizedBox(
                                width: 4,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.black,
                                      )),
                                  child: const Icon(
                                    Icons.question_mark,
                                    size: 10,
                                  )),
                            ]
                          ],
                        ),
                        const Text(
                          'Cashback',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Divider(),
              const SizedBox(
                height: 2,
              ),
              InkWell(
                onTap: () {
                  launchUrl(Uri.parse('https://fonts.google.com/icons'),
                      mode: LaunchMode.externalApplication);
                },
                child: const Text(
                  'See full details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  const Text('Recommended credit score',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      )),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: const Icon(
                        Icons.question_mark,
                        size: 10,
                        color: Colors.grey,
                      ))
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                recommendCreditScore,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'See your approval odds',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.green,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'APPLY NOW',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.green,
                    )),
                    height: 50,
                    child: const Center(
                      child: Text(
                        'READ REVIEW',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalLoadWidget extends StatelessWidget {
  const PersonalLoadWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.row2Value,
    required this.row1Value,
    required this.row1Title,
    required this.row2Title,
    required this.rating,
    required this.info1,
    required this.info2,
  }) : super(key: key);

  final String imageUrl;

  final String title;
  final String rating;
  final String row1Value;
  final String row2Value;
  final String row1Title;
  final String row2Title;
  final bool info2;
  final bool info1;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      elevation: 10,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.80,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(2),
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: MediaQuery.of(context).size.width * 0.5,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 16,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        rating,
                        style: const TextStyle(color: Colors.blue),
                      ),
                      const Text(
                        ' /5',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'NerdWallet rating',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: const Icon(
                            Icons.question_mark,
                            size: 10,
                            color: Colors.grey,
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      row1Title,
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      row1Value,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      row2Title,
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            row2Value,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        if (info1) ...[
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black,
                                  )),
                              child: const Icon(
                                Icons.question_mark,
                                size: 10,
                              )),
                        ]
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 2,
              ),
              InkWell(
                onTap: () {
                  launchUrl(Uri.parse('https://fonts.google.com/icons'),
                      mode: LaunchMode.externalApplication);
                },
                child: const Text(
                  'See full details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.green,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'GET RATE',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.green,
                    )),
                    height: 50,
                    child: const Center(
                      child: Text(
                        'READ REVIEW',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BankingWidget extends StatelessWidget {
  const BankingWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.row2Value,
    required this.row1Value,
    required this.row1Title,
    required this.row2Title,
    required this.rating,
    required this.info2,
    required this.info1,
    required this.monthlyFee,
  }) : super(key: key);

  final String imageUrl;

  final String title;
  final String rating;
  final String row1Value;
  final String row2Value;
  final String row1Title;
  final String row2Title;
  final bool info1;
  final bool info2;
  final String monthlyFee;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      elevation: 10,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.80,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(2),
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: MediaQuery.of(context).size.width * 0.5,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 16,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        rating,
                        style: const TextStyle(color: Colors.blue),
                      ),
                      const Text(
                        ' /5',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'NerdWallet rating',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: const Icon(
                            Icons.question_mark,
                            size: 10,
                            color: Colors.grey,
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      row1Title,
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          row1Value,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        if (info1) ...[
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black,
                                  )),
                              child: const Icon(
                                Icons.question_mark,
                                size: 10,
                              )),
                        ]
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      row2Title,
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                row2Value,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            if (info2) ...[
                              const SizedBox(
                                width: 4,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.black,
                                      )),
                                  child: const Icon(
                                    Icons.question_mark,
                                    size: 10,
                                  )),
                            ]
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          monthlyFee,
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 2,
              ),
              InkWell(
                onTap: () {
                  launchUrl(Uri.parse('https://fonts.google.com/icons'),
                      mode: LaunchMode.externalApplication);
                },
                child: const Text(
                  'See full details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.green,
                    height: 50,
                    child: const Center(
                      child: Text(
                        'LEARN MORE',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.green,
                    )),
                    height: 50,
                    child: const Center(
                      child: Text(
                        'READ REVIEW',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
