import 'package:flutter_k/constants.dart';
import 'package:polls/polls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPoll extends StatefulWidget {
  const AddPoll({Key key}) : super(key: key);

  @override
  _AddPollState createState() => _AddPollState();
}

class _AddPollState extends State<AddPoll> {
  double option1 = 5;
  double option2 = 1.0;
  double option3 = 4.0;
  double option4 = 3.0;

  String user = "user@gmail.com";
  Map usersWhoVoted = {
    'test@gmail.com': 1,
    'deny@gmail.com': 3,
    'kent@gmail.com': 2,
    'xyz@gmail.com': 3
  };
  String creator = "admin@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "استطلاع رأي",
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: kDefaultPadding.h),
            Text(
              'عنوان استطلاع الرأي',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: kDefaultPadding * 4.h),
            Polls(
              children: [
                Polls.options(title: 'Java', value: option1),
                Polls.options(title: 'Kotlin', value: option2),
                Polls.options(title: 'Flutter', value: option3),
                Polls.options(title: 'React Native', value: option4),
              ],
              question: Text(
                'على ماذا تفضل عمل تطبييقات الهاتف الذكي؟',
                style: Theme.of(context).textTheme.headline3,
              ),
              currentUser: this.user,
              creatorID: this.creator,
              voteData: this.usersWhoVoted,
              userChoice: usersWhoVoted[this.user],
              onVoteBackgroundColor: Colors.cyan,
              leadingBackgroundColor: Colors.cyan,
              backgroundColor: Colors.white,
              onVote: (choice) {
                print(choice);
                setState(() {
                  this.usersWhoVoted[this.user] = choice;
                });
                if (choice == 1) {
                  setState(() {
                    option1 += 1.0;
                  });
                }
                if (choice == 2) {
                  setState(() {
                    option2 += 1.0;
                  });
                }
                if (choice == 3) {
                  setState(() {
                    option3 += 1.0;
                  });
                }
                if (choice == 4) {
                  setState(() {
                    option4 += 1.0;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
