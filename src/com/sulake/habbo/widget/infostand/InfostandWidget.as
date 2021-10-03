package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetBadgeImageUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetCommandsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserBadgesUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserFigureUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserTagsUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class InfostandWidget extends RoomWidgetBase
   {
       
      
      private var var_1596:Array;
      
      private const const_1384:String = "infostand_user_view";
      
      private var var_270:InfoStandPetView;
      
      private var var_1119:InfoStandPetData;
      
      private var var_113:Timer;
      
      private var var_729:InfoStandFurniView;
      
      private var var_406:InfostandFurniData;
      
      private var var_309:InfoStandBotView;
      
      private var _mainContainer:IWindowContainer;
      
      private const const_1385:String = "infostand_bot_view";
      
      private var _config:IHabboConfigurationManager;
      
      private const const_1383:String = "infostand_pet_view";
      
      private const const_1386:String = "infostand_furni_view";
      
      private const const_1591:int = 3000;
      
      private var var_173:InfoStandUserView;
      
      private var var_390:InfostandUserData;
      
      public function InfostandWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param4;
         var_729 = new InfoStandFurniView(this,const_1386);
         var_173 = new InfoStandUserView(this,const_1384);
         var_270 = new InfoStandPetView(this,const_1383);
         var_309 = new InfoStandBotView(this,const_1385);
         var_390 = new InfostandUserData();
         var_406 = new InfostandFurniData();
         var_1119 = new InfoStandPetData();
         var_113 = new Timer(const_1591);
         var_113.addEventListener(TimerEvent.TIMER,onUpdateTimer);
         mainContainer.visible = false;
      }
      
      private function onUserTags(param1:RoomWidgetUserTagsUpdateEvent) : void
      {
         if(param1.isOwnUser)
         {
            var_1596 = param1.tags;
         }
         if(param1.userId != userData.userId)
         {
            return;
         }
         if(param1.isOwnUser)
         {
            var_173.setTags(param1.tags);
         }
         else
         {
            var_173.setTags(param1.tags,var_1596);
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_297,onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_206,onClose);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_241,onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_110,onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_187,onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_198,onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,onBotInfo);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_579,onFurniInfo);
         param1.addEventListener(RoomWidgetUserTagsUpdateEvent.const_135,onUserTags);
         param1.addEventListener(RoomWidgetUserFigureUpdateEvent.const_122,onUserFigureUpdate);
         param1.addEventListener(RoomWidgetUserBadgesUpdateEvent.const_101,onUserBadges);
         param1.addEventListener(RoomWidgetBadgeImageUpdateEvent.const_626,onBadgeImage);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.const_120,onPetInfo);
         param1.addEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,onPetCommands);
         super.registerUpdateEvents(param1);
      }
      
      override public function get mainWindow() : IWindow
      {
         return mainContainer;
      }
      
      private function onPetInfo(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         petData.setData(param1);
         userData.petRespectLeft = param1.petRespectLeft;
         var_270.update(petData);
         selectView(const_1383);
         if(var_113)
         {
            var_113.start();
         }
      }
      
      public function get userData() : InfostandUserData
      {
         return var_390;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userData.setData(param1);
         var_173.update(param1);
         selectView(const_1384);
         if(var_113)
         {
            var_113.stop();
         }
      }
      
      private function onUpdateTimer(param1:TimerEvent) : void
      {
         if(var_270 == null)
         {
            return;
         }
         messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_425,var_270.getCurrentPetId()));
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_297,onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_206,onClose);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_241,onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_110,onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_187,onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_198,onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,onBotInfo);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_579,onFurniInfo);
         param1.removeEventListener(RoomWidgetUserTagsUpdateEvent.const_135,onUserTags);
         param1.removeEventListener(RoomWidgetUserFigureUpdateEvent.const_122,onUserFigureUpdate);
         param1.removeEventListener(RoomWidgetUserBadgesUpdateEvent.const_101,onUserBadges);
         param1.removeEventListener(RoomWidgetBadgeImageUpdateEvent.const_626,onBadgeImage);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.const_120,onPetInfo);
         param1.removeEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,onPetCommands);
      }
      
      override public function dispose() : void
      {
         if(var_113)
         {
            var_113.stop();
         }
         var_113 = null;
         if(var_173)
         {
            var_173.dispose();
         }
         var_173 = null;
         if(var_729)
         {
            var_729.dispose();
         }
         var_729 = null;
         if(var_309)
         {
            var_309.dispose();
         }
         var_309 = null;
         if(var_270)
         {
            var_270.dispose();
         }
         var_270 = null;
         super.dispose();
      }
      
      private function onUserBadges(param1:RoomWidgetUserBadgesUpdateEvent) : void
      {
         if(param1.userId != userData.userId)
         {
            return;
         }
         userData.badges = param1.badges;
         var_173.clearBadges();
      }
      
      private function onFurniInfo(param1:RoomWidgetFurniInfoUpdateEvent) : void
      {
         furniData.setData(param1);
         var_729.update(param1);
         selectView(const_1386);
         if(var_113)
         {
            var_113.stop();
         }
      }
      
      private function onBotInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userData.setData(param1);
         var_309.update(param1);
         selectView(const_1385);
         if(var_113)
         {
            var_113.stop();
         }
      }
      
      private function onUserFigureUpdate(param1:RoomWidgetUserFigureUpdateEvent) : void
      {
         if(!param1.isOwnUser)
         {
         }
         if(param1.userId != userData.userId)
         {
            return;
         }
         if(userData.isBot())
         {
            var_309.image = param1.image;
         }
         else
         {
            var_173.image = param1.image;
         }
      }
      
      private function onBadgeImage(param1:RoomWidgetBadgeImageUpdateEvent) : void
      {
         var _loc2_:int = userData.badges.indexOf(param1.badgeID);
         if(_loc2_ >= 0)
         {
            if(userData.isBot())
            {
               var_309.setBadgeImage(_loc2_,param1.badgeImage);
            }
            else
            {
               var_173.setBadgeImage(_loc2_,param1.badgeImage);
            }
            return;
         }
         if(param1.badgeID == userData.groupBadgeId)
         {
            var_173.setGroupBadgeImage(param1.badgeImage);
         }
      }
      
      private function selectView(param1:String) : void
      {
         hideChildren();
         var _loc2_:IWindow = mainContainer.getChildByName(param1) as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = true;
         mainContainer.visible = true;
         mainContainer.width = _loc2_.width;
         mainContainer.height = _loc2_.height;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("infostand_main_container","",HabboWindowType.const_39,HabboWindowStyle.const_23,HabboWindowParam.const_23,new Rectangle(0,0,50,100)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_infostand");
            _mainContainer.background = true;
            _mainContainer.color = 0;
         }
         return _mainContainer;
      }
      
      public function get furniData() : InfostandFurniData
      {
         return var_406;
      }
      
      private function onClose(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         close();
         if(var_113)
         {
            var_113.stop();
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function onRoomObjectRemoved(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:* = false;
         switch(param1.type)
         {
            case RoomWidgetRoomObjectUpdateEvent.const_110:
               _loc2_ = param1.id == var_406.id;
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_241:
               if(var_173 != null && false && var_173.window.visible)
               {
                  _loc2_ = param1.id == var_390.userRoomId;
                  break;
               }
               if(var_270 != null && false && var_270.window.visible)
               {
                  _loc2_ = param1.id == var_1119.roomIndex;
                  break;
               }
               if(var_309 != null && false && var_309.window.visible)
               {
                  _loc2_ = param1.id == var_390.userRoomId;
                  break;
               }
         }
         if(_loc2_)
         {
            close();
         }
      }
      
      public function get petData() : InfoStandPetData
      {
         return var_1119;
      }
      
      public function refreshContainer() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < mainContainer.numChildren)
         {
            _loc1_ = mainContainer.getChildAt(_loc2_);
            if(_loc1_.visible)
            {
               mainContainer.width = _loc1_.width;
               mainContainer.height = _loc1_.height;
            }
            _loc2_++;
         }
      }
      
      private function hideChildren() : void
      {
         var _loc1_:int = 0;
         if(_mainContainer != null)
         {
            _loc1_ = 0;
            while(_loc1_ < _mainContainer.numChildren)
            {
               _mainContainer.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
         }
      }
      
      private function onPetCommands(param1:RoomWidgetPetCommandsUpdateEvent) : void
      {
         var_270.updateEnabledTrainingCommands(param1.id,param1.enabledCommands);
      }
      
      public function close() : void
      {
         hideChildren();
         if(var_113)
         {
            var_113.stop();
         }
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_275,param1.id,param1.category);
         messageListener.processWidgetMessage(_loc2_);
      }
   }
}
