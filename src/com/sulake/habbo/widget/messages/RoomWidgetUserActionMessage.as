package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_547:String = "RWUAM_RESPECT_USER";
      
      public static const const_661:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_651:String = "RWUAM_START_TRADING";
      
      public static const const_618:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_583:String = "RWUAM_WHISPER_USER";
      
      public static const const_573:String = "RWUAM_IGNORE_USER";
      
      public static const const_425:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_678:String = "RWUAM_BAN_USER";
      
      public static const const_529:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_457:String = "RWUAM_KICK_USER";
      
      public static const const_540:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_643:String = " RWUAM_RESPECT_PET";
      
      public static const const_424:String = "RWUAM_KICK_BOT";
      
      public static const const_1245:String = "RWUAM_TRAIN_PET";
      
      public static const const_613:String = "RWUAM_PICKUP_PET";
      
      public static const const_552:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_526:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
