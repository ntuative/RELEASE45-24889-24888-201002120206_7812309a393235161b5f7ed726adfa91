package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1469:int = 9;
      
      public static const const_1430:int = 4;
      
      public static const const_1530:int = 1;
      
      public static const const_1238:int = 10;
      
      public static const const_1434:int = 2;
      
      public static const const_1194:int = 7;
      
      public static const const_1177:int = 11;
      
      public static const const_1575:int = 3;
      
      public static const const_1206:int = 8;
      
      public static const const_1188:int = 5;
      
      public static const const_1416:int = 6;
      
      public static const const_1347:int = 12;
       
      
      private var var_2212:String;
      
      private var _roomId:int;
      
      private var var_1140:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2212;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1140 = param1.readInteger();
         var_2212 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1140;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
