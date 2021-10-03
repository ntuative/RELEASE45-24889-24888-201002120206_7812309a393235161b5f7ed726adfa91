package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1572:int;
      
      private var var_1734:int;
      
      private var var_1716:int;
      
      private var var_1717:int;
      
      private var _nutrition:int;
      
      private var var_1253:int;
      
      private var var_1714:int;
      
      private var var_1718:int;
      
      private var _energy:int;
      
      private var var_1713:int;
      
      private var var_1709:int;
      
      private var _ownerName:String;
      
      private var var_1712:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1572;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1734 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1572 = param1;
      }
      
      public function get petId() : int
      {
         return var_1253;
      }
      
      public function get experienceMax() : int
      {
         return var_1718;
      }
      
      public function get nutritionMax() : int
      {
         return var_1717;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1714 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1712;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1253 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1709;
      }
      
      public function get respect() : int
      {
         return var_1734;
      }
      
      public function get levelMax() : int
      {
         return var_1714;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1718 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1716 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1717 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1712 = param1;
      }
      
      public function get experience() : int
      {
         return var_1716;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1709 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1713 = param1;
      }
      
      public function get age() : int
      {
         return var_1713;
      }
   }
}
