package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1923:int;
      
      private var var_372:Boolean;
      
      private var var_1922:Boolean;
      
      private var var_797:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1922 = param1.readBoolean();
         if(var_1922)
         {
            var_1923 = param1.readInteger();
            var_372 = param1.readBoolean();
         }
         else
         {
            var_797 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_797 != null)
         {
            var_797.dispose();
            var_797 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1923;
      }
      
      public function get owner() : Boolean
      {
         return var_372;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1922;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_797;
      }
   }
}
