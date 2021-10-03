package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_996:Boolean;
      
      private var _name:String;
      
      private var var_2125:String;
      
      private var var_997:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2125 = String(param1.@link);
         var_997 = Boolean(parseInt(param1.@fliph));
         var_996 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_997;
      }
      
      public function get flipV() : Boolean
      {
         return var_996;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2125;
      }
   }
}
