package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1205:int;
      
      private var var_920:String;
      
      private var var_629:Array;
      
      private var var_986:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_629.slice();
      }
      
      public function flush() : Boolean
      {
         var_920 = "";
         var_986 = [];
         var_629 = [];
         var_1205 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1205;
      }
      
      public function get question() : String
      {
         return var_920;
      }
      
      public function get choices() : Array
      {
         return var_986.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_920 = param1.readString();
         var_986 = [];
         var_629 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_986.push(param1.readString());
            var_629.push(param1.readInteger());
            _loc3_++;
         }
         var_1205 = param1.readInteger();
         return true;
      }
   }
}
