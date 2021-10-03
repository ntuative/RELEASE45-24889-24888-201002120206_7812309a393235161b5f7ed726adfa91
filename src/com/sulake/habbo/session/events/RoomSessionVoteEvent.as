package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_111:String = "RSPE_VOTE_RESULT";
      
      public static const const_112:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1205:int = 0;
      
      private var var_920:String = "";
      
      private var var_629:Array;
      
      private var var_986:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_986 = [];
         var_629 = [];
         super(param1,param2,param7,param8);
         var_920 = param3;
         var_986 = param4;
         var_629 = param5;
         if(var_629 == null)
         {
            var_629 = [];
         }
         var_1205 = param6;
      }
      
      public function get votes() : Array
      {
         return var_629.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1205;
      }
      
      public function get question() : String
      {
         return var_920;
      }
      
      public function get choices() : Array
      {
         return var_986.slice();
      }
   }
}
