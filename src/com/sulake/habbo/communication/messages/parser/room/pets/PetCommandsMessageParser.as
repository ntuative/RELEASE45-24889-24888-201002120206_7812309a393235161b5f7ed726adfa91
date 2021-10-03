package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1009:Array;
      
      private var var_1253:int;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1253 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_1009 = new Array();
         while(_loc2_-- > 0)
         {
            var_1009.push(param1.readInteger());
         }
         return true;
      }
      
      public function get enabledCommands() : Array
      {
         return var_1009;
      }
      
      public function get petId() : int
      {
         return var_1253;
      }
      
      public function flush() : Boolean
      {
         var_1253 = -1;
         var_1009 = null;
         return true;
      }
   }
}
