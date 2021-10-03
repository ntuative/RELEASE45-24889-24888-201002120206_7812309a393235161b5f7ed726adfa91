package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_515:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_249:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_515,param2,param3);
         var_249 = param1;
      }
      
      public function get effects() : Array
      {
         return var_249;
      }
   }
}
