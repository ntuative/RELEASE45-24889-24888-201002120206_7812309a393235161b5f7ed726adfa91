package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1208:String;
      
      private var _disposed:Boolean;
      
      private var var_1358:String;
      
      private var var_1207:int;
      
      private var var_43:ModerationManager;
      
      private var var_730:IDropMenuWindow;
      
      private var var_387:ITextFieldWindow;
      
      private var var_46:IFrameWindow;
      
      private var var_287:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_43 = param1;
         var_1207 = param2;
         var_1358 = param3;
         var_1208 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_197)
         {
            return;
         }
         if(!var_287)
         {
            return;
         }
         var_387.text = "";
         var_287 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_46;
      }
      
      public function getId() : String
      {
         return var_1358;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_287 || false)
         {
            var_43.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_43.connection.send(new ModMessageMessageComposer(var_1207,var_387.text,var_1208));
         this.dispose();
      }
      
      public function show() : void
      {
         var_46 = IFrameWindow(var_43.getXmlWindow("send_msgs"));
         var_46.caption = "Msg To: " + var_1358;
         var_46.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_387 = ITextFieldWindow(var_46.findChildByName("message_input"));
         var_387.procedure = onInputClick;
         var_730 = IDropMenuWindow(var_46.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_730);
         var_730.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_46.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_46.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_43.initMsg.messageTemplates.length);
         param1.populate(var_43.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_46 != null)
         {
            var_46.destroy();
            var_46 = null;
         }
         var_730 = null;
         var_387 = null;
         var_43 = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_35)
         {
            return;
         }
         var _loc3_:String = var_43.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_287 = false;
            var_387.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1297;
      }
   }
}
