package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const CATALOG_CLUB:String = "RWOCM_CLUB_MAIN";
      
      public static const const_700:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1682:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_700);
         var_1682 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1682;
      }
   }
}
