package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1962:Array;
      
      private var var_1853:String;
      
      private var var_1961:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1853 = param1;
         var_1962 = param2;
         var_1961 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1853;
      }
      
      public function get yieldList() : Array
      {
         return var_1962;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1961;
      }
   }
}
