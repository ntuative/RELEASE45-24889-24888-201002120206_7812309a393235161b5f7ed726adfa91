package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1131:int;
      
      private var var_1132:String;
      
      private var var_2077:String;
      
      private var _index:int;
      
      private var var_2076:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1131 = param1;
         var_2077 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1132;
      }
      
      public function get questionId() : int
      {
         return var_1131;
      }
      
      public function get questionText() : String
      {
         return var_2077;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1132 = param1;
         var_2076 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_2076;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
