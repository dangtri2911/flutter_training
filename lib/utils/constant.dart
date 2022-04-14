import 'package:messenger_craft/widget/conversation.dart';
import 'package:messenger_craft/widget/story.dart';

class Constant {
  static const double DEFAULT_SIZE = 60;
  static const double STORY_ITEM_SIZE = 60;
  static const String AVA_URL =
      "https://photo-cms-tinnhanhchungkhoan.zadn.vn/w660/Uploaded/2022/gtnwae/2021_04_19/funny-animal-face-6313.jpg";
  static const List<Story> storyList = [
    Story("https://emoji.slack-edge.com/TD7J12CTW/zui_ze_khong_quao/0f008f8a6fb0a104.gif", "Tùng", true, true),
    Story("https://emoji.slack-edge.com/TD7J12CTW/adu/322f39eb8a585a2a.png", "Tùng", true, true),
    Story("https://emoji.slack-edge.com/TD7J12CTW/scary/be123e980d136e7d.jpg", "Tùng", true, true),
    Story("https://emoji.slack-edge.com/TD7J12CTW/coi_chung_tao/1e4b8d300b62bd4e.png", "Tùng", true, true),
    Story("https://photo-cms-tinnhanhchungkhoan.zadn.vn/w660/Uploaded/2022/gtnwae/2021_04_19/funny-animal-face-6313.jpg", "Emannual", false, true),
    Story("https://photo-cms-tinnhanhchungkhoan.zadn.vn/w660/Uploaded/2022/gtnwae/2021_04_19/funny-animal-face-6313.jpg", "Gracy", false, true),
    Story("https://photo-cms-tinnhanhchungkhoan.zadn.vn/w660/Uploaded/2022/gtnwae/2021_04_19/funny-animal-face-6313.jpg", "Robert", true, false),
    Story("https://photo-cms-tinnhanhchungkhoan.zadn.vn/w660/Uploaded/2022/gtnwae/2021_04_19/funny-animal-face-6313.jpg", "Robert", false, false),
  ];
  static const List<Conversation> conversationList = [
    Conversation("Tùng", "https://emoji.slack-edge.com/TD7J12CTW/zui_ze_khong_quao/0f008f8a6fb0a104.gif", "Hahahahahaha", "5 min", true, true),
    Conversation("Tùng", "https://emoji.slack-edge.com/TD7J12CTW/adu/322f39eb8a585a2a.png", "Hahahahahaha", "5 min", true, true),
    Conversation("Tùng", "https://emoji.slack-edge.com/TD7J12CTW/scary/be123e980d136e7d.jpg", "Hahahahahaha", "5 min", true, true),
    Conversation("Tùng", "https://emoji.slack-edge.com/TD7J12CTW/coi_chung_tao/1e4b8d300b62bd4e.png", "Hahahahahaha", "5 min", true, true),
    Conversation("Novac", "https://randomuser.me/api/portraits/men/31.jpg", "It's good!!", "5:00 pm", true, true),
    Conversation("Derick", "https://randomuser.me/api/portraits/men/81.jpg", "It's bad!!", "7:00 am", false, false),
    Conversation("Mevis", "https://randomuser.me/api/portraits/women/49.jpg", "I love You too!", "6:50 am", true, false),
    Conversation("Emannual", "https://randomuser.me/api/portraits/men/35.jpg", "Got to go!! Bye!!", "5:00 pm", true, true),
    Conversation("Gracy", "https://randomuser.me/api/portraits/women/56.jpg", "Sorry, I forgot!", "5:00 pm", true, true),
    Conversation("Robert", "https://randomuser.me/api/portraits/men/35.jpg", "..........", "2nd Feb", false, false),
    Conversation("Emannual", "https://randomuser.me/api/portraits/men/36.jpg", "No, I won't go!", "28th Jan", false, true),
    Conversation("Lucy", "https://randomuser.me/api/portraits/women/56.jpg", "Hahahahahaha", "25th Jan", false, false),
   ];
}