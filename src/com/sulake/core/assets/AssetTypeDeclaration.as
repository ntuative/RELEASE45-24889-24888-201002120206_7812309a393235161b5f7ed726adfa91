package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1688:Class;
      
      private var var_1689:Class;
      
      private var var_1690:String;
      
      private var var_1106:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1690 = param1;
         var_1689 = param2;
         var_1688 = param3;
         if(rest == null)
         {
            var_1106 = new Array();
         }
         else
         {
            var_1106 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1688;
      }
      
      public function get assetClass() : Class
      {
         return var_1689;
      }
      
      public function get mimeType() : String
      {
         return var_1690;
      }
      
      public function get fileTypes() : Array
      {
         return var_1106;
      }
   }
}
