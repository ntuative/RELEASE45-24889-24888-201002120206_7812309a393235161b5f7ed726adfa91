package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1183:AssetTypeDeclaration;
      
      private var var_887:String;
      
      private var var_17:Object = null;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1183 = param1;
         var_887 = param2;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1183;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var_17 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         var_17 = param1.content as Object;
      }
      
      public function get content() : Object
      {
         return var_17;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_17 = null;
            var_1183 = null;
            var_887 = null;
         }
      }
      
      public function get url() : String
      {
         return var_887;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + var_17;
      }
   }
}
