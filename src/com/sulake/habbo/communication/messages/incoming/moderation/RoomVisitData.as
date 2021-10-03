package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_653:String;
      
      private var var_1994:int;
      
      private var var_1546:Boolean;
      
      private var _roomId:int;
      
      private var var_1995:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1546 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_653 = param1.readString();
         var_1995 = param1.readInteger();
         var_1994 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1546;
      }
      
      public function get roomName() : String
      {
         return var_653;
      }
      
      public function get enterMinute() : int
      {
         return var_1994;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1995;
      }
   }
}
