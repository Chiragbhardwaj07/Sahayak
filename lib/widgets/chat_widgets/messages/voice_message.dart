// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:legalassistr/data/models/chat/chat_message.dart';

// class VoiceMessageWidget extends StatefulWidget {
//   final ChatMessage message;
//   final String msgText;
//   final String msgSender;
//   final bool user;

//   const VoiceMessageWidget(
//       {super.key,
//       required this.message,
//       required this.msgText,
//       required this.msgSender,
//       required this.user});

//   @override
//   _VoiceMessageWidgetState createState() => _VoiceMessageWidgetState;
// }

// class _VoiceMessageWidgetState extends State<VoiceMessageWidget> {
//   final player = AudioPlayer();
//   Duration? duration = Duration.zero;
//   Duration seekBarPosition = Duration.zero;
//   bool isPlaying = false;

//   @override
//   void initState() {
//     setData();
//     super.initState();
//   }

//   void setData() async {
//     Uri.parse(widget.message.chatMedia!.url).isAbsolute
//         ? duration = await player.setUrl(widget.message.chatMedia!.url)
//         : duration = await player.setFilePath(widget.message.chatMedia!.url);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Column(
//         crossAxisAlignment:
//             widget.user ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Text(
//               widget.msgSender,
//               style: const TextStyle(
//                 fontSize: 13,
//                 fontFamily: 'Poppins',
//                 color: Colors.black87,
//               ),
//             ),
//           ),
//           Material(
//             borderRadius: BorderRadius.only(
//               bottomLeft: const Radius.circular(50),
//               topLeft: widget.user
//                   ? const Radius.circular(50)
//                   : const Radius.circular(0),
//               bottomRight: const Radius.circular(50),
//               topRight: widget.user
//                   ? const Radius.circular(0)
//                   : const Radius.circular(50),
//             ),
//             color: widget.user ? Colors.deepPurple : Colors.white,
//             elevation: 5,
//             child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                 child: Row(
//                   children: [
//                     IconButton(
//                         onPressed: () {
//                           isPlaying ? player.pause() : play();
//                           setState(() {
//                             isPlaying = !isPlaying;
//                           });
//                         },
//                         icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow,
//                             color: widget.message.isSender
//                                 ? Colors.white
//                                 : Colors.purple
//                           )
//                         ),
//                         Expanded(
//                           child: Slider(
//                             activeColor: Colors.purple,
//                             inactiveColor: Colors.grey[300],
//                             max: player.duration?.inMilliseconds.toDouble() ?? 1,
//                             value: player.position.inMilliseconds.toDouble(),
//                             onChanged: (d) {
//                               setState(() {
//                                 player.seek(Duration(milliseconds: d.toInt()));
//                               });
//                             },
//                           ),
//                           Text(
//                             _printDuration(player.position),
//                             style: TextField(
//                               fontSize: 12,
//                               color: widget.user ? Colors.white : null,
//                             )
//                           )
//                         )
//                   ],
//                 )),
//           ),
//         ],
//       ),
//     );
//   }

//   void play() {
//     if (player.duration != null && player.position >= player.duration!) {
//       player.seek(Duration.zero);
//       setState(() {
//         isPlaying = false;
//       });
//     }

//     player.play();

//     player.positionStream.listen((duration) {
//       setState(() {
//         seekBarPosition = duration;
//       });

//       if (player.duration != null && player.position >= player.duration!) {
//         player.stop();
//         player.seek(Duration.zero);
//         setState(() {
//           isPlaying = false;
//           seekBarPosition = Duration.zero;
//         });
//       }
//     });
//   }

//   String _printDuration(Duration duration) {
//     String twoDigits(int n) => n.toString().padLeft(2, "0");
//     String twoDigitsMinutes = twoDigits(duration.inMinutes.remainder(60));
//     String twoDigitsSeconds = twoDigits(duration.inSeconds.remainder(60));
//     Strign hoursString = duration.inHours == 0 ? '' : ""
//   }
// }
