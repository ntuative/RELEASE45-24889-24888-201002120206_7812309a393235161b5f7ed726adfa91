package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1003:int = 0;
      
      private var var_1192:int = 0;
      
      private var var_1908:String = "";
      
      private var var_1004:int = 0;
      
      private var var_1904:String = "";
      
      private var var_1905:int = 0;
      
      private var var_1481:String = "";
      
      private var var_1907:int = 0;
      
      private var var_1903:int = 0;
      
      private var var_1909:String = "";
      
      private var var_1906:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1907 = param1;
         var_1909 = param2;
         var_1481 = param3;
         var_1908 = param4;
         var_1904 = param5;
         if(param6)
         {
            var_1192 = 1;
         }
         else
         {
            var_1192 = 0;
         }
         var_1905 = param7;
         var_1903 = param8;
         var_1004 = param9;
         var_1906 = param10;
         var_1003 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1907,var_1909,var_1481,var_1908,var_1904,var_1192,var_1905,var_1903,var_1004,var_1906,var_1003];
      }
      
      public function dispose() : void
      {
      }
   }
}
