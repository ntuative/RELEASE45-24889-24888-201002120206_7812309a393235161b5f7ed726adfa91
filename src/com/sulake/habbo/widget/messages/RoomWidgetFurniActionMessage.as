package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_229:String = "RWFAM_MOVE";
      
      public static const const_624:String = "RWFUAM_ROTATE";
      
      public static const const_595:String = "RWFAM_PICKUP";
       
      
      private var var_1653:int = 0;
      
      private var var_2134:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1653 = param2;
         var_2134 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1653;
      }
      
      public function get furniCategory() : int
      {
         return var_2134;
      }
   }
}
