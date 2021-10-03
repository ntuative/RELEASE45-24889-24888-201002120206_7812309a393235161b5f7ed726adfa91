package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1606:Boolean = false;
      
      private var var_1612:Boolean = false;
      
      private var var_1565:String = "";
      
      private var _type:String = "";
      
      private var var_1607:Boolean = false;
      
      private var var_1608:Number = 0;
      
      private var var_1611:Number = 0;
      
      private var var_1610:Number = 0;
      
      private var var_1613:String = "";
      
      private var var_1605:Number = 0;
      
      private var var_1609:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1613 = param2;
         var_1565 = param3;
         var_1611 = param4;
         var_1610 = param5;
         var_1608 = param6;
         var_1605 = param7;
         var_1609 = param8;
         var_1612 = param9;
         var_1607 = param10;
         var_1606 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1609;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1606;
      }
      
      public function get localX() : Number
      {
         return var_1608;
      }
      
      public function get localY() : Number
      {
         return var_1605;
      }
      
      public function get canvasId() : String
      {
         return var_1613;
      }
      
      public function get altKey() : Boolean
      {
         return var_1612;
      }
      
      public function get spriteTag() : String
      {
         return var_1565;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1611;
      }
      
      public function get screenY() : Number
      {
         return var_1610;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1607;
      }
   }
}
