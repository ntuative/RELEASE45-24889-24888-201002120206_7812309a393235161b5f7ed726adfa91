package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1510:int = -1;
      
      private var var_1282:Boolean;
      
      private var var_1281:String;
      
      private var var_2145:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2145 = String(param1["set-type"]);
         var_1281 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1282 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1510 >= 0;
      }
      
      public function get method_7() : String
      {
         return var_1281;
      }
      
      public function get staticId() : int
      {
         return var_1510;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1510 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1282;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1282 = param1;
      }
      
      public function set method_7(param1:String) : void
      {
         var_1281 = param1;
      }
      
      public function get setType() : String
      {
         return var_2145;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
