package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1713:int;
      
      private var var_538:String;
      
      private var var_1572:int;
      
      private var var_1734:int;
      
      private var var_1716:int;
      
      private var var_2138:int;
      
      private var _nutrition:int;
      
      private var var_1253:int;
      
      private var var_2137:int;
      
      private var var_2139:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1712:int;
      
      private var var_2140:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2138;
      }
      
      public function flush() : Boolean
      {
         var_1253 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2137;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2139;
      }
      
      public function get maxNutrition() : int
      {
         return var_2140;
      }
      
      public function get figure() : String
      {
         return var_538;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1734;
      }
      
      public function get petId() : int
      {
         return var_1253;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1253 = param1.readInteger();
         _name = param1.readString();
         var_1572 = param1.readInteger();
         var_2137 = param1.readInteger();
         var_1716 = param1.readInteger();
         var_2139 = param1.readInteger();
         _energy = param1.readInteger();
         var_2138 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2140 = param1.readInteger();
         var_538 = param1.readString();
         var_1734 = param1.readInteger();
         var_1712 = param1.readInteger();
         var_1713 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1716;
      }
      
      public function get ownerId() : int
      {
         return var_1712;
      }
      
      public function get age() : int
      {
         return var_1713;
      }
   }
}
