package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1101:int = 100;
      
      private static const const_1103:int = 200;
      
      private static const const_1104:int = 180;
      
      public static const const_765:int = 1;
      
      public static const const_381:int = 2;
      
      private static const const_1102:int = 250;
      
      private static const const_759:int = 5;
       
      
      private var var_580:BitmapData;
      
      private var var_293:Timer;
      
      private var var_6:IWindowContainer;
      
      private var var_703:BitmapData;
      
      private var var_294:Timer;
      
      private var var_66:IWindowContainer;
      
      private var var_1541:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_294 = new Timer(const_1102,1);
         var_293 = new Timer(const_1101,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_66 = param1;
         var_66.visible = false;
         _assets = param2;
         var_294.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_293.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_703 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_580 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_66.visible = false;
         var_293.reset();
         var_294.reset();
         if(var_6 != null)
         {
            var_6.removeChild(var_66);
         }
      }
      
      public function hideDelayed() : void
      {
         var_293.reset();
         var_294.reset();
         var_293.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_294 != null)
         {
            var_294.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_294.stop();
            var_294 = null;
         }
         if(var_293 != null)
         {
            var_293.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_293.stop();
            var_293 = null;
         }
         _assets = null;
         var_66 = null;
         var_6 = null;
         var_580 = null;
         var_703 = null;
      }
      
      public function showDelayed() : void
      {
         var_293.reset();
         var_294.reset();
         var_294.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_66 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_6 != null)
         {
            var_6.removeChild(var_66);
         }
         var_6 = param1;
         var_1541 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_66.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_66.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1104,param3.width),Math.min(const_1103,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_66.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_66 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_66.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_765:
               _loc2_.bitmap = var_703.clone();
               _loc2_.width = var_703.width;
               _loc2_.height = var_703.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_381:
               _loc2_.bitmap = var_580.clone();
               _loc2_.width = var_580.width;
               _loc2_.height = var_580.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_293.reset();
         var_294.reset();
         if(var_6 == null)
         {
            return;
         }
         var_66.visible = true;
         var_6.addChild(var_66);
         refreshArrow(var_1541);
         switch(var_1541)
         {
            case const_765:
               var_66.x = 0 - const_759;
               break;
            case const_381:
               var_66.x = var_6.width + const_759;
         }
         var_66.y = (0 - 0) / 2;
      }
   }
}
