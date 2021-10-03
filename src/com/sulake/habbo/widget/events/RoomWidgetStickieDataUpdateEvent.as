package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_714:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_177:String;
      
      private var var_618:String;
      
      private var var_1374:String;
      
      private var var_139:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_139 = param2;
         var_1374 = param3;
         var_177 = param4;
         var_618 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1374;
      }
      
      public function get colorHex() : String
      {
         return var_618;
      }
      
      public function get text() : String
      {
         return var_177;
      }
      
      public function get objectId() : int
      {
         return var_139;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
