package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_480:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_642:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_246:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1513:Point;
      
      private var var_1514:Rectangle;
      
      private var var_181:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1514 = param2;
         var_1513 = param3;
         var_181 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1514 != null)
         {
            return var_1514.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_181;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1513 != null)
         {
            return var_1513.clone();
         }
         return null;
      }
   }
}
