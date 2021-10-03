package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2266:int;
      
      private var var_2267:int;
      
      private var var_2269:int;
      
      private var var_198:Array;
      
      private var var_2268:int;
      
      private var var_2270:int;
      
      private var var_311:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_311 = new Array();
         this.var_198 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2266;
      }
      
      public function get friends() : Array
      {
         return this.var_198;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2269;
      }
      
      public function get categories() : Array
      {
         return this.var_311;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2267;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2270;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2270 = param1.readInteger();
         this.var_2269 = param1.readInteger();
         this.var_2266 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_311.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_198.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2267 = param1.readInteger();
         this.var_2268 = param1.readInteger();
         return true;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2268;
      }
   }
}
