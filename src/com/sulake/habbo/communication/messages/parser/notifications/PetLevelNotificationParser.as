package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_538:String;
      
      private var var_1572:int;
      
      private var var_1782:String;
      
      private var var_953:int;
      
      private var var_1253:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1253;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1253 = param1.readInteger();
         var_1782 = param1.readString();
         var_1572 = param1.readInteger();
         var_538 = param1.readString();
         var_953 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1782;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_538;
      }
      
      public function get petType() : int
      {
         return var_953;
      }
      
      public function get level() : int
      {
         return var_1572;
      }
   }
}
