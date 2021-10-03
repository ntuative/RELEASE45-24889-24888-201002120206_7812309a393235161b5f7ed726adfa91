package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_371:int;
      
      private var var_1195:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function get flatId() : int
      {
         return var_371;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_371 = param1.readInteger();
         var_1195 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_371 = 0;
         var_1195 = 0;
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1195;
      }
   }
}
