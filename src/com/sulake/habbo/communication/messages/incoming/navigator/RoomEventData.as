package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1919:String;
      
      private var var_371:int;
      
      private var var_1920:String;
      
      private var var_1916:String;
      
      private var var_1921:int;
      
      private var var_1918:String;
      
      private var var_1917:int;
      
      private var var_594:Array;
      
      private var var_973:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_594 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_973 = false;
            return;
         }
         this.var_973 = true;
         var_1921 = int(_loc2_);
         var_1920 = param1.readString();
         var_371 = int(param1.readString());
         var_1917 = param1.readInteger();
         var_1919 = param1.readString();
         var_1916 = param1.readString();
         var_1918 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_594.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1917;
      }
      
      public function get eventName() : String
      {
         return var_1919;
      }
      
      public function get eventDescription() : String
      {
         return var_1916;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1920;
      }
      
      public function get tags() : Array
      {
         return var_594;
      }
      
      public function get creationTime() : String
      {
         return var_1918;
      }
      
      public function get exists() : Boolean
      {
         return var_973;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1921;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_594 = null;
      }
      
      public function get flatId() : int
      {
         return var_371;
      }
   }
}
