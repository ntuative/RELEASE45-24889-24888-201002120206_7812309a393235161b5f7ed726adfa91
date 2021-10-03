package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_806:String = "price_type_none";
      
      public static const const_441:String = "pricing_model_multi";
      
      public static const const_447:String = "price_type_credits";
      
      public static const const_442:String = "price_type_credits_and_pixels";
      
      public static const const_415:String = "pricing_model_bundle";
      
      public static const const_373:String = "pricing_model_single";
      
      public static const const_662:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1303:String = "pricing_model_unknown";
      
      public static const const_435:String = "price_type_pixels";
       
      
      private var var_771:int;
      
      private var _offerId:int;
      
      private var var_770:int;
      
      private var var_368:String;
      
      private var var_529:String;
      
      private var var_1766:int;
      
      private var var_606:ICatalogPage;
      
      private var var_1142:String;
      
      private var var_369:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1142 = param1.localizationId;
         var_771 = param1.priceInCredits;
         var_770 = param1.priceInPixels;
         var_606 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_368;
      }
      
      public function get page() : ICatalogPage
      {
         return var_606;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1766 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_369;
      }
      
      public function get localizationId() : String
      {
         return var_1142;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_770;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1142 = "";
         var_771 = 0;
         var_770 = 0;
         var_606 = null;
         if(var_369 != null)
         {
            var_369.dispose();
            var_369 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_529;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1766;
      }
      
      public function get priceInCredits() : int
      {
         return var_771;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_368 = const_373;
            }
            else
            {
               var_368 = const_441;
            }
         }
         else if(param1.length > 1)
         {
            var_368 = const_415;
         }
         else
         {
            var_368 = const_1303;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_368)
         {
            case const_373:
               var_369 = new SingleProductContainer(this,param1);
               break;
            case const_441:
               var_369 = new MultiProductContainer(this,param1);
               break;
            case const_415:
               var_369 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_368);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_771 > 0 && var_770 > 0)
         {
            var_529 = const_442;
         }
         else if(var_771 > 0)
         {
            var_529 = const_447;
         }
         else if(var_770 > 0)
         {
            var_529 = const_435;
         }
         else
         {
            var_529 = const_806;
         }
      }
   }
}
