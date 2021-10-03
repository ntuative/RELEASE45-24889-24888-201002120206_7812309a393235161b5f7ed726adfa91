package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1244:String = "F";
      
      public static const const_816:String = "M";
       
      
      private var var_74:Number = 0;
      
      private var var_538:String = "";
      
      private var var_1894:int = 0;
      
      private var var_1893:String = "";
      
      private var var_1895:int = 0;
      
      private var var_1891:int = 0;
      
      private var var_1897:String = "";
      
      private var var_1071:String = "";
      
      private var _id:int = 0;
      
      private var var_186:Boolean = false;
      
      private var var_212:int = 0;
      
      private var var_1896:String = "";
      
      private var _name:String = "";
      
      private var var_1892:int = 0;
      
      private var _y:Number = 0;
      
      private var var_75:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_75;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_212;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_186)
         {
            var_212 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_186)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1894;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_186)
         {
            var_1895 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1896;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_186)
         {
            var_1897 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_186)
         {
            var_1896 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_186)
         {
            var_1891 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_186)
         {
            var_538 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_186)
         {
            var_1894 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_186)
         {
            var_1071 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1895;
      }
      
      public function get groupID() : String
      {
         return var_1897;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_186)
         {
            var_1892 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_186)
         {
            var_1893 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_186 = true;
      }
      
      public function get sex() : String
      {
         return var_1071;
      }
      
      public function get figure() : String
      {
         return var_538;
      }
      
      public function get webID() : int
      {
         return var_1892;
      }
      
      public function get custom() : String
      {
         return var_1893;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_186)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_186)
         {
            var_75 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_186)
         {
            var_74 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_74;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1891;
      }
   }
}
