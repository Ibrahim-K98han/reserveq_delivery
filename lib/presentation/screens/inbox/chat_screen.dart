import 'package:delivery_ui/presentation/utils/constraints.dart';
import 'package:delivery_ui/presentation/utils/k_images.dart';
import 'package:delivery_ui/presentation/widgets/custom_image.dart';
import 'package:delivery_ui/presentation/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/utils.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> messages = [
    Message(sender: 'John', text: 'Hello, good afternoon Andrew... 😁'),
    Message(sender: 'John', text: " 'I'm Wade, I'll be right over and take your order. Please wait... ⌛️😁"),
    Message(sender: 'Alice', text: 'Hello Wade, ok I will be waiting for you in front of my house. You can immediately notify me when it arrives 😄'),
    Message(sender: 'John', text: 'Great! I will arrive soon...'),
    // Add more messages as needed
  ];

  final TextEditingController _textController = TextEditingController();

  void _sendMessage() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        messages.add(Message(sender: 'John', text: _textController.text));
        _textController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
      ),
      body: Padding(
        padding:Utils.symmetric(v: 10.0, h: 10.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFF4F4F6),
                ),

                borderRadius: BorderRadius.circular(10),
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  Utils.all(value: 8.0),
                    child: Row(
                      children: [
                        const CustomImage(path: KImages.personImage,height: 65,),
                        Utils.horizontalSpace(10),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const CustomText(text: 'Wade Warren',fontWeight: FontWeight.w600,fontSize: 16,),
                          Row(
                            children: [
                              const CustomImage(path: KImages.star),
                              Utils.horizontalSpace(4),
                              const CustomText(text: '4.7(2.5K)'),
                            ],
                          ),
                        ],),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  Utils.only(right: 20.0),
                    child: const CustomImage(path: KImages.callIcon,height: 30,),
                  ),
                ],
              ),
            ),
            Utils.verticalSpace(10),
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  return MessageBubble(
                    message: message,
                    isMe: message.sender == 'John', // Change to your own identifier
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6,right: 6,bottom: 2),
              child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(
                   color:  Color(0xFFF4F4F6),
                 ),
                 color: Color(0xFFF4F4F6),
               ),
               // color: Colors.grey[200],
                child: Row(
                  children: [
                    const Expanded(
                        flex: 1,
                        child: CustomImage(path: KImages.inboxEmoji,height: 28,)),
                    // Expanded(flex: 3,child: TextField(
                    //   controller: _textController,
                    //   decoration: const InputDecoration(
                    //     hintText: 'Type a message...',
                    //     border: InputBorder.none,
                    //   ),
                    // ),),
                    Expanded(
                        flex: 4,child: TextFormField(

                      controller: _textController,
                      decoration:  const InputDecoration(

                        hintText: 'Type a message...',
                        border: InputBorder.none,

                        // prefixIcon: InkWell(
                        //     onTap: (){},
                        //     child: const CustomImage(path: KImages.inboxEmoji,height: 15,fit: BoxFit.fitHeight,)),
                      ),
                    )),
                    const Expanded( flex: 1,child: CustomImage(path: KImages.inboxFile,height: 24.0,)),
                    const Expanded( flex: 1,child: CustomImage(path: KImages.inboxCamera,height: 24.0,)),
                    IconButton(
                      icon: const CustomImage(path: KImages.inboxMic,height: 46.0,),
                      onPressed: _sendMessage,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Message {
  final String sender;
  final String text;

  Message({required this.sender, required this.text});
}

class MessageBubble extends StatelessWidget {
  final Message message;
  final bool isMe;

  const MessageBubble({super.key, required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        width: MediaQuery.of(context).size.width*0.8,
        margin:  Utils.all(value: 8.0),
        padding: Utils.all(value: 12.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.grey[300] : const Color(0xFFF01543),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          message.text,
          style: TextStyle(color: isMe ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
