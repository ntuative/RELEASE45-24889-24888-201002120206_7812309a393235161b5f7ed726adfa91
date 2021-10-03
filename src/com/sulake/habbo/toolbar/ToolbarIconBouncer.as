package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1842:Number;
      
      private var var_540:Number = 0;
      
      private var var_1841:Number;
      
      private var var_541:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1842 = param1;
         var_1841 = param2;
      }
      
      public function update() : void
      {
         var_541 += var_1841;
         var_540 += var_541;
         if(var_540 > 0)
         {
            var_540 = 0;
            var_541 = var_1842 * -1 * var_541;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_541 = param1;
         var_540 = 0;
      }
      
      public function get location() : Number
      {
         return var_540;
      }
   }
}
