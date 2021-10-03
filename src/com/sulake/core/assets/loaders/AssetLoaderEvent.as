package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_844:String = "AssetLoaderEventUnload";
      
      public static const const_26:String = "AssetLoaderEventError";
      
      public static const const_926:String = "AssetLoaderEventOpen";
      
      public static const const_790:String = "AssetLoaderEventProgress";
      
      public static const const_947:String = "AssetLoaderEventStatus";
      
      public static const const_13:String = "AssetLoaderEventComplete";
       
      
      private var var_350:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_350 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_350;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_350);
      }
   }
}
