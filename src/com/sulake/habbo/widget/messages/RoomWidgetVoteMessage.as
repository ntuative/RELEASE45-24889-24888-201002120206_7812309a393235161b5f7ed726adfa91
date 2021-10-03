package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_86:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1304:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_86);
         var_1304 = param1;
      }
      
      public function get vote() : int
      {
         return var_1304;
      }
   }
}
