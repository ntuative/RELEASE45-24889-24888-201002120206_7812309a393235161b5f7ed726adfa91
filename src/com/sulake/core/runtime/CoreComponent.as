package com.sulake.core.runtime
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.AssetLibraryCollection;
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.utils.LibraryLoader;
   import com.sulake.core.utils.LibraryLoaderEvent;
   import com.sulake.core.utils.profiler.ProfilerViewer;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   
   public final class CoreComponent extends ComponentContext implements ICore
   {
      
      private static const const_114:uint = 3;
      
      private static const const_1080:String = "library";
      
      public static const const_1354:int = 6;
      
      private static const const_1086:String = "library";
      
      public static const const_1226:int = 99;
      
      private static const const_1083:String = "library";
      
      private static const const_1081:String = "zip-libraries";
      
      public static const const_1143:int = 7;
      
      public static const const_891:int = 1;
      
      public static const const_1145:int = 10;
      
      public static const const_1243:int = 2;
      
      private static const const_1087:String = "library";
      
      private static const const_1082:String = "asset-libraries";
      
      public static const const_1138:int = 5;
      
      public static const const_1181:int = 20;
      
      public static const const_563:int = 30;
      
      public static const const_612:int = 4;
      
      public static const const_1329:int = 3;
      
      private static const const_1084:String = "service-libraries";
      
      private static const const_1085:String = "component-libraries";
       
      
      private var var_1504:Number = 0;
      
      private var var_257:uint;
      
      private var var_258:Array;
      
      private var var_254:uint;
      
      private var var_111:DisplayObjectContainer;
      
      private var var_685:IEventDispatcher;
      
      private var var_846:Profiler;
      
      private var var_221:Array;
      
      private var var_255:Array;
      
      private var var_479:Array;
      
      private var var_566:Array;
      
      private var var_256:Array;
      
      private var var_684:ProfilerViewer;
      
      public function CoreComponent(param1:DisplayObjectContainer, param2:uint)
      {
         super(this,Component.COMPONENT_FLAG_CONTEXT,new AssetLibraryCollection("_core_assets"));
         var_1326 = (param2 & 0) == Core.CORE_SETUP_DEBUG;
         var_479 = new Array();
         var_566 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < CoreComponent.const_114)
         {
            var_479.push(new Array());
            var_566.push(0);
            _loc3_++;
         }
         var_257 = getTimer();
         attachComponent(this,[new IIDCore()]);
         var_111 = param1;
         switch(param2 & 0)
         {
            case Core.const_1170:
               debug("Core; using simple frame update handler");
               var_111.addEventListener(Event.ENTER_FRAME,simpleFrameUpdateHandler);
               break;
            case Core.const_820:
               debug("Core; using complex frame update handler");
               var_111.addEventListener(Event.ENTER_FRAME,complexFrameUpdateHandler);
               break;
            case Core.const_1336:
               debug("Core; using profiler frame update handler");
               var_111.addEventListener(Event.ENTER_FRAME,profilerFrameUpdateHandler);
               var_846 = new Profiler(this);
               attachComponent(var_846,[new IIDProfiler()]);
               var_684 = new ProfilerViewer();
               var_111.addChild(var_684);
               break;
            case Core.CORE_SETUP_DEBUG:
               debug("Core; using debug frame update handler");
               var_111.addEventListener(Event.ENTER_FRAME,debugFrameUpdateHandler);
         }
      }
      
      private function debugFrameUpdateHandler(param1:Event) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc2_:uint = getTimer();
         var _loc3_:uint = _loc2_ - var_257;
         var_257 = _loc2_;
         _loc4_ = 0;
         while(_loc4_ < CoreComponent.const_114)
         {
            var_566[_loc4_] = 0;
            _loc5_ = var_479[_loc4_];
            _loc8_ = 0;
            _loc7_ = uint(_loc5_.length);
            while(_loc8_ != _loc7_)
            {
               _loc6_ = IUpdateReceiver(_loc5_[_loc8_]);
               if(_loc6_ == null || _loc6_.disposed)
               {
                  _loc5_.splice(_loc8_,1);
                  _loc7_--;
               }
               else
               {
                  _loc6_.update(_loc3_);
                  _loc8_++;
               }
            }
            _loc4_++;
         }
      }
      
      public function getLastErrorMessage() : String
      {
         return var_889;
      }
      
      override public function error(param1:String, param2:Boolean, param3:int = -1, param4:Error = null) : void
      {
         if(param2)
         {
            if(param4 != null)
            {
               ErrorReportStorage.setParameter("error_data",String(param4.getStackTrace()));
            }
            ErrorReportStorage.setParameter("error_cat",String(param3));
            ErrorReportStorage.setParameter("error_desc",param1);
         }
         super.error(param1,param2,param3);
         if(param2)
         {
            dispose();
         }
      }
      
      public function initialize() : void
      {
         _events.dispatchEvent(new Event(Component.COMPONENT_EVENT_RUNNING));
         Logger.log(toXMLString());
      }
      
      private function profilerFrameUpdateHandler(param1:Event) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:IUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var event:Event = param1;
         var msCurrentTime:uint = getTimer();
         var msSinceLastUpdate:uint = msCurrentTime - var_257;
         var_257 = msCurrentTime;
         var_846.start();
         criticality = 0;
         while(criticality < CoreComponent.const_114)
         {
            var_566[criticality] = 0;
            receivers = var_479[criticality];
            index = 0;
            length = receivers.length;
            while(index != length)
            {
               receiver = IUpdateReceiver(receivers[index]);
               if(receiver == null || receiver.disposed)
               {
                  receivers.splice(index,1);
                  length--;
               }
               else
               {
                  try
                  {
                     var_846.update(receiver,msSinceLastUpdate);
                  }
                  catch(e:Error)
                  {
                     error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                     return;
                  }
                  index++;
               }
            }
            criticality++;
         }
         var_846.stop();
         var_684.refresh(var_846);
      }
      
      private function complexFrameUpdateHandler(param1:Event) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:IUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var skip:Boolean = false;
         var t:uint = 0;
         var event:Event = param1;
         var msCurrentTime:uint = getTimer();
         var msSinceLastUpdate:uint = msCurrentTime - var_257;
         var maxTimePerFrame:uint = 1000 / DisplayObject(var_111).stage.frameRate;
         var_257 = msCurrentTime;
         criticality = 0;
         while(criticality < CoreComponent.const_114)
         {
            t = getTimer();
            skip = false;
            if(t - msCurrentTime > maxTimePerFrame)
            {
               if(var_566[criticality] < criticality)
               {
                  ++0;
                  skip = true;
               }
            }
            if(!skip)
            {
               var_566[criticality] = 0;
               receivers = var_479[criticality];
               index = 0;
               length = receivers.length;
               while(index != length)
               {
                  receiver = IUpdateReceiver(receivers[index]);
                  if(receiver == null || receiver.disposed)
                  {
                     receivers.splice(index,1);
                     length--;
                  }
                  else
                  {
                     try
                     {
                        receiver.update(msSinceLastUpdate);
                     }
                     catch(e:Error)
                     {
                        trace(e.getStackTrace());
                        error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                        return;
                     }
                     index++;
                  }
               }
            }
            criticality++;
         }
      }
      
      private function simpleFrameUpdateHandler(param1:Event) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:IUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var event:Event = param1;
         var msCurrentTime:uint = getTimer();
         var msSinceLastUpdate:uint = msCurrentTime - var_257;
         var_257 = msCurrentTime;
         criticality = 0;
         while(criticality < CoreComponent.const_114)
         {
            var_566[criticality] = 0;
            receivers = var_479[criticality];
            index = 0;
            length = receivers.length;
            while(index != length)
            {
               receiver = IUpdateReceiver(receivers[index]);
               if(receiver == null || receiver.disposed)
               {
                  receivers.splice(index,1);
                  length--;
               }
               else
               {
                  try
                  {
                     receiver.update(msSinceLastUpdate);
                  }
                  catch(e:Error)
                  {
                     trace(e.getStackTrace());
                     error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                     return;
                  }
                  index++;
               }
            }
            criticality++;
         }
      }
      
      public function loadExternalConfigDocument(param1:URLRequest, param2:IEventDispatcher = null) : void
      {
         var _loc3_:AssetLoaderStruct = _assets.loadAssetFromFile("config.xml",param1);
         debug("Loading config document \"" + _loc3_.assetLoader.url + "\"");
         var_685 = param2;
         _loc3_.addEventListener(AssetLoaderEvent.const_13,configLoadedHandler);
         _loc3_.addEventListener(AssetLoaderEvent.const_26,configLoadedHandler);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(!disposed)
         {
            debug("Disposing core");
            var_111.removeEventListener(Event.ENTER_FRAME,simpleFrameUpdateHandler);
            var_111.removeEventListener(Event.ENTER_FRAME,complexFrameUpdateHandler);
            var_111.removeEventListener(Event.ENTER_FRAME,profilerFrameUpdateHandler);
            var_111 = null;
            _loc3_ = 0;
            while(_loc3_ < CoreComponent.const_114)
            {
               _loc2_ = var_479[_loc3_] as Array;
               _loc1_ = uint(_loc2_.length);
               while(_loc1_-- > 0)
               {
                  _loc2_.pop();
               }
               _loc3_++;
            }
            if(var_221 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_221.pop();
               }
            }
            if(var_256 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_256.pop();
               }
            }
            if(var_258 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_258.pop();
               }
            }
            if(var_255 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_255.pop();
               }
            }
            if(var_684 != null)
            {
               var_684.dispose();
               var_684 = null;
            }
            super.dispose();
         }
      }
      
      public function readConfigDocument(param1:XML, param2:IEventDispatcher = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         debug("Parsing config document");
         var_685 = param2;
         if(var_221 == null)
         {
            var_221 = new Array();
         }
         _loc3_ = param1.child(const_1081)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1080);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_221.push(_loc6_);
               ++var_254;
            }
         }
         if(var_256 == null)
         {
            var_256 = new Array();
         }
         _loc3_ = param1.child(const_1082)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1086);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_256.push(_loc6_);
               ++var_254;
            }
         }
         if(var_258 == null)
         {
            var_258 = new Array();
         }
         _loc3_ = param1.child(const_1084)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1087);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_258.push(_loc6_);
               ++var_254;
            }
         }
         if(var_255 == null)
         {
            var_255 = new Array();
         }
         _loc3_ = param1.child(const_1085)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1083);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_255.push(_loc6_);
               ++var_254;
            }
         }
         updateLoadingProcess();
      }
      
      private function updateLoadingProcess(param1:LibraryLoaderEvent = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 != null)
         {
            if(param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE || param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR)
            {
               _loc2_ = param1.target as LibraryLoader;
               _loc2_.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               _loc3_ = _loc2_.url;
               debug("Loading library \"" + _loc3_ + "\" " + (param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE ? "ready" : "failed\n" + _loc2_.getLastErrorMessage()));
               if(false)
               {
                  if(var_221[0] == _loc3_)
                  {
                     var_1504 = 0;
                     var_221.splice(0,1);
                  }
               }
               if(false)
               {
                  if(var_256[0] == _loc3_)
                  {
                     var_256.splice(0,1);
                  }
               }
               if(false)
               {
                  if(var_258[0] == _loc3_)
                  {
                     var_258.splice(0,1);
                  }
               }
               if(false)
               {
                  if(var_255[0] == _loc3_)
                  {
                     var_255.splice(0,1);
                  }
               }
            }
         }
         if(false)
         {
            _loc3_ = "null";
            _loc2_ = _assets.loadFromArchive(new URLRequest(_loc3_),null);
            if(_loc2_.ready)
            {
               var_221.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading zip library " + _loc3_);
            }
            updateLoadingEventDelegate();
            return;
         }
         if(false)
         {
            _loc3_ = "null";
            _loc4_ = new LoaderContext(false,new ApplicationDomain());
            _loc2_ = _assets.loadFromFile(new URLRequest(_loc3_),true,_loc4_);
            if(_loc2_.ready)
            {
               var_256.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading asset library " + _loc3_);
            }
            updateLoadingEventDelegate();
            return;
         }
         if(false)
         {
            _loc3_ = "null";
            _loc2_ = loadFromFile(new URLRequest(_loc3_),new LoaderContext(false,ApplicationDomain.currentDomain,null));
            if(_loc2_.ready)
            {
               var_258.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading service library " + _loc3_);
            }
            updateLoadingEventDelegate();
            return;
         }
         if(false)
         {
            _loc3_ = "null";
            _loc2_ = loadFromFile(new URLRequest(_loc3_),new LoaderContext(false,ApplicationDomain.currentDomain,null));
            if(_loc2_.ready)
            {
               var_255.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading component library " + _loc3_);
            }
            updateLoadingEventDelegate();
            return;
         }
         updateLoadingEventDelegate();
         debug("All libraries loaded, Core is now running");
      }
      
      private function errorInLoadingProcess(param1:LibraryLoaderEvent = null) : void
      {
         var _loc2_:LibraryLoader = LibraryLoader(param1.target);
         error("Failed to download library \"" + _loc2_.url + "\" HTTP status " + param1.status + ": " + _loc2_.getLastErrorMessage(),true,const_1243);
         updateLoadingProcess(param1);
      }
      
      private function updateLoadingEventDelegate() : void
      {
         var _loc1_:Number = NaN;
         if(var_685)
         {
            _loc1_ = NaN + (var_1504 > 0 ? var_1504 + var_221.length - 1 : var_221.length);
            if(_loc1_ > 0)
            {
               var_685.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,Number(var_254) - _loc1_,Number(var_254)));
            }
            else
            {
               var_685.dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      public function getLastDebugMessage() : String
      {
         return var_2245;
      }
      
      override public function registerUpdateReceiver(param1:IUpdateReceiver, param2:uint) : void
      {
         removeUpdateReceiver(param1);
         param2 = param2 >= CoreComponent.const_114 ? 4294967295 : uint(param2);
         var _loc3_:Array = var_479[param2] as Array;
         _loc3_.push(param1);
      }
      
      private function configLoadedHandler(param1:AssetLoaderEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         _loc2_ = param1.target as AssetLoaderStruct;
         _loc2_.removeEventListener(AssetLoaderEvent.const_13,configLoadedHandler);
         _loc2_.removeEventListener(AssetLoaderEvent.const_26,configLoadedHandler);
         if(param1.type == AssetLoaderEvent.const_13)
         {
            debug("Config document \"" + _loc2_.assetLoader.url + "\" loaded");
            _loc3_ = _assets.getAssetByName(_loc2_.assetName) as XmlAsset;
            _loc4_ = _loc3_.content as XML;
            readConfigDocument(_loc4_,var_685);
         }
         else
         {
            error("Failed to download external configuration document " + _loc2_.assetLoader.url + "!",true,const_891);
            _events.dispatchEvent(new Event(Component.COMPONENT_EVENT_ERROR));
         }
      }
      
      public function get root() : DisplayObjectContainer
      {
         return var_111;
      }
      
      override public function removeUpdateReceiver(param1:IUpdateReceiver) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         while(_loc4_ < CoreComponent.const_114)
         {
            _loc3_ = var_479[_loc4_] as Array;
            _loc2_ = _loc3_.indexOf(param1);
            if(_loc2_ > -1)
            {
               _loc3_[_loc2_] = null;
               return;
            }
            _loc4_++;
         }
      }
   }
}
