package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_900:SoundChannel = null;
      
      private var var_723:Boolean;
      
      private var var_901:Sound = null;
      
      private var var_699:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_901 = param1;
         var_901.addEventListener(Event.COMPLETE,onComplete);
         var_699 = 1;
         var_723 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_723;
      }
      
      public function stop() : Boolean
      {
         var_900.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_723 = false;
         var_900 = var_901.play(0);
         this.volume = var_699;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_699;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_900.position;
      }
      
      public function get length() : Number
      {
         return var_901.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_699 = param1;
         if(var_900 != null)
         {
            var_900.soundTransform = new SoundTransform(var_699);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_723 = true;
      }
   }
}
