package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1774:int;
      
      private var var_1146:int;
      
      private var var_1652:int;
      
      private var var_1650:int = -1;
      
      private var var_350:int;
      
      private var var_1651:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1145:int;
      
      private var var_1653:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1653 = param2;
         var_1651 = param3;
         var_1146 = param4;
         var_350 = param5;
         var_1652 = param6;
         var_1145 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1774 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1774;
      }
      
      public function get price() : int
      {
         return var_1146;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1650;
      }
      
      public function get offerCount() : int
      {
         return var_1145;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1651;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1650 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1146 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1145 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_350;
      }
      
      public function get averagePrice() : int
      {
         return var_1652;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1653;
      }
   }
}
