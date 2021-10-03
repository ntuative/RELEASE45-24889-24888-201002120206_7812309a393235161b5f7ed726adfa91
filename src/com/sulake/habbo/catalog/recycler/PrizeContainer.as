package com.sulake.habbo.catalog.recycler
{
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   
   public class PrizeContainer extends PrizeGridItem
   {
       
      
      private var var_1974:String;
      
      private var var_2325:PrizeGridItem;
      
      private var var_2169:int;
      
      private var _furnitureData:IFurnitureData;
      
      private var var_1527:int;
      
      public function PrizeContainer(param1:String, param2:int, param3:IFurnitureData, param4:int)
      {
         super();
         var_1974 = param1;
         var_1527 = param2;
         _furnitureData = param3;
         var_2169 = param4;
      }
      
      public function get oddsLevelId() : int
      {
         return var_2169;
      }
      
      public function get productItemType() : String
      {
         return var_1974;
      }
      
      public function get title() : String
      {
         if(_furnitureData == null)
         {
            return "";
         }
         return _furnitureData.title;
      }
      
      public function get gridItem() : PrizeGridItem
      {
         return var_2325;
      }
      
      public function setIcon(param1:IRoomEngine) : void
      {
         initProductIcon(param1,_furnitureData.type,var_1527);
      }
      
      public function get productItemTypeId() : int
      {
         return var_1527;
      }
   }
}
