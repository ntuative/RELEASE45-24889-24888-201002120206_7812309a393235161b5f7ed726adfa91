package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1567:int = 2;
      
      public static const const_1587:int = 1;
      
      public static const const_1588:int = 0;
       
      
      private var var_1146:int;
      
      private var var_350:int;
      
      private var var_2346:int;
      
      private var _offerId:int;
      
      private var var_1651:int;
      
      private var var_1653:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1653 = param2;
         var_1651 = param3;
         var_1146 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1653;
      }
      
      public function get furniType() : int
      {
         return var_1651;
      }
      
      public function get price() : int
      {
         return var_1146;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
