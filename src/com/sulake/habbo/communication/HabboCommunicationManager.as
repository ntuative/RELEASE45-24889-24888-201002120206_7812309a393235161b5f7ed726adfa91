package com.sulake.habbo.communication
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.CoreComponent;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.communication.enum.HabboConnectionType;
   import com.sulake.habbo.communication.enum.HabboProtocolType;
   import com.sulake.habbo.communication.protocol.WedgieProtocol;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.configuration.enum.HabboConfigurationEvent;
   import com.sulake.habbo.tracking.HabboErrorVariableEnum;
   import com.sulake.iid.IIDCoreCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboCommunicationManager extends Component implements IHabboCommunicationManager, IConnectionStateListener
   {
       
      
      private var var_677:int = 0;
      
      private var var_30:String = "";
      
      private var var_1080:Timer;
      
      private var var_200:Array;
      
      private var var_1599:Boolean = false;
      
      private var var_76:String = "";
      
      private var _habboConfiguration:IHabboConfigurationManager;
      
      private var var_1023:IMessageConfiguration;
      
      private const const_1592:int = 5;
      
      private var var_310:int = -1;
      
      private var var_509:ICoreCommunicationManager;
      
      private var var_731:int = 1;
      
      private var var_1600:Boolean = false;
      
      private var var_1598:Boolean = false;
      
      private var _connection:IConnection;
      
      public function HabboCommunicationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1023 = new HabboMessages();
         var_200 = [];
         var_1080 = new Timer(100,1);
         super(param1,param2,param3);
         this.queueInterface(new IIDCoreCommunicationManager(),onCoreCommunicationManagerInit);
         this.queueInterface(new IIDHabboConfigurationManager(),onHabboConfigurationInit);
      }
      
      public function get port() : int
      {
         if(var_310 < 0 || var_310 >= var_200.length)
         {
            return 0;
         }
         return var_200[var_310];
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] Security Error: " + param1.text);
         ErrorReportStorage.addDebugData("Communication Security Error","SecurityError on connect: " + param1.text + ". Port was " + var_200[var_310]);
         tryNextPort();
      }
      
      private function onConnect(param1:Event) : void
      {
         ErrorReportStorage.addDebugData("Connection","Connected with " + var_731 + " attempts");
      }
      
      private function onConfigurationReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         Logger.log("Habbo Communication Manager: init based on configuration: " + _habboConfiguration);
         if(_habboConfiguration == null)
         {
            Core.crash("Received configuration ready event but configuration was null",CoreComponent.const_891);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Ready");
            var_200 = [];
            var_30 = _habboConfiguration.getKey("connection.info.host","fused37-public-proxy-1.hotel.varoke.net");
            _loc2_ = _habboConfiguration.getKey("connection.info.port","25001");
            _loc3_ = _loc2_.split(",");
            for each(_loc4_ in _loc3_)
            {
               var_200.push(parseInt(_loc4_.replace(" ","")));
            }
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Host: " + var_30);
            Logger.log("Connection Host: " + var_30);
            Logger.log("Connection Ports: " + var_200);
            Logger.log("Habbo Connection Info:" + _connection);
            var_1600 = true;
            if(var_1598)
            {
               nextPort();
            }
         }
      }
      
      public function messageReceived(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1165,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1223,param1 + " " + param2);
         if(false)
         {
            var_76 += ",R:" + param1;
         }
         else
         {
            var_76 = "R:" + param1;
         }
         if(false)
         {
            var_76 = var_76.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_76);
      }
      
      private function nextPort() : void
      {
         var _loc1_:* = null;
         ++var_310;
         if(var_310 >= var_200.length)
         {
            ++var_731;
            ErrorReportStorage.addDebugData("ConnectionRetry","Connection attempt " + var_731);
            if(var_731 > const_1592)
            {
               if(var_1599)
               {
                  return;
               }
               var_1599 = true;
               _loc1_ = this.context as CoreComponent;
               if(_loc1_ != null)
               {
                  _loc1_.error("Connection failed to host " + var_30 + " ports " + var_200,true,CoreComponent.const_563);
                  return;
               }
               throw new Error("Connection failed to host " + var_30 + " ports " + var_200);
            }
            var_310 = 0;
         }
         _connection.timeout = var_731 * 5000;
         _connection.init(var_30,var_200[var_310]);
      }
      
      private function onTryNextPort(param1:TimerEvent) : void
      {
         var_1080.stop();
         nextPort();
      }
      
      public function get mode() : int
      {
         return var_677;
      }
      
      public function addHabboConnectionMessageEvent(param1:IMessageEvent) : void
      {
         return var_509.addConnectionMessageEvent(HabboConnectionType.const_217,param1);
      }
      
      public function initConnection(param1:String) : void
      {
         switch(param1)
         {
            case HabboConnectionType.const_217:
               if(_habboConfiguration == null)
               {
                  Core.crash("Tried to connect to proxy but configuration was null",CoreComponent.const_563);
                  return;
               }
               if(_connection == null)
               {
                  Core.crash("Tried to connect to proxy but connection was null",CoreComponent.const_563);
                  return;
               }
               var_1598 = true;
               if(var_1600)
               {
                  nextPort();
               }
               break;
            default:
               Logger.log("Unknown Habbo Connection Type: " + param1);
         }
      }
      
      public function habboWebLogin(param1:String, param2:String) : IHabboWebLogin
      {
         var _loc3_:String = "";
         _loc3_ = _habboConfiguration.getKey("url.prefix",_loc3_);
         _loc3_ = _loc3_.replace("http://","");
         _loc3_ = _loc3_.replace("https://","");
         return new HabboWebLogin(param1,param2,_loc3_);
      }
      
      public function connectionInit(param1:String, param2:int) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1286,param1);
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1185,String(param2));
      }
      
      public function messageSent(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1268,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1137,param1 + " " + param2);
         if(false)
         {
            var_76 += ",S:" + param1;
         }
         else
         {
            var_76 = "S:" + param1;
         }
         if(false)
         {
            var_76 = var_76.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_76);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] IO Error: " + param1.text);
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         ErrorReportStorage.addDebugData("Communication IO Error","IOError " + param1.type + " on connect: " + param1.text + ". Port was " + var_200[var_310]);
         tryNextPort();
      }
      
      public function set mode(param1:int) : void
      {
         var_677 = param1;
      }
      
      private function onCoreCommunicationManagerInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         Logger.log("Habbo Communication Manager: Core Communication Manager found:: " + [param1,param2]);
         if(param2 != null)
         {
            var_509 = param2 as ICoreCommunicationManager;
            var_509.connectionStateListener = this;
            var_509.registerProtocolType(HabboProtocolType.const_843,WedgieProtocol);
            _connection = var_509.createConnection(HabboConnectionType.const_217,ConnectionType.const_777);
            _loc3_ = var_509.getProtocolInstanceOfType(HabboProtocolType.const_843);
            _connection.registerMessageClasses(var_1023);
            _connection.protocol = _loc3_;
            _connection.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
            _connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
            _connection.addEventListener(Event.CONNECT,onConnect);
         }
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Received");
            _habboConfiguration = param2 as IHabboConfigurationManager;
            (_habboConfiguration as Component).events.addEventListener(HabboConfigurationEvent.INIT,onConfigurationReady);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config NOT received");
         }
      }
      
      private function tryNextPort() : void
      {
         var_1080.addEventListener(TimerEvent.TIMER,onTryNextPort);
         var_1080.start();
      }
      
      public function getHabboMainConnection(param1:Function) : IConnection
      {
         return !!var_509 ? var_509.queueConnection(HabboConnectionType.const_217,param1) : null;
      }
   }
}
