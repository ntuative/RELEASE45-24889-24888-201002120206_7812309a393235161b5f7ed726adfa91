package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_100:String = "RSPE_POLL_CONTENT";
      
      public static const const_109:String = "RSPE_POLL_OFFER";
      
      public static const const_45:String = "RSPE_POLL_ERROR";
       
      
      private var var_922:Array = null;
      
      private var var_1103:String = "";
      
      private var var_1078:String;
      
      private var var_1104:String = "";
      
      private var var_921:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_922;
      }
      
      public function get startMessage() : String
      {
         return var_1103;
      }
      
      public function get summary() : String
      {
         return var_1078;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1103 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_921 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1078 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_921;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1104 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1104;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_922 = param1;
      }
   }
}
