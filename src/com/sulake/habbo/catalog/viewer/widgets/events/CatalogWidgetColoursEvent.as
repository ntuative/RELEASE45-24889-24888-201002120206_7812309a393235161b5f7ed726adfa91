package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1188:Array;
      
      private var var_1635:String;
      
      private var var_1636:String;
      
      private var var_1634:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1188 = param1;
         var_1635 = param2;
         var_1636 = param3;
         var_1634 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1188;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1635;
      }
      
      public function get colourAssetName() : String
      {
         return var_1636;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1634;
      }
   }
}
