package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_351:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_361:int = 0;
      
      public static const const_852:int = 2;
      
      public static const const_879:int = 1;
      
      public static const const_576:Boolean = false;
      
      public static const const_622:String = "";
      
      public static const const_338:int = 0;
      
      public static const const_355:int = 0;
      
      public static const const_416:int = 0;
       
      
      private var var_2021:int = 0;
      
      private var var_1666:String = "";
      
      private var var_1500:int = 0;
      
      private var var_2023:int = 0;
      
      private var var_2024:Number = 0;
      
      private var var_1670:int = 255;
      
      private var var_2022:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2021;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1500 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2024;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2023 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2021 = param1;
      }
      
      public function get tag() : String
      {
         return var_1666;
      }
      
      public function get alpha() : int
      {
         return var_1670;
      }
      
      public function get ink() : int
      {
         return var_1500;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2024 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2023;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2022 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2022;
      }
      
      public function set tag(param1:String) : void
      {
         var_1666 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1670 = param1;
      }
   }
}
