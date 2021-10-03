package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_127:int = 1;
      
      public static const const_1135:int = 3;
      
      public static const const_433:int = 2;
       
      
      private var var_2118:int;
      
      private var var_2114:int;
      
      private var var_2111:int;
      
      private var var_1564:int;
      
      private var var_31:int;
      
      private var var_371:int;
      
      private var var_1268:int;
      
      private var var_2110:int;
      
      private var var_990:int;
      
      private var _roomResources:String;
      
      private var var_2115:int;
      
      private var var_2117:int;
      
      private var var_2116:String;
      
      private var var_2113:String;
      
      private var var_2109:int = 0;
      
      private var var_1215:String;
      
      private var _message:String;
      
      private var var_1863:int;
      
      private var var_2112:String;
      
      private var var_1101:int;
      
      private var var_653:String;
      
      private var var_2108:String;
      
      private var var_1452:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_990 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2109 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2117;
      }
      
      public function set roomName(param1:String) : void
      {
         var_653 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2115 = param1;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_653;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1564 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_31 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2114;
      }
      
      public function get priority() : int
      {
         return var_2118 + var_2109;
      }
      
      public function set issueId(param1:int) : void
      {
         var_2110 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2113;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1452) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1101;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2117 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1268;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2116 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2115;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1564;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2108 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1215 = param1;
      }
      
      public function get issueId() : int
      {
         return var_2110;
      }
      
      public function set priority(param1:int) : void
      {
         var_2118 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2114 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2116;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2111 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2113 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1863 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1215;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1268 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2111;
      }
      
      public function set flatId(param1:int) : void
      {
         var_371 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1101 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1452 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1863;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2112 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1452;
      }
      
      public function get reportedUserId() : int
      {
         return var_990;
      }
      
      public function get flatId() : int
      {
         return var_371;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2108;
      }
      
      public function get reporterUserName() : String
      {
         return var_2112;
      }
   }
}
