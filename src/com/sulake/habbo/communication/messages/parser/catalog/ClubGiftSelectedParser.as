package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ClubGiftSelectedParser implements IMessageParser
   {
       
      
      private var var_2122:String;
      
      private var var_787:String;
      
      private var var_1272:int;
      
      private var var_1255:int;
      
      private var var_1228:String;
      
      public function ClubGiftSelectedParser()
      {
         super();
      }
      
      public function get classId() : int
      {
         return var_1255;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1228 = param1.readString();
         var_2122 = param1.readString();
         var_1255 = param1.readInteger();
         var_787 = param1.readString();
         var_1272 = param1.readInteger();
         return true;
      }
      
      public function get contentType() : String
      {
         return var_2122;
      }
      
      public function get productCode() : String
      {
         return var_1228;
      }
   }
}
