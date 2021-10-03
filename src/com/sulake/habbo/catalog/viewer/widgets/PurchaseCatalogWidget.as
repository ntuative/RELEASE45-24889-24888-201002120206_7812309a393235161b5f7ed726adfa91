package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1699:XML;
      
      private var var_1386:ITextWindow;
      
      private var var_1384:ITextWindow;
      
      private var var_1697:XML;
      
      private var var_751:IWindowContainer;
      
      private var var_2272:ITextWindow;
      
      private var var_1698:String = "";
      
      private var var_2333:IButtonWindow;
      
      private var var_1700:XML;
      
      private var var_1385:ITextWindow;
      
      private var var_1696:XML;
      
      private var var_752:IButtonWindow;
      
      private var var_68:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_447:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1697) as IWindowContainer;
               break;
            case Offer.const_435:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1696) as IWindowContainer;
               break;
            case Offer.const_442:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1699) as IWindowContainer;
               break;
            case Offer.const_662:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1700) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_751 != null)
            {
               _window.removeChild(var_751);
               var_751.dispose();
            }
            var_751 = _loc2_;
            _window.addChild(_loc2_);
            var_751.x = 0;
            var_751.y = 0;
         }
         var_1385 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1384 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1386 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2272 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_752 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_752 != null)
         {
            var_752.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_752.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_68 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_68,page,var_1698);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1697 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1696 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1699 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1700 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_802,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1698 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_68 = param1.offer;
         attachStub(var_68.priceType);
         if(var_1385 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_68.priceInCredits));
            var_1385.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1384 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_68.priceInPixels));
            var_1384.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1386 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_68.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_68.priceInPixels));
            var_1386.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_752 != null)
         {
            var_752.enable();
         }
      }
   }
}
