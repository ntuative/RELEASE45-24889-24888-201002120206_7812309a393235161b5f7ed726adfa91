package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectWidgetRequestEvent extends RoomObjectEvent
   {
      
      public static const const_108:String = "ROWRE_WIDGET_REQUEST_DIMMER";
      
      public static const const_105:String = "ROWRE_WIDGET_REQUEST_PLACEHOLDER";
      
      public static const ROOM_OBJECT_WIDGET_REQUEST_PRESENT:String = "ROWRE_WIDGET_REQUEST_PRESENT";
      
      public static const const_73:String = "ROWRE_WIDGET_REMOVE_DIMMER";
      
      public static const const_104:String = "ROWRE_WIDGET_REQUEST_ECOTRONBOX";
      
      public static const const_95:String = "ROWRE_WIDGET_REQUEST_CREDITFURNI";
      
      public static const const_102:String = "ROWRE_WIDGET_REQUEST_STICKIE";
      
      public static const const_94:String = "ROWRE_WIDGET_REQUEST_TROPHY";
       
      
      public function RoomObjectWidgetRequestEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
