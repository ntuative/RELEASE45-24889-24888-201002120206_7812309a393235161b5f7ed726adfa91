package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_104:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1790:int;
      
      private var var_371:int;
      
      private var var_697:RoomData;
      
      private var var_1712:int;
      
      private var _ownerName:String;
      
      private var var_1960:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_371 = param1.readInteger();
         var_1790 = param1.readInteger();
         var_1960 = param1.readBoolean();
         var_1712 = param1.readInteger();
         _ownerName = param1.readString();
         var_104 = new RoomData(param1);
         var_697 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1790;
      }
      
      public function get event() : RoomData
      {
         return var_697;
      }
      
      public function get room() : RoomData
      {
         return var_104;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_104 != null)
         {
            var_104.dispose();
            var_104 = null;
         }
         if(var_697 != null)
         {
            var_697.dispose();
            var_697 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_371;
      }
      
      public function get ownerId() : int
      {
         return var_1712;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1960;
      }
   }
}
