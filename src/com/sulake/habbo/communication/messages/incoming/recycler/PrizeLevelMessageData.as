package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_2182:int;
      
      private var var_1082:int;
      
      private var var_631:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1082 = param1.readInteger();
         var_2182 = param1.readInteger();
         var_631 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_631.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get probabilityDenominator() : int
      {
         return var_2182;
      }
      
      public function get prizes() : Array
      {
         return var_631;
      }
      
      public function get prizeLevelId() : int
      {
         return var_1082;
      }
   }
}
