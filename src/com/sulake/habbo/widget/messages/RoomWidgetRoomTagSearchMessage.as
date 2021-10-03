package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_506:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1666:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_506);
         var_1666 = param1;
      }
      
      public function get tag() : String
      {
         return var_1666;
      }
   }
}
