package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1195:int;
      
      private var var_1528:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1195 = param1;
         var_1528 = param2;
         Logger.log("READ NODE: " + var_1195 + ", " + var_1528);
      }
      
      public function get nodeName() : String
      {
         return var_1528;
      }
      
      public function get nodeId() : int
      {
         return var_1195;
      }
   }
}
