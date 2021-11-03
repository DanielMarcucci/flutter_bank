import 'package:transaction_bank_app/components/compact_card_item.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  // List<Job> jobs;

  // JobList(this.jobs);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // itemCount: this.jobs.length,
        itemCount: 8,
        // itemBuilder: (context, index) => CompactItemJob(this.jobs[index]),
        itemBuilder: (context, index) => CompactCardItem());
  }
}
