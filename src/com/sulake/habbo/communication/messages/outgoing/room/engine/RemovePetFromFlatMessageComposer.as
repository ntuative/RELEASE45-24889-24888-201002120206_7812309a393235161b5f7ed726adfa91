package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RemovePetFromFlatMessageComposer implements IMessageComposer
   {
       
      
      private var var_1253:int;
      
      public function RemovePetFromFlatMessageComposer(param1:int)
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
