package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_293:String = "WE_CHILD_RESIZED";
      
      public static const const_1343:String = "WE_CLOSE";
      
      public static const const_1155:String = "WE_DESTROY";
      
      public static const const_136:String = "WE_CHANGE";
      
      public static const const_1202:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1490:String = "WE_PARENT_RESIZE";
      
      public static const const_71:String = "WE_UPDATE";
      
      public static const const_1313:String = "WE_MAXIMIZE";
      
      public static const const_377:String = "WE_DESTROYED";
      
      public static const const_992:String = "WE_UNSELECT";
      
      public static const const_1255:String = "WE_MAXIMIZED";
      
      public static const const_1550:String = "WE_UNLOCKED";
      
      public static const const_336:String = "WE_CHILD_REMOVED";
      
      public static const const_144:String = "WE_OK";
      
      public static const const_27:String = "WE_RESIZED";
      
      public static const const_1237:String = "WE_ACTIVATE";
      
      public static const const_253:String = "WE_ENABLED";
      
      public static const const_460:String = "WE_CHILD_RELOCATED";
      
      public static const const_1310:String = "WE_CREATE";
      
      public static const const_534:String = "WE_SELECT";
      
      public static const const_143:String = "";
      
      public static const const_1557:String = "WE_LOCKED";
      
      public static const const_1425:String = "WE_PARENT_RELOCATE";
      
      public static const const_1443:String = "WE_CHILD_REMOVE";
      
      public static const const_1428:String = "WE_CHILD_RELOCATE";
      
      public static const const_1480:String = "WE_LOCK";
      
      public static const const_197:String = "WE_FOCUSED";
      
      public static const const_654:String = "WE_UNSELECTED";
      
      public static const const_778:String = "WE_DEACTIVATED";
      
      public static const const_1182:String = "WE_MINIMIZED";
      
      public static const const_1456:String = "WE_ARRANGED";
      
      public static const const_1495:String = "WE_UNLOCK";
      
      public static const const_1426:String = "WE_ATTACH";
      
      public static const const_1321:String = "WE_OPEN";
      
      public static const const_1154:String = "WE_RESTORE";
      
      public static const const_1523:String = "WE_PARENT_RELOCATED";
      
      public static const const_1132:String = "WE_RELOCATE";
      
      public static const const_1565:String = "WE_CHILD_RESIZE";
      
      public static const const_1586:String = "WE_ARRANGE";
      
      public static const const_1261:String = "WE_OPENED";
      
      public static const const_1272:String = "WE_CLOSED";
      
      public static const const_1576:String = "WE_DETACHED";
      
      public static const const_1429:String = "WE_UPDATED";
      
      public static const const_1335:String = "WE_UNFOCUSED";
      
      public static const const_362:String = "WE_RELOCATED";
      
      public static const const_1203:String = "WE_DEACTIVATE";
      
      public static const const_179:String = "WE_DISABLED";
      
      public static const const_593:String = "WE_CANCEL";
      
      public static const const_502:String = "WE_ENABLE";
      
      public static const const_1319:String = "WE_ACTIVATED";
      
      public static const const_1139:String = "WE_FOCUS";
      
      public static const const_1459:String = "WE_DETACH";
      
      public static const const_1186:String = "WE_RESTORED";
      
      public static const const_1184:String = "WE_UNFOCUS";
      
      public static const const_35:String = "WE_SELECTED";
      
      public static const const_1291:String = "WE_PARENT_RESIZED";
      
      public static const const_1288:String = "WE_CREATED";
      
      public static const const_1521:String = "WE_ATTACHED";
      
      public static const const_1285:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1558:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1322:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1558 = param3;
         var_1322 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1322;
      }
      
      public function get related() : IWindow
      {
         return var_1558;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1322 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
