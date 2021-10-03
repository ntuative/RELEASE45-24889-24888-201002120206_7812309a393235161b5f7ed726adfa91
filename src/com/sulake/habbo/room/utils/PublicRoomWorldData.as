package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1737:Number = 1;
      
      private var var_181:Number = 1;
      
      private var var_2037:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_2037 = param1;
         var_181 = param2;
         var_1737 = param3;
      }
      
      public function get scale() : Number
      {
         return var_181;
      }
      
      public function get heightScale() : Number
      {
         return var_1737;
      }
   }
}
