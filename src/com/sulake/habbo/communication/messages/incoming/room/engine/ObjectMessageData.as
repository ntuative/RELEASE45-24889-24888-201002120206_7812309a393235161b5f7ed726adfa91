package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_932:int = 0;
      
      private var _data:String = "";
      
      private var var_1435:int = -1;
      
      private var var_31:int = 0;
      
      private var _type:int = 0;
      
      private var var_934:int = 0;
      
      private var var_2350:String = "";
      
      private var var_1887:int = 0;
      
      private var _id:int = 0;
      
      private var var_186:Boolean = false;
      
      private var var_212:int = 0;
      
      private var var_2232:String = null;
      
      private var var_74:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_75:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_186)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_186)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_212;
      }
      
      public function get extra() : int
      {
         return var_1435;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_186)
         {
            var_212 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_186)
         {
            var_74 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_186)
         {
            var_1435 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_75;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_186)
         {
            var_31 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1887;
      }
      
      public function get staticClass() : String
      {
         return var_2232;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_186)
         {
            var_1887 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_186)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_186)
         {
            var_2232 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_186 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_186)
         {
            var_932 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_186)
         {
            var_934 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_186)
         {
            var_75 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_932;
      }
      
      public function get x() : Number
      {
         return var_74;
      }
      
      public function get sizeY() : int
      {
         return var_934;
      }
   }
}
