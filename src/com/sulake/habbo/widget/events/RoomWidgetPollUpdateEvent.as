package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_100:String = "RWPUW_CONTENT";
      
      public static const const_109:String = "RWPUW_OFFER";
      
      public static const const_45:String = "RWPUW_ERROR";
       
      
      private var var_922:Array = null;
      
      private var var_1103:String = "";
      
      private var var_1078:String;
      
      private var var_1104:String = "";
      
      private var var_921:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
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
