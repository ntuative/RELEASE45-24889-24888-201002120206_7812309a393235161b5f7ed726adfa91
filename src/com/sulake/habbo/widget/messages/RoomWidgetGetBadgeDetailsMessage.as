package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_558:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1024:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_558);
         var_1024 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1024;
      }
   }
}
