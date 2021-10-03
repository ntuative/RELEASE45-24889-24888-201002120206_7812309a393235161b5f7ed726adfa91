package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1181:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_790:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1181 = param1;
         var_790 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_790;
      }
      
      public function get identifier() : IID
      {
         return var_1181;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1181 = null;
            while(false)
            {
               var_790.pop();
            }
            var_790 = null;
         }
      }
   }
}
