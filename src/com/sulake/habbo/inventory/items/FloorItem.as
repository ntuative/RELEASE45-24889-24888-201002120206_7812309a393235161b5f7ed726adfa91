package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2238:Boolean;
      
      protected var var_1435:Number;
      
      protected var var_2239:Boolean;
      
      protected var _type:int;
      
      protected var var_2241:Boolean;
      
      protected var var_1884:int;
      
      protected var var_2240:Boolean;
      
      protected var var_1325:String;
      
      protected var var_1877:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1888:String;
      
      protected var var_1878:Boolean;
      
      protected var _category:int;
      
      protected var var_1875:int;
      
      protected var var_2243:int;
      
      protected var var_1879:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1878 = param5;
         var_2240 = param6;
         var_2238 = param7;
         var_2239 = param8;
         var_1325 = param9;
         var_1435 = param10;
         var_2243 = param11;
         var_1879 = param12;
         var_1875 = param13;
         var_1877 = param14;
         var_1888 = param15;
         var_1884 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2241;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1435;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2241 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1884;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2239;
      }
      
      public function get slotId() : String
      {
         return var_1888;
      }
      
      public function get expires() : int
      {
         return var_2243;
      }
      
      public function get creationYear() : int
      {
         return var_1877;
      }
      
      public function get creationDay() : int
      {
         return var_1879;
      }
      
      public function get stuffData() : String
      {
         return var_1325;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2240;
      }
      
      public function get groupable() : Boolean
      {
         return var_1878;
      }
      
      public function get creationMonth() : int
      {
         return var_1875;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2238;
      }
   }
}
