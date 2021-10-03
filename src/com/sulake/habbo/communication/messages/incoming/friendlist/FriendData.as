package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_538:String;
      
      private var var_1236:String;
      
      private var var_1237:String;
      
      private var var_1101:int;
      
      private var _gender:int;
      
      private var var_1238:String;
      
      private var _name:String;
      
      private var var_1235:Boolean;
      
      private var var_654:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_654 = param1.readBoolean();
         this.var_1235 = param1.readBoolean();
         this.var_538 = param1.readString();
         this.var_1101 = param1.readInteger();
         this.var_1237 = param1.readString();
         this.var_1236 = param1.readString();
         this.var_1238 = param1.readString();
      }
      
      public function get gender() : int
      {
         return _gender;
      }
      
      public function get realName() : String
      {
         return var_1238;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1237;
      }
      
      public function get categoryId() : int
      {
         return var_1101;
      }
      
      public function get online() : Boolean
      {
         return var_654;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1235;
      }
      
      public function get lastAccess() : String
      {
         return var_1236;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_538;
      }
   }
}
