package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_817:Array;
      
      private var var_771:int;
      
      private var var_1142:String;
      
      private var _offerId:int;
      
      private var var_770:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1142 = param1.readString();
         var_771 = param1.readInteger();
         var_770 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_817 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_817.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_817;
      }
      
      public function get priceInCredits() : int
      {
         return var_771;
      }
      
      public function get localizationId() : String
      {
         return var_1142;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_770;
      }
   }
}
