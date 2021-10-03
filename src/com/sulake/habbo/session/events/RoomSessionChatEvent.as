package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionChatEvent extends RoomSessionEvent
   {
      
      public static const const_119:String = "RSCE_CHAT_EVENT";
      
      public static const const_90:int = 1;
      
      public static const const_239:int = 4;
      
      public static const const_252:int = 3;
      
      public static const const_96:int = 0;
      
      public static const const_82:int = 2;
       
      
      private var var_1200:int = 0;
      
      private var _userId:int = 0;
      
      private var var_177:String = "";
      
      public function RoomSessionChatEvent(param1:String, param2:IRoomSession, param3:int, param4:String, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param6,param7);
         _userId = param3;
         var_177 = param4;
         var_1200 = param5;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get chatType() : int
      {
         return var_1200;
      }
      
      public function get text() : String
      {
         return var_177;
      }
   }
}
