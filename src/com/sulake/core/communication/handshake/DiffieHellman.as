package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1372:BigInteger;
      
      private var var_926:BigInteger;
      
      private var var_1674:BigInteger;
      
      private var var_1373:BigInteger;
      
      private var var_1672:BigInteger;
      
      private var var_1673:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1372 = param1;
         var_1674 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1672.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1373 = new BigInteger();
         var_1373.fromRadix(param1,param2);
         var_1672 = var_1373.modPow(var_926,var_1372);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1673.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_926 = new BigInteger();
         var_926.fromRadix(param1,param2);
         var_1673 = var_1674.modPow(var_926,var_1372);
         return true;
      }
   }
}
