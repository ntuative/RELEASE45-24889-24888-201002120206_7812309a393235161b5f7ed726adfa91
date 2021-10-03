package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1790:int;
      
      private var var_2174:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_2174 = param1.readString();
         var_1790 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_2174;
      }
      
      public function get userCount() : int
      {
         return var_1790;
      }
   }
}
