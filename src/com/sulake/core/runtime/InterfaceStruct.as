package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_363:uint;
      
      private var var_912:IUnknown;
      
      private var var_1099:String;
      
      private var var_911:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_911 = param1;
         var_1099 = getQualifiedClassName(var_911);
         var_912 = param2;
         var_363 = 0;
      }
      
      public function get iid() : IID
      {
         return var_911;
      }
      
      public function get disposed() : Boolean
      {
         return var_912 == null;
      }
      
      public function get references() : uint
      {
         return var_363;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_363) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_912;
      }
      
      public function get iis() : String
      {
         return var_1099;
      }
      
      public function reserve() : uint
      {
         return ++var_363;
      }
      
      public function dispose() : void
      {
         var_911 = null;
         var_1099 = null;
         var_912 = null;
         var_363 = 0;
      }
   }
}
