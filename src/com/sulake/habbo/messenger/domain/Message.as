package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_557:int = 2;
      
      public static const const_770:int = 6;
      
      public static const const_589:int = 1;
      
      public static const const_591:int = 3;
      
      public static const const_912:int = 4;
      
      public static const const_683:int = 5;
       
      
      private var var_1615:String;
      
      private var var_980:int;
      
      private var var_1616:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_980 = param2;
         var_1616 = param3;
         var_1615 = param4;
      }
      
      public function get time() : String
      {
         return var_1615;
      }
      
      public function get senderId() : int
      {
         return var_980;
      }
      
      public function get messageText() : String
      {
         return var_1616;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
