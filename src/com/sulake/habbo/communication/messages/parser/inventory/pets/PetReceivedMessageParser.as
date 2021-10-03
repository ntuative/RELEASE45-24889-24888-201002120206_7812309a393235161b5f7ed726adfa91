package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1022:PetData;
      
      private var var_1506:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1506 = param1.readBoolean();
         var_1022 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1506 + ", " + var_1022.id + ", " + var_1022.name + ", " + pet.figure + ", " + var_1022.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1506;
      }
      
      public function get pet() : PetData
      {
         return var_1022;
      }
   }
}
