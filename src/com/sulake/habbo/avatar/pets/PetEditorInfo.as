package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1591:Boolean;
      
      private var var_1592:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1591 = Boolean(parseInt(param1.@club));
         var_1592 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1591;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1592;
      }
   }
}
