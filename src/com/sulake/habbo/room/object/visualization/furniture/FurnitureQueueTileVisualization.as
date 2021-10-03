package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1065:int = 1;
      
      private static const const_1092:int = 3;
      
      private static const const_1064:int = 2;
      
      private static const const_1066:int = 15;
       
      
      private var var_808:int;
      
      private var var_224:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_224 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1064)
         {
            var_224 = new Array();
            var_224.push(const_1065);
            var_808 = const_1066;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_808 > 0)
         {
            --var_808;
         }
         if(var_808 == 0)
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
