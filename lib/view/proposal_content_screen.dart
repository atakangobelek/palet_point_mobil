import 'package:flutter/material.dart';
import 'package:satta_mobil/view/widget/proposal_content_body.dart';
import 'package:satta_mobil/view/widget/proposal_content_header.dart';
import 'package:satta_mobil/view/widget/proposal_content_message.dart';

class ProposalContentScreen extends StatelessWidget {
  const ProposalContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teklif No: 1533'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProposalContentHeader(),
                  ListView.builder(
                    shrinkWrap:
                        true, // makes ListView size itself according to children
                    physics:
                        NeverScrollableScrollPhysics(),  //close the scrool for parent singleChildScrollView
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ProposalBody(
                          paletteDimensions: '120 x 100 Tahta Palet',
                          itemCount: 100);
                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text('Teklif Gönder (0/3)')),
          ),
          BottomNavigationWidget()
        ],
      ),
    );
  }
}
