package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   
   public class UserInfoFrameCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_873:UserInfoCtrl;
      
      private var _disposed:Boolean;
      
      private var _userId:int;
      
      private var var_46:IFrameWindow;
      
      private var var_43:ModerationManager;
      
      public function UserInfoFrameCtrl(param1:ModerationManager, param2:int)
      {
         super();
         var_43 = param1;
         _userId = param2;
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
         if(var_873 != null)
         {
            var_873.dispose();
            var_873 = null;
         }
         var_43 = null;
      }
      
      public function getId() : String
      {
         return "" + _userId;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1212;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      public function show() : void
      {
         var_46 = IFrameWindow(var_43.getXmlWindow("user_info_frame"));
         var_46.caption = "User Info";
         var _loc1_:IWindow = var_46.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_873 = new UserInfoCtrl(var_46,var_43,"",true);
         var_873.load(var_46.content,_userId);
         var_46.visible = true;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_46;
      }
   }
}
