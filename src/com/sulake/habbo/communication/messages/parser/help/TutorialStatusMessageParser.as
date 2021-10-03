package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_993:Boolean;
      
      private var var_992:Boolean;
      
      private var var_994:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_993;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_992;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_994 = param1.readBoolean();
         var_992 = param1.readBoolean();
         var_993 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_994;
      }
      
      public function flush() : Boolean
      {
         var_994 = false;
         var_992 = false;
         var_993 = false;
         return true;
      }
   }
}
