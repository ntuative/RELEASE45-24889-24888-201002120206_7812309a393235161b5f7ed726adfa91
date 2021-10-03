package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_2061:int;
      
      private var var_1490:int;
      
      private var var_2065:int;
      
      private var var_2060:int;
      
      private var var_2063:int;
      
      private var var_1489:int;
      
      private var var_2058:int;
      
      private var var_2059:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_2061;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1490;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_2058;
      }
      
      public function get offerMinPrice() : int
      {
         return var_2060;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_2063;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1489;
      }
      
      public function get commission() : int
      {
         return var_2065;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2059 = param1.readBoolean();
         var_2065 = param1.readInteger();
         var_1490 = param1.readInteger();
         var_1489 = param1.readInteger();
         var_2060 = param1.readInteger();
         var_2061 = param1.readInteger();
         var_2063 = param1.readInteger();
         var_2058 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_2059;
      }
   }
}
