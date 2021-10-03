package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomChatHistoryPulldown
   {
      
      public static const const_427:int = 2;
      
      public static const const_289:int = 1;
      
      public static const const_210:int = 0;
      
      public static const const_753:int = 3;
      
      private static const const_740:int = 150;
      
      private static const const_741:int = 250;
      
      public static const const_53:int = 39;
       
      
      private var var_1424:BitmapData;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1426:BitmapData;
      
      private var _window:IWindowContainer;
      
      private var var_1859:int = 0;
      
      private var var_26:IWindowContainer;
      
      private var var_90:IRegionWindow;
      
      private var var_1861:int = 30;
      
      private var var_31:int = -1;
      
      private var var_1858:BitmapData;
      
      private var _widget:RoomChatWidget;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_1860:BitmapData;
      
      private var var_63:IBitmapWrapperWindow;
      
      private var var_1856:BitmapData;
      
      private var var_1857:BitmapData;
      
      private var var_1425:BitmapData;
      
      public function RoomChatHistoryPulldown(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IWindowContainer, param4:IAssetLibrary)
      {
         super();
         _widget = param1;
         _windowManager = param2;
         _assetLibrary = param4;
         var_26 = param3;
         var_1857 = (_assetLibrary.getAssetByName("chat_grapbar_bg") as BitmapDataAsset).content as BitmapData;
         var_1426 = (_assetLibrary.getAssetByName("chat_grapbar_grip") as BitmapDataAsset).content as BitmapData;
         var_1856 = (_assetLibrary.getAssetByName("chat_grapbar_handle") as BitmapDataAsset).content as BitmapData;
         var_1425 = (_assetLibrary.getAssetByName("chat_grapbar_x") as BitmapDataAsset).content as BitmapData;
         var_1424 = (_assetLibrary.getAssetByName("chat_grapbar_x_hi") as BitmapDataAsset).content as BitmapData;
         var_1858 = (_assetLibrary.getAssetByName("chat_grapbar_x_pr") as BitmapDataAsset).content as BitmapData;
         var_1860 = (_assetLibrary.getAssetByName("chat_history_bg") as BitmapDataAsset).content as BitmapData;
         var_63 = _windowManager.createWindow("chat_history_bg","",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_20,HabboWindowParam.const_49,new Rectangle(0,0,param3.width,param3.height - const_53),null,0,0) as IBitmapWrapperWindow;
         var_26.addChild(var_63);
         _window = _windowManager.createWindow("chat_pulldown","",HabboWindowType.const_39,HabboWindowStyle.const_20,HabboWindowParam.const_22,new Rectangle(0,0 - const_53,param3.width,const_53),null,0) as IWindowContainer;
         var_26.addChild(_window);
         var_90 = _windowManager.createWindow("REGIONchat_pulldown","",WindowType.const_374,HabboWindowStyle.const_23,0 | 0 | 0 | 0,new Rectangle(0,0,param3.width,param3.height - const_53),null,0) as IRegionWindow;
         if(var_90 != null)
         {
            var_90.background = true;
            var_90.alphaTreshold = 0;
            var_90.addEventListener(WindowMouseEvent.const_34,onPulldownMouseDown);
            var_26.addChild(var_90);
            var_90.toolTipCaption = "${chat.history.drag.tooltip}";
            var_90.toolTipDelay = 250;
         }
         var _loc5_:XmlAsset = param4.getAssetByName("chat_history_pulldown") as XmlAsset;
         _window.buildFromXML(_loc5_.content as XML);
         _window.addEventListener(WindowMouseEvent.const_34,onPulldownMouseDown);
         var _loc6_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc6_ != null)
         {
            _loc6_.alphaTreshold = 0;
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onCloseButtonClicked);
            _loc6_.addEventListener(WindowMouseEvent.const_78,onCloseButtonMouseUp);
            _loc6_.addEventListener(WindowMouseEvent.const_34,onCloseButtonMouseDown);
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onCloseButtonMouseOver);
            _loc6_.addEventListener(WindowMouseEvent.const_11,onCloseButtonMouseOut);
         }
         _window.background = true;
         _window.color = 0;
         _window.alphaTreshold = 0;
         this.state = const_210;
         buildWindowGraphics();
      }
      
      private function onCloseButtonMouseDown(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1858.clone();
         }
      }
      
      private function onCloseButtonMouseUp(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1424.clone();
         }
      }
      
      public function update(param1:uint) : void
      {
         switch(state)
         {
            case const_427:
               var_63.blend += param1 / const_741;
               _window.blend += param1 / const_741;
               if(false)
               {
                  state = const_289;
               }
               break;
            case const_753:
               var_63.blend = 0 - param1 / const_740;
               _window.blend = 0 - param1 / const_740;
               if(true)
               {
                  state = const_210;
               }
         }
      }
      
      private function onCloseButtonClicked(param1:WindowMouseEvent) : void
      {
         if(_widget != null)
         {
            _widget.onPulldownCloseButtonClicked(param1);
         }
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      private function onCloseButtonMouseOver(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1424.clone();
         }
      }
      
      public function dispose() : void
      {
         if(var_90 != null)
         {
            var_90.dispose();
            var_90 = null;
         }
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_63 != null)
         {
            var_63.dispose();
            var_63 = null;
         }
      }
      
      private function onPulldownMouseDown(param1:WindowMouseEvent) : void
      {
         if(_widget != null)
         {
            _widget.onPulldownMouseDown(param1);
         }
      }
      
      public function set state(param1:int) : void
      {
         if(param1 == var_31)
         {
            return;
         }
         switch(param1)
         {
            case const_289:
               if(var_31 == const_210)
               {
                  this.state = const_427;
               }
               else
               {
                  if(_window == null || var_63 == null)
                  {
                     return;
                  }
                  _window.visible = true;
                  var_63.visible = true;
                  var_90.visible = true;
                  var_31 = param1;
               }
               break;
            case const_210:
               if(_window == null || var_63 == null)
               {
                  return;
               }
               _window.visible = false;
               var_63.visible = false;
               var_90.visible = false;
               var_31 = param1;
               break;
            case const_427:
               if(_window == null || var_63 == null)
               {
                  return;
               }
               _window.blend = 0;
               var_63.blend = 0;
               _window.visible = true;
               var_63.visible = true;
               var_31 = param1;
               break;
            case const_753:
               if(_window == null || var_63 == null)
               {
                  return;
               }
               _window.blend = 1;
               var_63.blend = 1;
               var_31 = param1;
               break;
         }
      }
      
      private function tileBitmapHorz(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc3_:int = param2.width / param1.width;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_ + 1)
         {
            param2.copyPixels(param1,param1.rect,new Point(_loc4_ * param1.width,0));
            _loc4_++;
         }
      }
      
      public function containerResized(param1:Rectangle) : void
      {
         if(_window != null)
         {
            _window.x = 0;
            _window.y = 0 - const_53;
            _window.width = var_26.width;
         }
         if(var_90 != null)
         {
            var_90.x = 0;
            var_90.y = 0 - const_53;
            var_90.width = 0 - var_1861;
         }
         if(var_63 != null)
         {
            var_63.rectangle = var_26.rectangle;
            var_63.height = 0 - const_53;
         }
         buildWindowGraphics();
      }
      
      private function onCloseButtonMouseOut(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1425.clone();
         }
      }
      
      private function buildWindowGraphics() : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(_window == null)
         {
            return;
         }
         if(var_1859 == _window.width)
         {
            return;
         }
         var_1859 = _window.width;
         var _loc1_:IBitmapWrapperWindow = _window.findChildByName("grapBarBg") as IBitmapWrapperWindow;
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         var _loc3_:IBitmapWrapperWindow = _window.findChildByName("grapBarGripL") as IBitmapWrapperWindow;
         var _loc4_:IBitmapWrapperWindow = _window.findChildByName("grapBarGripR") as IBitmapWrapperWindow;
         var _loc5_:IBitmapWrapperWindow = _window.findChildByName("grapBarHandle") as IBitmapWrapperWindow;
         if(_loc2_ != null && _loc5_ != null)
         {
            _loc5_.bitmap = var_1856.clone();
            _loc2_.bitmap = var_1425.clone();
            var_1861 = 0 - _loc2_.x;
         }
         _loc3_.width = _loc5_.x - 5;
         _loc3_.x = 0;
         _loc4_.x = _loc5_.x + _loc5_.width + 5;
         _loc4_.width = _loc2_.x - 5 - _loc4_.x;
         if(_loc3_.width < 0)
         {
            _loc3_.width = 0;
         }
         if(_loc4_.width < 0)
         {
            _loc4_.width = 0;
         }
         if(_loc1_ != null && _loc3_ != null && _loc4_ != null)
         {
            if(_loc1_.width > 0 && _loc1_.height > 0)
            {
               _loc7_ = new BitmapData(_loc1_.width,_loc1_.height);
               tileBitmapHorz(var_1857.clone(),_loc7_);
               _loc1_.bitmap = _loc7_;
            }
            if(_loc3_.width > 0 && _loc3_.height > 0)
            {
               _loc8_ = new BitmapData(_loc3_.width,_loc3_.height);
               tileBitmapHorz(var_1426.clone(),_loc8_);
               _loc3_.bitmap = _loc8_;
            }
            if(_loc4_.width > 0 && _loc4_.height > 0)
            {
               _loc9_ = new BitmapData(_loc4_.width,_loc4_.height);
               tileBitmapHorz(var_1426.clone(),_loc9_);
               _loc4_.bitmap = _loc9_;
            }
         }
         if(var_63 == null)
         {
            return;
         }
         var_63.bitmap = var_1860.clone();
      }
   }
}
