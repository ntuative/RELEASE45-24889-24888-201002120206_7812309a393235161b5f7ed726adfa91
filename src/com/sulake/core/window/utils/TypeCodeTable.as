package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_677;
         param1["bitmap"] = const_520;
         param1["border"] = const_713;
         param1["border_notify"] = const_1366;
         param1["button"] = const_346;
         param1["button_thick"] = const_493;
         param1["button_icon"] = const_1180;
         param1["button_group_left"] = const_518;
         param1["button_group_center"] = const_536;
         param1["button_group_right"] = const_572;
         param1["canvas"] = const_688;
         param1["checkbox"] = const_640;
         param1["closebutton"] = const_808;
         param1["container"] = const_302;
         param1["container_button"] = const_497;
         param1["display_object_wrapper"] = const_656;
         param1["dropmenu"] = const_409;
         param1["dropmenu_item"] = const_357;
         param1["frame"] = const_312;
         param1["frame_notify"] = const_1283;
         param1["header"] = const_511;
         param1["icon"] = const_805;
         param1["itemgrid"] = const_904;
         param1["itemgrid_horizontal"] = const_356;
         param1["itemgrid_vertical"] = const_657;
         param1["itemlist"] = const_873;
         param1["itemlist_horizontal"] = const_273;
         param1["itemlist_vertical"] = const_286;
         param1["maximizebox"] = const_1172;
         param1["menu"] = const_1264;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_957;
         param1["minimizebox"] = const_1173;
         param1["notify"] = const_1290;
         param1["MouseCursorType"] = const_710;
         param1["password"] = const_599;
         param1["radiobutton"] = const_498;
         param1["region"] = const_374;
         param1["restorebox"] = const_1189;
         param1["scaler"] = const_875;
         param1["scaler_horizontal"] = const_1124;
         param1["scaler_vertical"] = const_1234;
         param1["scrollbar_horizontal"] = const_401;
         param1["scrollbar_vertical"] = const_566;
         param1["scrollbar_slider_button_up"] = const_801;
         param1["scrollbar_slider_button_down"] = const_813;
         param1["scrollbar_slider_button_left"] = const_885;
         param1["scrollbar_slider_button_right"] = const_853;
         param1["scrollbar_slider_bar_horizontal"] = const_830;
         param1["scrollbar_slider_bar_vertical"] = const_938;
         param1["scrollbar_slider_track_horizontal"] = const_897;
         param1["scrollbar_slider_track_vertical"] = const_950;
         param1["scrollable_itemlist"] = const_1217;
         param1["scrollable_itemlist_vertical"] = const_385;
         param1["scrollable_itemlist_horizontal"] = const_826;
         param1["selector"] = const_711;
         param1["selector_list"] = const_633;
         param1["submenu"] = const_957;
         param1["tab_button"] = const_644;
         param1["tab_container_button"] = const_919;
         param1["tab_context"] = const_342;
         param1["tab_content"] = const_838;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_615;
         param1["input"] = const_625;
         param1["toolbar"] = const_1214;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
