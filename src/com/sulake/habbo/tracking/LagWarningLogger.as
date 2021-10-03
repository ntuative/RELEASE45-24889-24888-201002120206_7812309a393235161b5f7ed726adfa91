package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_974:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1176:Boolean = true;
      
      private var var_1241:int = 0;
      
      private var var_868:int = 0;
      
      private var var_1244:int = 0;
      
      private var var_869:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1243:int = 15;
      
      private var var_158:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1245:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1244 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1176)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_868,var_869);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1241;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_868 == 0 && var_869 == 0;
      }
      
      private function resetLog() : void
      {
         var_868 = 0;
         var_869 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1176)
         {
            return;
         }
         if(getTimer() - var_1244 > var_1245 * 1000 && var_1241 < var_1243)
         {
            var_1244 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_158 = param1;
         var_1245 = int(var_158.getKey("lagwarninglog.interval","60"));
         var_1243 = int(var_158.getKey("lagwarninglog.reportlimit","15"));
         var_1176 = Boolean(int(var_158.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_869 += 1;
            case const_974:
               var_868 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
