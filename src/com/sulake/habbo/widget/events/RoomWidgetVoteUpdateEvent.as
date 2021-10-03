package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_111:String = "RWPUE_VOTE_RESULT";
      
      public static const const_112:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1205:int;
      
      private var var_920:String;
      
      private var var_629:Array;
      
      private var var_986:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_920 = param2;
         var_986 = param3;
         var_629 = param4;
         if(var_629 == null)
         {
            var_629 = [];
         }
         var_1205 = param5;
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
