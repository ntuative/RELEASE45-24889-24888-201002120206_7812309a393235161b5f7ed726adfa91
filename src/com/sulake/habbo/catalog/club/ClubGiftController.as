package com.sulake.habbo.catalog.club
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.widgets.ClubGiftWidget;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetClubGiftInfo;
   import com.sulake.habbo.communication.messages.outgoing.catalog.SelectClubGiftComposer;
   import com.sulake.habbo.session.product.IProductData;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class ClubGiftController
   {
       
      
      private var _widget:ClubGiftWidget;
      
      private var var_967:int;
      
      private var var_1750:int;
      
      private var var_77:HabboCatalog;
      
      private var var_514:Array;
      
      private var _windowManager:IHabboWindowManager;
      
      public function ClubGiftController(param1:HabboCatalog)
      {
         super();
         var_77 = param1;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         if(!var_77)
         {
            return null;
         }
         return var_77.windowManager;
      }
      
      public function set widget(param1:ClubGiftWidget) : void
      {
         _widget = param1;
         var_77.connection.send(new GetClubGiftInfo());
      }
      
      public function getProductData(param1:String) : IProductData
      {
         if(!var_77)
         {
            return null;
         }
         return var_77.getProductData(param1);
      }
      
      public function get giftsAvailable() : int
      {
         return var_967;
      }
      
      public function getOffers() : Array
      {
         return var_514;
      }
      
      public function setInfo(param1:int, param2:int, param3:Array) : void
      {
         var_1750 = param1;
         var_967 = param2;
         var_514 = [];
         if(param3)
         {
            var_514 = param3.slice();
         }
         _widget.update();
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_1750;
      }
      
      public function get assets() : IAssetLibrary
      {
         if(!var_77)
         {
            return null;
         }
         return var_77.assets;
      }
      
      public function get hasClub() : Boolean
      {
         if(!var_77 || !var_77.getPurse())
         {
            return false;
         }
         return var_77.getPurse().clubDays > 0;
      }
      
      public function get localization() : ICoreLocalizationManager
      {
         if(!var_77)
         {
            return null;
         }
         return var_77.localization;
      }
      
      public function selectGift(param1:String) : void
      {
         if(!param1 || !var_77 || true)
         {
            return;
         }
         var_77.connection.send(new SelectClubGiftComposer(param1));
         --var_967;
         _widget.update();
      }
      
      public function dispose() : void
      {
         var_77 = null;
         _windowManager = null;
      }
   }
}
