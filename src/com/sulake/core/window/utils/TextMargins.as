package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_876:int;
      
      private var _right:int;
      
      private var var_874:int;
      
      private var var_875:int;
      
      private var var_172:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_874 = param1;
         var_875 = param2;
         _right = param3;
         var_876 = param4;
         var_172 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_876 = param1;
         var_172(this);
      }
      
      public function get left() : int
      {
         return var_874;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_874 == 0 && _right == 0 && var_875 == 0 && var_876 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_875 = param1;
         var_172(this);
      }
      
      public function get top() : int
      {
         return var_875;
      }
      
      public function set left(param1:int) : void
      {
         var_874 = param1;
         var_172(this);
      }
      
      public function get bottom() : int
      {
         return var_876;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_874,var_875,_right,var_876,param1);
      }
      
      public function dispose() : void
      {
         var_172 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_172(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
