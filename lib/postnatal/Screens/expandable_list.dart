import 'package:flutter/material.dart';

class DataList extends StatefulWidget {
  DataList({Key? key}) : super(key: key);

  @override
  State<DataList> createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  List<Text> questions = [
    const Text("When can I start my course?"),
    const Text("Can I cancel my course in between?"),
    const Text("What happens if I miss a particular session?"),
    const Text("Will I get direct and personal support from the instructor?"),
    const Text("Does the course include diet related plans?"),
    const Text("What can I do after the 5 day course?"),
    const Text("Do I need any equipments to take this course?"),
    const Text("What are the payment options I have?"),
  ];

  List<Item> _doubts = [];
  @override
  void initState() {
    _doubts = generateItems(questions);
    super.initState();
  }

  Widget _buldDoubts() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _doubts[index].isExpanded = !isExpanded;
        });
      },
      children: _doubts.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              dense: true,
              title: item.headerValue,
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buldDoubts(),
      ),
    );
  }

  List<Item> generateItems(questions) {
    return List.generate(questions.length, (int index) {
      return Item(expandedValue: "answer....", headerValue: questions[index]);
      // return Item(
      //   headerValue: 'When can I start my course? $index',
      //   expandedValue:
      //       'Lorem ipsum dolor sit amet. Aut numquam officia quo velit saepe et pariatur quae qui odit vitae et nemo vitae. Et alias alias est voluptatibus molestiae in voluptatum fuga. $index ',
      // );
    });
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  Text headerValue;
  bool isExpanded;
}

// class Entry {
//   final String question;
//   final String answer;
//   Entry(this.question, this.answer);
// }
//
// final List data = [
//   Entry("When can I start my course?",
//       "Lorem ipsum dolor sit amet. Aut numquam officia quo velit saepe et pariatur quae qui odit vitae et nemo vitae. Et alias alias est voluptatibus molestiae in voluptatum fuga."),
//   Entry("Can I cancel my course in between?", ""),
//   Entry("What happens if I miss a particular session?", ""),
//   Entry("Will I get direct and personal support from the instructor?", ""),
//   Entry("Does the course include diet related plans?", ""),
//   Entry("What can I do after the 5 day course?", ""),
//   Entry("Do I need any equipments to take this course?", ""),
//   Entry("What are the payment options I have?", ""),
// ];
//
// class EntryItem extends StatelessWidget {
//   EntryItem({Key? key, required this.entry}) : super(key: key);
//
//   final Entry entry;
//
//   Widget _buildTiles(Entry root) {
//     if (root.answer.isEmpty)
//       return ListTile(
//         title: Text(root.question),
//       );
//     return ExpansionTile(
//       key: PageStorageKey<Entry>(root),
//       title: Text(
//         root.question,
//       ),
//       children: root.answer.map(_buildTiles).toList(),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return _buildTiles(entry);
//   }
// }
