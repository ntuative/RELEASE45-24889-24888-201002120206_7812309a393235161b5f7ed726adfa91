package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class RoomChatHistoryViewer implements IDisposable
   {
      
      private static const const_1009:int = 18;
      
      private static const const_466:int = 20;
      
      public static const const_951:int = 3;
       
      
      private var var_1366:Boolean = false;
      
      private var _isDisposed:Boolean = false;
      
      private var var_1085:Boolean = false;
      
      private var var_1154:Boolean = false;
      
      private var var_312:Number = 1;
      
      private var _widget:RoomChatWidget;
      
      private var var_271:Boolean = false;
      
      private var var_201:Number = -1;
      
      private var var_138:RoomChatHistoryPulldown;
      
      private var var_36:IScrollbarWindow;
      
      public function RoomChatHistoryViewer(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IWindowContainer, param4:IAssetLibrary)
      {
         super();
         _isDisposed = false;
         _widget = param1;
         var_138 = new RoomChatHistoryPulldown(param1,param2,param3,param4);
         var_138.state = RoomChatHistoryPulldown.const_210;
         var _loc5_:IItemListWindow = param3.getChildByName("chat_contentlist") as IItemListWindow;
         if(_loc5_ == null)
         {
            return;
         }
         param3.removeChild(_loc5_);
         param3.addChild(_loc5_);
         var_36 = param2.createWindow("chatscroller","",HabboWindowType.const_899,HabboWindowStyle.const_23,0 | 0,new Rectangle(param3.rectangle.right - const_466,param3.y,const_466,param3.height - 0),null,0) as IScrollbarWindow;
         param3.addChild(var_36);
         var_36.visible = false;
         var_36.scrollable = _loc5_ as IScrollableWindow;
      }
      
      public function get scrollbarWidth() : Number
      {
         return !!var_271 ? Number(const_466) : Number(0);
      }
      
      private function onStageMouseUp(param1:MouseEvent) : void
      {
         cancelDrag();
         if(_widget != null)
         {
            _widget.mouseUp();
         }
      }
      
      private function processDrag(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         if(var_201 > 0 && param2)
         {
            if(var_1085)
            {
               if(Math.abs(param1 - var_201) <= const_951)
               {
                  return;
               }
               var_1085 = false;
            }
            if(!var_271)
            {
               _widget.resizeContainerToLowestItem();
               showHistoryViewer();
               moveHistoryScroll();
            }
            if(var_271)
            {
               moveHistoryScroll();
               _loc4_ = var_36.scrollable.scrollableRegion.height / var_36.scrollable.visibleRegion.height;
               _loc5_ = (param1 - var_201) / 0;
               _loc3_ = var_312 - _loc5_ / _loc4_;
               _loc3_ = Math.max(0,_loc3_);
               _loc3_ = Math.min(1,_loc3_);
               _loc6_ = param1 - var_201;
               _loc7_ = true;
               _loc8_ = true;
               if(var_36.scrollV < 1 - const_1009 / var_36.scrollable.scrollableRegion.height)
               {
                  _loc8_ = false;
               }
               if(_loc8_ || var_1366)
               {
                  _widget.stretchAreaBottomBy(_loc6_);
                  _loc7_ = false;
                  var_36.scrollV = 1;
               }
               if(_loc7_)
               {
                  var_312 = _loc3_;
               }
               var_201 = param1;
            }
         }
         else
         {
            var_201 = -1;
         }
      }
      
      public function beginDrag(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var_201 = param1;
         var_1366 = param2;
         var_1085 = true;
         if(var_36 != null)
         {
            var_312 = var_36.scrollV;
         }
         if(var_36 != null)
         {
            _loc3_ = var_36.context.getDesktopWindow().getDisplayObject();
            if(_loc3_ != null)
            {
               _loc4_ = _loc3_.stage;
               if(_loc4_ != null)
               {
                  _loc4_.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  _loc4_.addEventListener(MouseEvent.MOUSE_UP,onStageMouseUp);
               }
            }
         }
      }
      
      public function update(param1:uint) : void
      {
         if(var_138 != null)
         {
            var_138.update(param1);
         }
         moveHistoryScroll();
      }
      
      public function get active() : Boolean
      {
         return var_271;
      }
      
      public function showHistoryViewer() : void
      {
         if(!var_271 && !var_1154)
         {
            var_271 = true;
            setHistoryViewerScrollbar(true);
            var_138.state = RoomChatHistoryPulldown.const_289;
            if(_widget != null)
            {
               _widget.reAlignItemsToHistoryContent();
               _widget.disableDragTooltips();
            }
         }
      }
      
      private function setHistoryViewerScrollbar(param1:Boolean) : void
      {
         if(var_36 != null)
         {
            var_36.visible = param1;
            if(param1)
            {
               var_36.scrollV = 1;
               var_312 = 1;
            }
            else
            {
               var_271 = false;
               var_201 = -1;
            }
         }
      }
      
      public function toggleHistoryViewer() : void
      {
         if(var_271)
         {
            hideHistoryViewer();
         }
         else
         {
            showHistoryViewer();
         }
      }
      
      public function cancelDrag() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var_201 = -1;
         if(var_36 != null)
         {
            _loc1_ = var_36.context.getDesktopWindow().getDisplayObject();
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.stage;
               if(_loc2_ != null)
               {
                  _loc2_.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  _loc2_.removeEventListener(MouseEvent.MOUSE_UP,onStageMouseUp);
               }
            }
         }
      }
      
      public function dispose() : void
      {
         hideHistoryViewer();
         if(var_36 != null)
         {
            var_36.dispose();
            var_36 = null;
         }
         if(var_138 != null)
         {
            var_138.dispose();
            var_138 = null;
         }
         _isDisposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(var_138 == null)
         {
            return;
         }
         var_138.state = param1 == true ? 0 : int(RoomChatHistoryPulldown.const_210);
      }
      
      public function containerResized(param1:Rectangle, param2:Boolean = false) : void
      {
         if(var_36 != null)
         {
            var_36.x = param1.x + param1.width - 0;
            var_36.y = param1.y;
            var_36.height = param1.height - 0;
            if(param2)
            {
               var_36.scrollV = var_312;
            }
         }
         if(var_138 != null)
         {
            var_138.containerResized(param1);
         }
      }
      
      private function moveHistoryScroll() : void
      {
         if(!var_271)
         {
            return;
         }
         if(var_201 == -1)
         {
            return;
         }
         if(var_1366)
         {
            return;
         }
         var _loc1_:Number = var_312 - 0;
         if(_loc1_ == 0)
         {
            return;
         }
         if(Math.abs(_loc1_) < 0.01)
         {
            var_36.scrollV = var_312;
         }
         else
         {
            var_36.scrollV += _loc1_ / 2;
         }
      }
      
      public function get pulldownBarHeight() : Number
      {
         return RoomChatHistoryPulldown.const_53;
      }
      
      public function set disabled(param1:Boolean) : void
      {
         var_1154 = param1;
      }
      
      public function get visible() : Boolean
      {
         if(var_138 == null)
         {
            return false;
         }
         return true || true;
      }
      
      public function hideHistoryViewer() : void
      {
         var_312 = 1;
         cancelDrag();
         var_271 = false;
         setHistoryViewerScrollbar(false);
         var_138.state = RoomChatHistoryPulldown.const_210;
         if(_widget != null)
         {
            _widget.resetArea();
            _widget.enableDragTooltips();
         }
      }
      
      private function onStageMouseMove(param1:MouseEvent) : void
      {
         processDrag(param1.stageY,param1.buttonDown);
      }
   }
}
