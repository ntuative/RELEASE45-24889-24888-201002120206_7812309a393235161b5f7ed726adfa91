package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1045:String;
      
      private var var_1769:int;
      
      private var var_1876:int;
      
      private var var_1435:int;
      
      private var var_1877:int;
      
      private var _category:int;
      
      private var var_2343:int;
      
      private var var_1879:int;
      
      private var var_1880:int;
      
      private var var_1881:int;
      
      private var var_1875:int;
      
      private var var_1878:Boolean;
      
      private var var_1325:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1769 = param1;
         var_1045 = param2;
         var_1876 = param3;
         var_1881 = param4;
         _category = param5;
         var_1325 = param6;
         var_1435 = param7;
         var_1880 = param8;
         var_1879 = param9;
         var_1875 = param10;
         var_1877 = param11;
         var_1878 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1881;
      }
      
      public function get extra() : int
      {
         return var_1435;
      }
      
      public function get stuffData() : String
      {
         return var_1325;
      }
      
      public function get groupable() : Boolean
      {
         return var_1878;
      }
      
      public function get creationMonth() : int
      {
         return var_1875;
      }
      
      public function get roomItemID() : int
      {
         return var_1876;
      }
      
      public function get itemType() : String
      {
         return var_1045;
      }
      
      public function get itemID() : int
      {
         return var_1769;
      }
      
      public function get songID() : int
      {
         return var_1435;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1880;
      }
      
      public function get creationYear() : int
      {
         return var_1877;
      }
      
      public function get creationDay() : int
      {
         return var_1879;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
