package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1927:int = 0;
      
      private var var_2120:int = 0;
      
      private var var_1862:int = 0;
      
      private var var_1926:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2120;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2120 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1927 = param1;
      }
      
      public function get credits() : int
      {
         return var_1862;
      }
      
      public function get clubDays() : int
      {
         return var_1927;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1926 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1862 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1926;
      }
   }
}
