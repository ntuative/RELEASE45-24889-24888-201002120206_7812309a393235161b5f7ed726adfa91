package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2085:Date;
      
      private var var_1264:Boolean = false;
      
      private var _type:int;
      
      private var var_347:BitmapData;
      
      private var var_241:Boolean = false;
      
      private var var_1203:int;
      
      private var var_565:int = 1;
      
      private var var_1013:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_347;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_565;
         if(var_565 < 0)
         {
            var_565 = 0;
         }
         var_1013 = var_1203;
         var_241 = false;
         var_1264 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1013 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_241;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_347 = param1;
      }
      
      public function get duration() : int
      {
         return var_1203;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1264;
      }
      
      public function get effectsInInventory() : int
      {
         return var_565;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_347;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_241)
         {
            var_2085 = new Date();
         }
         var_241 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_565 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_241)
         {
            _loc1_ = var_1013 - (new Date().valueOf() - var_2085.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1013;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1264 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1203 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
