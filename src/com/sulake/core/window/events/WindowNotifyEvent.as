package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1229:String = "WN_CREATED";
      
      public static const const_776:String = "WN_DISABLE";
      
      public static const const_923:String = "WN_DEACTIVATED";
      
      public static const const_772:String = "WN_OPENED";
      
      public static const const_960:String = "WN_CLOSED";
      
      public static const const_937:String = "WN_DESTROY";
      
      public static const const_1536:String = "WN_ARRANGED";
      
      public static const const_429:String = "WN_PARENT_RESIZED";
      
      public static const const_903:String = "WN_ENABLE";
      
      public static const const_767:String = "WN_RELOCATE";
      
      public static const const_931:String = "WN_FOCUS";
      
      public static const const_888:String = "WN_PARENT_RELOCATED";
      
      public static const const_448:String = "WN_PARAM_UPDATED";
      
      public static const const_655:String = "WN_PARENT_ACTIVATED";
      
      public static const const_173:String = "WN_RESIZED";
      
      public static const const_793:String = "WN_CLOSE";
      
      public static const const_847:String = "WN_PARENT_REMOVED";
      
      public static const const_255:String = "WN_CHILD_RELOCATED";
      
      public static const const_564:String = "WN_ENABLED";
      
      public static const const_240:String = "WN_CHILD_RESIZED";
      
      public static const const_865:String = "WN_MINIMIZED";
      
      public static const const_621:String = "WN_DISABLED";
      
      public static const const_199:String = "WN_CHILD_ACTIVATED";
      
      public static const const_372:String = "WN_STATE_UPDATED";
      
      public static const const_524:String = "WN_UNSELECTED";
      
      public static const const_452:String = "WN_STYLE_UPDATED";
      
      public static const const_1548:String = "WN_UPDATE";
      
      public static const const_358:String = "WN_PARENT_ADDED";
      
      public static const const_596:String = "WN_RESIZE";
      
      public static const const_565:String = "WN_CHILD_REMOVED";
      
      public static const const_1441:String = "";
      
      public static const const_982:String = "WN_RESTORED";
      
      public static const const_298:String = "WN_SELECTED";
      
      public static const const_764:String = "WN_MINIMIZE";
      
      public static const const_860:String = "WN_FOCUSED";
      
      public static const const_1277:String = "WN_LOCK";
      
      public static const const_315:String = "WN_CHILD_ADDED";
      
      public static const const_864:String = "WN_UNFOCUSED";
      
      public static const const_458:String = "WN_RELOCATED";
      
      public static const const_882:String = "WN_DEACTIVATE";
      
      public static const const_1151:String = "WN_CRETAE";
      
      public static const const_927:String = "WN_RESTORE";
      
      public static const const_281:String = "WN_ACTVATED";
      
      public static const const_1265:String = "WN_LOCKED";
      
      public static const const_402:String = "WN_SELECT";
      
      public static const const_787:String = "WN_MAXIMIZE";
      
      public static const const_840:String = "WN_OPEN";
      
      public static const const_606:String = "WN_UNSELECT";
      
      public static const const_1527:String = "WN_ARRANGE";
      
      public static const const_1122:String = "WN_UNLOCKED";
      
      public static const const_1545:String = "WN_UPDATED";
      
      public static const const_956:String = "WN_ACTIVATE";
      
      public static const const_1116:String = "WN_UNLOCK";
      
      public static const const_939:String = "WN_MAXIMIZED";
      
      public static const const_866:String = "WN_DESTROYED";
      
      public static const const_994:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1558,cancelable);
      }
   }
}
