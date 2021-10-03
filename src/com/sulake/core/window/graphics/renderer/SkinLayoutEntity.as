package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_233:uint = 1;
      
      public static const const_461:uint = 0;
      
      public static const const_868:uint = 8;
      
      public static const const_226:uint = 4;
      
      public static const const_383:uint = 2;
       
      
      private var var_399:uint;
      
      private var var_1622:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1623:uint;
      
      private var var_90:Rectangle;
      
      private var var_594:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_90 = param3;
         _color = param4;
         var_399 = param5;
         var_1622 = param6;
         var_1623 = param7;
         var_594 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1622;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_399;
      }
      
      public function get scaleV() : uint
      {
         return var_1623;
      }
      
      public function get tags() : Array
      {
         return var_594;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_90 = null;
         var_594 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_90;
      }
   }
}
