package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import flash.utils.getTimer;
   
   public class IssueInfoMessageParser implements IMessageParser
   {
       
      
      private var var_49:IssueMessageData;
      
      public function IssueInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_49 = new IssueMessageData();
         var_49.issueId = param1.readInteger();
         var_49.state = param1.readInteger();
         var_49.categoryId = param1.readInteger();
         var_49.reportedCategoryId = param1.readInteger();
         var_49.timeStamp = getTimer() - param1.readInteger();
         var_49.priority = param1.readInteger();
         var_49.reporterUserId = param1.readInteger();
         var_49.reporterUserName = param1.readString();
         var_49.reportedUserId = param1.readInteger();
         var_49.reportedUserName = param1.readString();
         var_49.pickerUserId = param1.readInteger();
         var_49.pickerUserName = param1.readString();
         var_49.message = param1.readString();
         var_49.chatRecordId = param1.readInteger();
         var_49.roomName = param1.readString();
         var_49.roomType = param1.readInteger();
         if(false)
         {
            var_49.roomResources = param1.readString();
            var_49.unitPort = param1.readInteger();
            var_49.worldId = param1.readInteger();
         }
         if(false)
         {
            var_49.flatType = param1.readString();
            var_49.flatId = param1.readInteger();
            var_49.flatOwnerName = param1.readString();
         }
         return true;
      }
      
      public function get issueData() : IssueMessageData
      {
         return var_49;
      }
      
      public function flush() : Boolean
      {
         var_49 = null;
         return true;
      }
   }
}
