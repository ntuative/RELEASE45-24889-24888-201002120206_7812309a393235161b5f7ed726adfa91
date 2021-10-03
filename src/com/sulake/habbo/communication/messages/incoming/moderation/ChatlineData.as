package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1388:String;
      
      private var var_1657:int;
      
      private var var_1656:int;
      
      private var var_1654:int;
      
      private var var_1655:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1657 = param1.readInteger();
         var_1654 = param1.readInteger();
         var_1656 = param1.readInteger();
         var_1655 = param1.readString();
         var_1388 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1388;
      }
      
      public function get hour() : int
      {
         return var_1657;
      }
      
      public function get minute() : int
      {
         return var_1654;
      }
      
      public function get chatterName() : String
      {
         return var_1655;
      }
      
      public function get chatterId() : int
      {
         return var_1656;
      }
   }
}
