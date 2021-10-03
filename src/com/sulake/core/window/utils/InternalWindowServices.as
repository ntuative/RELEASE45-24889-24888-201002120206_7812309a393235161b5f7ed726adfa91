package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_111:DisplayObject;
      
      private var var_2290:uint;
      
      private var var_820:IWindowToolTipAgentService;
      
      private var var_818:IWindowMouseScalingService;
      
      private var var_358:IWindowContext;
      
      private var var_821:IWindowFocusManagerService;
      
      private var var_819:IWindowMouseListenerService;
      
      private var var_822:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2290 = 0;
         var_111 = param2;
         var_358 = param1;
         var_822 = new WindowMouseDragger(param2);
         var_818 = new WindowMouseScaler(param2);
         var_819 = new WindowMouseListener(param2);
         var_821 = new FocusManager(param2);
         var_820 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_818;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_821;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_820;
      }
      
      public function dispose() : void
      {
         if(var_822 != null)
         {
            var_822.dispose();
            var_822 = null;
         }
         if(var_818 != null)
         {
            var_818.dispose();
            var_818 = null;
         }
         if(var_819 != null)
         {
            var_819.dispose();
            var_819 = null;
         }
         if(var_821 != null)
         {
            var_821.dispose();
            var_821 = null;
         }
         if(var_820 != null)
         {
            var_820.dispose();
            var_820 = null;
         }
         var_358 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_819;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_822;
      }
   }
}
