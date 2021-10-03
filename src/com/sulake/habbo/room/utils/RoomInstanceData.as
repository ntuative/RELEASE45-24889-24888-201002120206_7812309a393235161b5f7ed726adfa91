package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_831:LegacyWallGeometry = null;
      
      private var var_558:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_559:TileHeightMap = null;
      
      private var var_2037:String = null;
      
      private var _roomId:int = 0;
      
      private var var_830:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_831 = new LegacyWallGeometry();
         var_830 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_559 != null)
         {
            var_559.dispose();
         }
         var_559 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2037 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_831;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_830;
      }
      
      public function dispose() : void
      {
         if(var_559 != null)
         {
            var_559.dispose();
            var_559 = null;
         }
         if(var_831 != null)
         {
            var_831.dispose();
            var_831 = null;
         }
         if(var_830 != null)
         {
            var_830.dispose();
            var_830 = null;
         }
         if(var_558 != null)
         {
            var_558.dispose();
            var_558 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_559;
      }
      
      public function get worldType() : String
      {
         return var_2037;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_558 != null)
         {
            var_558.dispose();
         }
         var_558 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_558;
      }
   }
}
