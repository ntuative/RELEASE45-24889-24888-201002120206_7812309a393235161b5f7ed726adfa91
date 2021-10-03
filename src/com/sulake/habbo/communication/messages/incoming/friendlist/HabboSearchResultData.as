package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2282:Boolean;
      
      private var var_2284:int;
      
      private var var_2281:Boolean;
      
      private var var_1423:String;
      
      private var var_1238:String;
      
      private var var_1587:int;
      
      private var var_1851:String;
      
      private var var_2283:String;
      
      private var var_1850:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1587 = param1.readInteger();
         this.var_1423 = param1.readString();
         this.var_1851 = param1.readString();
         this.var_2282 = param1.readBoolean();
         this.var_2281 = param1.readBoolean();
         param1.readString();
         this.var_2284 = param1.readInteger();
         this.var_1850 = param1.readString();
         this.var_2283 = param1.readString();
         this.var_1238 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1238;
      }
      
      public function get avatarName() : String
      {
         return this.var_1423;
      }
      
      public function get avatarId() : int
      {
         return this.var_1587;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2282;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2283;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1850;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2281;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1851;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2284;
      }
   }
}
