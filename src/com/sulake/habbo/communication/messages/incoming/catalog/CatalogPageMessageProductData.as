package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_174:String = "e";
      
      public static const const_58:String = "i";
      
      public static const const_59:String = "s";
       
      
      private var var_1018:String;
      
      private var var_1274:String;
      
      private var var_1272:int;
      
      private var var_1972:int;
      
      private var var_1019:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1274 = param1.readString();
         var_1972 = param1.readInteger();
         var_1018 = param1.readString();
         var_1019 = param1.readInteger();
         var_1272 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1019;
      }
      
      public function get productType() : String
      {
         return var_1274;
      }
      
      public function get expiration() : int
      {
         return var_1272;
      }
      
      public function get furniClassId() : int
      {
         return var_1972;
      }
      
      public function get extraParam() : String
      {
         return var_1018;
      }
   }
}
