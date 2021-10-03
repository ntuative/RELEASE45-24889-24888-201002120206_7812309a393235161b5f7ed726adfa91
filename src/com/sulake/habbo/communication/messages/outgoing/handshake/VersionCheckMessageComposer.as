package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1767:String;
      
      private var var_1267:String;
      
      private var var_1768:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1768 = param1;
         var_1267 = param2;
         var_1767 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1768,var_1267,var_1767];
      }
      
      public function dispose() : void
      {
      }
   }
}
