package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_538:String;
      
      private var var_2306:String;
      
      private var var_2307:int;
      
      private var var_2308:int;
      
      private var var_1071:String;
      
      private var var_1238:String;
      
      private var _name:String;
      
      private var var_464:int;
      
      private var var_825:int;
      
      private var var_2305:int;
      
      private var _respectTotal:int;
      
      private var var_2309:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2308;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1238;
      }
      
      public function get customData() : String
      {
         return this.var_2306;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_464;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2307;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2309;
      }
      
      public function get figure() : String
      {
         return this.var_538;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_1071;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_538 = param1.readString();
         this.var_1071 = param1.readString();
         this.var_2306 = param1.readString();
         this.var_1238 = param1.readString();
         this.var_2305 = param1.readInteger();
         this.var_2309 = param1.readString();
         this.var_2307 = param1.readInteger();
         this.var_2308 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_825 = param1.readInteger();
         this.var_464 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2305;
      }
      
      public function get respectLeft() : int
      {
         return this.var_825;
      }
   }
}
