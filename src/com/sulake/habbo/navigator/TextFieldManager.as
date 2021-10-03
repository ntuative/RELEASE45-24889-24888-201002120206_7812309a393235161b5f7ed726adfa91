package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2293:Boolean;
      
      private var var_1479:int;
      
      private var var_2294:String = "";
      
      private var var_65:ITextFieldWindow;
      
      private var var_2292:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1225:String = "";
      
      private var var_147:IWindowContainer;
      
      private var var_287:Boolean;
      
      private var var_1239:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_65 = param2;
         var_1479 = param3;
         var_1239 = param4;
         if(param5 != null)
         {
            var_287 = true;
            var_1225 = param5;
            var_65.text = param5;
         }
         Util.setProcDirectly(var_65,onInputClick);
         var_65.addEventListener(WindowKeyboardEvent.const_129,checkEnterPress);
         var_65.addEventListener(WindowEvent.const_136,checkMaxLen);
         this.var_2293 = var_65.textBackground;
         this._orgTextBackgroundColor = var_65.textBackgroundColor;
         this.var_2292 = var_65.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1239 != null)
            {
               var_1239();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1225 != null)
         {
            var_65.text = var_1225;
            var_287 = true;
         }
         else
         {
            var_65.text = "";
            var_287 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_65;
      }
      
      public function restoreBackground() : void
      {
         var_65.textBackground = this.var_2293;
         var_65.textBackgroundColor = this._orgTextBackgroundColor;
         var_65.textColor = this.var_2292;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_197)
         {
            return;
         }
         if(!var_287)
         {
            return;
         }
         var_65.text = var_2294;
         var_287 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_147 != null)
         {
            var_147.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_65.textBackground = true;
         var_65.textBackgroundColor = 4294021019;
         var_65.textColor = 4278190080;
         if(this.var_147 == null)
         {
            this.var_147 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_147,"popup_arrow_down",true,null,0);
            IWindowContainer(var_65.parent).addChild(this.var_147);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_147.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_147.findChildByName("border").width = _loc2_.width + 15;
         var_147.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_65.getLocalPosition(_loc3_);
         this.var_147.x = _loc3_.x;
         this.var_147.y = _loc3_.y - this.var_147.height + 3;
         var _loc4_:IWindow = var_147.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_147.width / 2 - _loc4_.width / 2;
         var_147.x += (0 - 0) / 2;
         this.var_147.visible = true;
      }
      
      public function getText() : String
      {
         if(var_287)
         {
            return var_2294;
         }
         return var_65.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_287 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_287 = false;
         var_65.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1479)
         {
            var_65.text = _loc2_.substring(0,var_1479);
         }
      }
   }
}
