package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_456:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_279:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_815:int;
      
      private var var_241:Boolean;
      
      private var var_1741:Boolean;
      
      private var var_1455:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_815 = param2;
         var_1741 = param3;
         var_241 = param4;
         var_1455 = param5;
      }
      
      public function get position() : int
      {
         return var_815;
      }
      
      public function get isActive() : Boolean
      {
         return var_241;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1455;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1741;
      }
   }
}
