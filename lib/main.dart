import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const Text(
              'Credit Card Section 1',
              style: TextStyle(fontSize: 30),
            ),
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
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Credit Card Section 1',
              style: TextStyle(fontSize: 30),
            ),
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
                        row2Value:
                            '0% intro APR for up to 21 months from account opening on purchases and qualifying',
                        row3Value: '17.24%-29.34% Variable APR',
                        recommendCreditScore: '690-850',
                        row1Title: 'Annual Fee',
                        row2Title: 'Intro APR',
                        row3Title: 'Regular APR',
                        info1: false,
                        info2: false,
                      ),
                    ),
                  ).toList()
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Personal Loan',
              style: TextStyle(fontSize: 30),
            ),
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
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Banking',
              style: TextStyle(fontSize: 30),
            ),
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
                            'https://img.freepik.com/free-vector/bank-credit-finance-management-loan-agreement-signing-mortgage-money-credit_335657-3136.jpg',
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
            const SizedBox(
              height: 400,
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(20),
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
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 30,
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
              const Text(
                'See full details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
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
                    height: 60,
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
                    height: 60,
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(20),
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
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 30,
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
              const Text(
                'See full details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
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
                    height: 60,
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
                    height: 60,
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(20),
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
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 30,
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
              const Text(
                'See full details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
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
                    height: 60,
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
                    height: 60,
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
