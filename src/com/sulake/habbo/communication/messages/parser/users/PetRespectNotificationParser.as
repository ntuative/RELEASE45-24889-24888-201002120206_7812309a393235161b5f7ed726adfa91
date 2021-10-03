package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1734:int;
      
      private var var_1119:PetData;
      
      private var var_1733:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1734;
      }
      
      public function get petData() : PetData
      {
         return var_1119;
      }
      
      public function flush() : Boolean
      {
         var_1119 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1733;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1734 = param1.readInteger();
         var_1733 = param1.readInteger();
         var_1119 = new PetData(param1);
         return true;
      }
   }
}
