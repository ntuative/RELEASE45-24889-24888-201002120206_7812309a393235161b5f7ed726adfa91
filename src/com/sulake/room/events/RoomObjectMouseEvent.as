package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1477:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1470:String = "ROE_MOUSE_ENTER";
      
      public static const const_391:String = "ROE_MOUSE_MOVE";
      
      public static const const_1512:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_212:String = "ROE_MOUSE_CLICK";
      
      public static const const_449:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1607:Boolean;
      
      private var var_1606:Boolean;
      
      private var var_1612:Boolean;
      
      private var var_1609:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1612 = param4;
         var_1609 = param5;
         var_1607 = param6;
         var_1606 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1606;
      }
      
      public function get altKey() : Boolean
      {
         return var_1612;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1609;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1607;
      }
   }
}
