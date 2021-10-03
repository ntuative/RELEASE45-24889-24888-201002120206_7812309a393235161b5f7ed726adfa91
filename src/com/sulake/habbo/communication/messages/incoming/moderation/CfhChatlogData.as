package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_990:int;
      
      private var var_1739:int;
      
      private var var_1389:int;
      
      private var var_104:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1389 = param1.readInteger();
         var_1739 = param1.readInteger();
         var_990 = param1.readInteger();
         var_104 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1389);
      }
      
      public function get reportedUserId() : int
      {
         return var_990;
      }
      
      public function get callerUserId() : int
      {
         return var_1739;
      }
      
      public function get callId() : int
      {
         return var_1389;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_104;
      }
   }
}
