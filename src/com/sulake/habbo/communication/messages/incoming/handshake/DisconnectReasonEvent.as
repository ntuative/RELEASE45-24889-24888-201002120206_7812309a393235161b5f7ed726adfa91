package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1239:String = "DisconnectReasonPeerConnectionLost";
      
      public static const const_941:String = "DisconnectReasonTimeout";
      
      public static const const_490:String = "DisconnectReasonDisconnected";
      
      public static const const_262:String = "DisconnectReasonBanned";
      
      public static const const_883:String = "DisconnectReasonLoggedOut";
      
      public static const const_965:String = "DisconnectReasonConcurrentLogin";
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : String
      {
         var _loc1_:int = (this.var_4 as DisconnectReasonParser).reason;
         switch(_loc1_)
         {
            case -1:
               return const_490;
            case 0:
               return const_490;
            case 1:
               return const_883;
            case 1009:
            case 2:
               return const_965;
            case 3:
               return const_941;
            case 4:
               return const_1239;
            default:
               return const_490;
         }
      }
   }
}
