package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1045:int;
      
      private var var_1317:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1045 = param1;
         var_1317 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1045;
      }
      
      public function get itemName() : String
      {
         return var_1317;
      }
   }
}
