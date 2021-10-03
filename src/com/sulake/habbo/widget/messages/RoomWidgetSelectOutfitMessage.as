package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_846:String = "select_outfit";
       
      
      private var var_1759:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_846);
         var_1759 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1759;
      }
   }
}
