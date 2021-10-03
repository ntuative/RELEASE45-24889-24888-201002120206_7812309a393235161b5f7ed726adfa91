package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_75:Number = 0;
      
      private var var_212:int = 0;
      
      private var var_1882:int = 0;
      
      private var var_2199:Number = 0;
      
      private var var_2200:Number = 0;
      
      private var var_2197:Number = 0;
      
      private var var_2198:Number = 0;
      
      private var var_2201:Boolean = false;
      
      private var var_74:Number = 0;
      
      private var _id:int = 0;
      
      private var var_182:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_182 = [];
         super();
         _id = param1;
         var_74 = param2;
         _y = param3;
         var_75 = param4;
         var_2198 = param5;
         var_212 = param6;
         var_1882 = param7;
         var_2199 = param8;
         var_2200 = param9;
         var_2197 = param10;
         var_2201 = param11;
         var_182 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_75;
      }
      
      public function get dir() : int
      {
         return var_212;
      }
      
      public function get localZ() : Number
      {
         return var_2198;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2201;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1882;
      }
      
      public function get targetX() : Number
      {
         return var_2199;
      }
      
      public function get targetY() : Number
      {
         return var_2200;
      }
      
      public function get targetZ() : Number
      {
         return var_2197;
      }
      
      public function get x() : Number
      {
         return var_74;
      }
      
      public function get actions() : Array
      {
         return var_182.slice();
      }
   }
}
