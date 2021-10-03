package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1094:int = 31;
      
      private static const const_1092:int = 32;
      
      private static const const_751:int = 10;
      
      private static const const_475:int = 20;
       
      
      private var var_521:Boolean = false;
      
      private var var_224:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_224 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_521 = true;
            var_224 = new Array();
            var_224.push(const_1094);
            var_224.push(const_1092);
            return;
         }
         if(param1 > 0 && param1 <= const_751)
         {
            if(var_521)
            {
               var_521 = false;
               var_224 = new Array();
               var_224.push(const_751 + param1);
               var_224.push(const_475 + param1);
               var_224.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(false)
            {
               super.setAnimation(var_224.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
