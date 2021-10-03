package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_323:Number = 0.5;
      
      private static const const_734:int = 3;
      
      private static const const_1044:Number = 1;
       
      
      private var var_1809:Boolean = false;
      
      private var var_1816:Boolean = false;
      
      private var var_950:int = 0;
      
      private var var_239:Vector3d = null;
      
      private var var_1813:int = 0;
      
      private var var_1812:int = 0;
      
      private var var_1815:Boolean = false;
      
      private var var_1814:int = -2;
      
      private var var_1808:Boolean = false;
      
      private var var_1807:int = 0;
      
      private var var_1811:int = -1;
      
      private var var_374:Vector3d = null;
      
      private var var_1810:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1813;
      }
      
      public function get targetId() : int
      {
         return var_1811;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1807 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1813 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1809 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1811 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1816 = param1;
      }
      
      public function dispose() : void
      {
         var_374 = null;
         var_239 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_374 == null)
         {
            var_374 = new Vector3d();
         }
         var_374.assign(param1);
         var_950 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1814;
      }
      
      public function get screenHt() : int
      {
         return var_1810;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1812 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_239;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1810 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1807;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1809;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1816;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_374 != null && var_239 != null)
         {
            ++var_950;
            _loc2_ = Vector3d.dif(var_374,var_239);
            if(_loc2_.length <= const_323)
            {
               var_239 = var_374;
               var_374 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_323 * (const_734 + 1))
               {
                  _loc2_.mul(const_323);
               }
               else if(var_950 <= const_734)
               {
                  _loc2_.mul(const_323);
               }
               else
               {
                  _loc2_.mul(const_1044);
               }
               var_239 = Vector3d.sum(var_239,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1815 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1812;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1808 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1814 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_239 != null)
         {
            return;
         }
         var_239 = new Vector3d();
         var_239.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1815;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1808;
      }
   }
}
