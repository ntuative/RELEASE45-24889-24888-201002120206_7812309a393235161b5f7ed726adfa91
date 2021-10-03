package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1577:String = "e";
      
      public static const const_1473:String = "i";
      
      public static const const_1447:String = "s";
       
      
      private var _id:int;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2179:int;
      
      private var var_1188:Array;
      
      private var var_2176:int;
      
      private var var_2177:int;
      
      private var var_2178:int;
      
      private var _name:String;
      
      private var var_2180:int;
      
      private var var_1102:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2179 = param4;
         var_2180 = param5;
         var_2176 = param6;
         var_2177 = param7;
         var_2178 = param8;
         var_1188 = param9;
         _title = param10;
         var_1102 = param11;
      }
      
      public function get tileSizeY() : int
      {
         return var_2177;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2178;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_2180;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2179;
      }
      
      public function get tileSizeX() : int
      {
         return var_2176;
      }
      
      public function get colours() : Array
      {
         return var_1188;
      }
      
      public function get description() : String
      {
         return var_1102;
      }
   }
}
