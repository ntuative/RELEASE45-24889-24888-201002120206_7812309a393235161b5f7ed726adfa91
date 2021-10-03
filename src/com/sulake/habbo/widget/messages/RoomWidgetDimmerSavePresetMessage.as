package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_701:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1912:int;
      
      private var var_1911:int;
      
      private var var_2031:Boolean;
      
      private var var_960:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_701);
         var_1911 = param1;
         var_1912 = param2;
         _color = param3;
         var_960 = param4;
         var_2031 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1912;
      }
      
      public function get presetNumber() : int
      {
         return var_1911;
      }
      
      public function get brightness() : int
      {
         return var_960;
      }
      
      public function get apply() : Boolean
      {
         return var_2031;
      }
   }
}
