package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1478:Array;
      
      private var var_1652:int;
      
      private var var_1789:int;
      
      private var var_1786:int;
      
      private var var_1788:int;
      
      private var _dayOffsets:Array;
      
      private var var_1787:int;
      
      private var var_1477:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1478;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1478 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1789;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1477 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1652 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1786;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1788;
      }
      
      public function get offerCount() : int
      {
         return var_1787;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1787 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1477;
      }
      
      public function get averagePrice() : int
      {
         return var_1652;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1788 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1786 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1789 = param1;
      }
   }
}
