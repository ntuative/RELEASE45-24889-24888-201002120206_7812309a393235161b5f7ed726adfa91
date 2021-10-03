package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1407:int = 10;
       
      
      private var var_1494:NavigatorSettingsMessageParser;
      
      private var var_1256:int;
      
      private var var_2073:Boolean;
      
      private var var_2068:int;
      
      private var var_838:Dictionary;
      
      private var var_2298:int;
      
      private var var_2072:int;
      
      private var var_1587:int;
      
      private var var_311:Array;
      
      private var var_2071:int;
      
      private var var_562:PublicRoomShortData;
      
      private var var_391:RoomEventData;
      
      private var var_128:MsgWithRequestId;
      
      private var var_2069:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2070:Boolean;
      
      private var var_191:GuestRoomData;
      
      private var var_679:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_311 = new Array();
         var_838 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2068;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2070;
      }
      
      public function startLoading() : void
      {
         this.var_679 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2070 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_391 != null)
         {
            var_391.dispose();
         }
         var_391 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_128 != null && var_128 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_128 != null && var_128 as GuestRoomSearchResultData != null;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_128 = param1;
         var_679 = false;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_128 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_191;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_562 = null;
         var_191 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_562 = param1.publicSpace;
            var_391 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_391 != null)
         {
            var_391.dispose();
            var_391 = null;
         }
         if(var_562 != null)
         {
            var_562.dispose();
            var_562 = null;
         }
         if(var_191 != null)
         {
            var_191.dispose();
            var_191 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1494;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_128 = param1;
         var_679 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_311.length > param1)
         {
            return var_311[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2298 = param1.limit;
         this.var_1256 = param1.favouriteRoomIds.length;
         this.var_838 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_838[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_128 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_311;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_562;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1587 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2073;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_128 = param1;
         var_679 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_311.length)
         {
            if((var_311[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_191 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_679;
      }
      
      public function set categories(param1:Array) : void
      {
         var_311 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_2072;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2071;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1494 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_128 == null)
         {
            return;
         }
         var_128.dispose();
         var_128 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_391;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_838[param1] = !!param2 ? "yes" : null;
         var_1256 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_128 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1587;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_128 != null && var_128 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2073 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2072 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2069 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_191 != null)
         {
            var_191.dispose();
         }
         var_191 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_311)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_191 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1494.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1256 >= var_2298;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2071 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2069;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_191 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2068 = param1;
      }
   }
}
