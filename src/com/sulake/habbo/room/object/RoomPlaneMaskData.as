package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1784:Number = 0;
      
      private var var_1730:Number = 0;
      
      private var var_1729:Number = 0;
      
      private var var_1785:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1730 = param1;
         var_1729 = param2;
         var_1784 = param3;
         var_1785 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1730;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1784;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1729;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1785;
      }
   }
}
