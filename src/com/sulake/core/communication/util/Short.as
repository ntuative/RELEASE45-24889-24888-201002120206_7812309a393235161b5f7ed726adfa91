package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_693:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_693 = new ByteArray();
         var_693.writeShort(param1);
         var_693.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_693.position = 0;
         if(false)
         {
            _loc1_ = var_693.readShort();
            var_693.position = 0;
         }
         return _loc1_;
      }
   }
}
