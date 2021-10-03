package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2101:int;
      
      private var var_1306:String;
      
      private var var_2104:int;
      
      private var var_2103:int;
      
      private var var_2100:int;
      
      private var var_2102:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1306;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2102;
      }
      
      public function get responseType() : int
      {
         return var_2103;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2104;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1306 = param1.readString();
         var_2104 = param1.readInteger();
         var_2101 = param1.readInteger();
         var_2100 = param1.readInteger();
         var_2103 = param1.readInteger();
         var_2102 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2101;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2100;
      }
   }
}
