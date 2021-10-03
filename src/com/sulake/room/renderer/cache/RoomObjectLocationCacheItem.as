package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_2119:int = -1;
      
      private var var_1297:int = -1;
      
      private var var_688:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_688 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_2119;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_2119 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_688.assign(param1);
         var_688.x = Math.round(var_688.x);
         var_688.y = Math.round(var_688.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1297 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_688;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1297;
      }
   }
}
