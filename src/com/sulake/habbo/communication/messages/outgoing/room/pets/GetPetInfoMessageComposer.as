package com.sulake.habbo.communication.messages.outgoing.room.pets
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class GetPetInfoMessageComposer implements IMessageComposer
   {
       
      
      private var var_1253:int;
      
      public function GetPetInfoMessageComposer(param1:int)
      {
         super();
         var_1253 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1253];
      }
      
      public function dispose() : void
      {
      }
   }
}
