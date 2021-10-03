package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_675:String = "Rectangle";
      
      public static const const_38:String = "Boolean";
      
      public static const const_637:String = "Number";
      
      public static const const_46:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_590:String = "Point";
      
      public static const const_834:String = "Array";
      
      public static const const_792:String = "uint";
      
      public static const const_369:String = "hex";
      
      public static const const_850:String = "Map";
       
      
      private var var_546:String;
      
      private var var_160:Object;
      
      private var var_2286:Boolean;
      
      private var _type:String;
      
      private var var_1932:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_546 = param1;
         var_160 = param2;
         _type = param3;
         var_1932 = param4;
         var_2286 = param3 == const_850 || param3 == const_834 || param3 == const_590 || param3 == const_675;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_369:
               return "0x" + uint(var_160).toString(16);
            case const_38:
               return Boolean(var_160) == true ? "true" : "false";
            case const_590:
               return "Point(" + Point(var_160).x + ", " + Point(var_160).y + ")";
            case const_675:
               return "Rectangle(" + Rectangle(var_160).x + ", " + Rectangle(var_160).y + ", " + Rectangle(var_160).width + ", " + Rectangle(var_160).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_850:
               _loc3_ = var_160 as Map;
               _loc1_ = "<var key=\"" + var_546 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_834:
               _loc4_ = var_160 as Array;
               _loc1_ = "<var key=\"" + var_546 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_590:
               _loc5_ = var_160 as Point;
               _loc1_ = "<var key=\"" + var_546 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_675:
               _loc6_ = var_160 as Rectangle;
               _loc1_ = "<var key=\"" + var_546 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_46 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_369:
               _loc1_ = "<var key=\"" + var_546 + "\" value=\"" + "0x" + uint(var_160).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_546 + "\" value=\"" + var_160 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_160;
      }
      
      public function get valid() : Boolean
      {
         return var_1932;
      }
      
      public function get key() : String
      {
         return var_546;
      }
   }
}
