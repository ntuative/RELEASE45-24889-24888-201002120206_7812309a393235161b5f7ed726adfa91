package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_825:String = "inventory_badges";
      
      public static const const_1125:String = "inventory_clothes";
      
      public static const const_1126:String = "inventory_furniture";
      
      public static const const_527:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_976:String = "inventory_effects";
       
      
      private var var_2210:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_527);
         var_2210 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2210;
      }
   }
}
