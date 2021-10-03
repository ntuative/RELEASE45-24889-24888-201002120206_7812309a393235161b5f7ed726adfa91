package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2114:int;
      
      private var var_2207:String;
      
      private var var_1564:int;
      
      private var _disposed:Boolean;
      
      private var var_2206:int;
      
      private var var_1804:String;
      
      private var var_1195:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1804 = param1.readString();
         var_2114 = param1.readInteger();
         var_1564 = param1.readInteger();
         var_2207 = param1.readString();
         var_2206 = param1.readInteger();
         var_1195 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2206;
      }
      
      public function get worldId() : int
      {
         return var_1564;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_1804;
      }
      
      public function get unitPort() : int
      {
         return var_2114;
      }
      
      public function get castLibs() : String
      {
         return var_2207;
      }
      
      public function get nodeId() : int
      {
         return var_1195;
      }
   }
}
