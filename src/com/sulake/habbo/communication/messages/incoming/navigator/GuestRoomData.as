package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1790:int;
      
      private var var_1940:String;
      
      private var var_1938:int;
      
      private var var_1942:int;
      
      private var var_697:Boolean;
      
      private var var_1662:Boolean;
      
      private var var_371:int;
      
      private var var_1102:String;
      
      private var var_1659:int;
      
      private var var_1101:int;
      
      private var _ownerName:String;
      
      private var var_653:String;
      
      private var var_1941:int;
      
      private var var_1939:RoomThumbnailData;
      
      private var var_1802:Boolean;
      
      private var var_594:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_594 = new Array();
         super();
         var_371 = param1.readInteger();
         var_697 = param1.readBoolean();
         var_653 = param1.readString();
         _ownerName = param1.readString();
         var_1659 = param1.readInteger();
         var_1790 = param1.readInteger();
         var_1941 = param1.readInteger();
         var_1102 = param1.readString();
         var_1938 = param1.readInteger();
         var_1802 = param1.readBoolean();
         var_1942 = param1.readInteger();
         var_1101 = param1.readInteger();
         var_1940 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_594.push(_loc4_);
            _loc3_++;
         }
         var_1939 = new RoomThumbnailData(param1);
         var_1662 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1941;
      }
      
      public function get roomName() : String
      {
         return var_653;
      }
      
      public function get userCount() : int
      {
         return var_1790;
      }
      
      public function get score() : int
      {
         return var_1942;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1940;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1802;
      }
      
      public function get tags() : Array
      {
         return var_594;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1662;
      }
      
      public function get event() : Boolean
      {
         return var_697;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1101;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1938;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1939;
      }
      
      public function get doorMode() : int
      {
         return var_1659;
      }
      
      public function get flatId() : int
      {
         return var_371;
      }
      
      public function get description() : String
      {
         return var_1102;
      }
   }
}
