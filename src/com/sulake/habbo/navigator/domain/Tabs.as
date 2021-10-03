package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_676:int = 6;
      
      public static const const_194:int = 5;
      
      public static const const_681:int = 2;
      
      public static const const_264:int = 9;
      
      public static const const_317:int = 4;
      
      public static const const_238:int = 2;
      
      public static const const_634:int = 4;
      
      public static const const_191:int = 8;
      
      public static const const_600:int = 7;
      
      public static const const_228:int = 3;
      
      public static const const_311:int = 1;
      
      public static const const_196:int = 5;
      
      public static const const_368:int = 12;
      
      public static const const_280:int = 1;
      
      public static const const_554:int = 11;
      
      public static const const_698:int = 3;
      
      public static const const_1582:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_356:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_356 = new Array();
         var_356.push(new Tab(_navigator,const_311,const_368,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_422));
         var_356.push(new Tab(_navigator,const_238,const_280,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_422));
         var_356.push(new Tab(_navigator,const_317,const_554,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_967));
         var_356.push(new Tab(_navigator,const_228,const_194,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_422));
         var_356.push(new Tab(_navigator,const_196,const_191,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_545));
         setSelectedTab(const_311);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_356)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_356)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_356)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_317;
      }
      
      public function get tabs() : Array
      {
         return var_356;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
