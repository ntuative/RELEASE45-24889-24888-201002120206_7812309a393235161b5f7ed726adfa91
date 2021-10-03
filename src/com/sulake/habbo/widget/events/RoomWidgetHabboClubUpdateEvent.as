package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_193:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1647:Boolean = false;
      
      private var var_1648:int = 0;
      
      private var var_1649:int = 0;
      
      private var var_1646:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_193,param5,param6);
         var_1646 = param1;
         var_1649 = param2;
         var_1648 = param3;
         var_1647 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1648;
      }
      
      public function get periodsLeft() : int
      {
         return var_1649;
      }
      
      public function get daysLeft() : int
      {
         return var_1646;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1647;
      }
   }
}
