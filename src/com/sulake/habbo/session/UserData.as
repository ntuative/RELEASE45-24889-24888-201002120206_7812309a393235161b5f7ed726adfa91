package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_538:String = "";
      
      private var var_1893:String = "";
      
      private var var_1895:int = 0;
      
      private var var_1891:int = 0;
      
      private var _type:int = 0;
      
      private var var_1897:String = "";
      
      private var var_1071:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1892:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1895 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1897 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_538 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1071 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1895;
      }
      
      public function set webID(param1:int) : void
      {
         var_1892 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1897;
      }
      
      public function set custom(param1:String) : void
      {
         var_1893 = param1;
      }
      
      public function get figure() : String
      {
         return var_538;
      }
      
      public function get sex() : String
      {
         return var_1071;
      }
      
      public function get custom() : String
      {
         return var_1893;
      }
      
      public function get webID() : int
      {
         return var_1892;
      }
      
      public function set xp(param1:int) : void
      {
         var_1891 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1891;
      }
   }
}
