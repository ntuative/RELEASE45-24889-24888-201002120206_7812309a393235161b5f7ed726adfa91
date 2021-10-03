package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   
   public class ClubGiftInfoParser implements IMessageParser
   {
       
      
      private var var_967:int;
      
      private var var_1750:int;
      
      private var var_514:Array;
      
      public function ClubGiftInfoParser()
      {
         super();
      }
      
      public function get giftsAvailable() : int
      {
         return var_967;
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_1750;
      }
      
      public function flush() : Boolean
      {
         var_514 = [];
         return true;
      }
      
      public function get offers() : Array
      {
         return var_514;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1750 = param1.readInteger();
         var_967 = param1.readInteger();
         var_514 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_514.push(new CatalogPageMessageOfferData(param1));
            _loc3_++;
         }
         return true;
      }
   }
}
