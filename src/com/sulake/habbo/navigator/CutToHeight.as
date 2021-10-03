package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_160:String;
      
      private var var_400:int;
      
      private var var_177:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_160 = param1;
         var_177 = param2;
         var_400 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_177.text = var_160.substring(0,param1) + "...";
         return var_177.textHeight > var_400;
      }
   }
}
