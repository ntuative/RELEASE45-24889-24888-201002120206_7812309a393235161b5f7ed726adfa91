package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_501:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_420:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_501);
         var_420 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_420;
      }
   }
}
