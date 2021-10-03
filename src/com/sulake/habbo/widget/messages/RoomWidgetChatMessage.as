package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_96:int = 0;
      
      public static const const_90:int = 1;
      
      public static const const_82:int = 2;
      
      public static const const_694:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1200:int = 0;
      
      private var var_2020:String = "";
      
      private var var_177:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_177 = param2;
         var_1200 = param3;
         var_2020 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2020;
      }
      
      public function get chatType() : int
      {
         return var_1200;
      }
      
      public function get text() : String
      {
         return var_177;
      }
   }
}
