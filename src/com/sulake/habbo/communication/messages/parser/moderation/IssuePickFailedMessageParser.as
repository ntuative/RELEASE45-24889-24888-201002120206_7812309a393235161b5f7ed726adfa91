package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_2113:String;
      
      private var var_2211:int;
      
      private var var_2110:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2110 = param1.readInteger();
         var_2211 = param1.readInteger();
         var_2113 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_2110;
      }
      
      public function get pickerUserId() : int
      {
         return var_2211;
      }
      
      public function get pickerUserName() : String
      {
         return var_2113;
      }
   }
}
