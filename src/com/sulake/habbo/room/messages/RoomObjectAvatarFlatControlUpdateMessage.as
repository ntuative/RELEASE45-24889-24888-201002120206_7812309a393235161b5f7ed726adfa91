package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFlatControlUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2171:String;
      
      private var var_2172:Boolean = false;
      
      public function RoomObjectAvatarFlatControlUpdateMessage(param1:String)
      {
         super();
         var_2171 = param1;
         if(param1 != null && param1.indexOf("useradmin") != -1)
         {
            var_2172 = true;
         }
      }
      
      public function get rawData() : String
      {
         return var_2171;
      }
      
      public function get isAdmin() : Boolean
      {
         return var_2172;
      }
   }
}
