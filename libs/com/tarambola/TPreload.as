﻿package com .tarambola{	import flash.display.CapsStyle;	import flash.display.Graphics;	import flash.display.JointStyle;	import flash.display.LineScaleMode;	import flash.display.MovieClip;	import flash.display.Shape;	import flash.display.Sprite;		import mx.effects.easing.Circular;
		public class TPreload extends MovieClip	{		private var m:Shape;		private var r:Number;		private var angle:Number=-Math.PI/2;		private var t:CircularLoad = new CircularLoad();				public function TPreload():void		{			addChild(this.t);			this.m = new Shape();			this.m.graphics.lineStyle(1, 0xFFD700);			this.m.graphics.beginFill(0x123456);			this.m.graphics.moveTo(this.t.preGlow.x, this.t.preGlow.y-r);			addChild(this.m);			this.t.preGlow.mask = this.m;			this.r = this.t.preGlow.width/2+10;						}		public function drawLoad(prc:Number):void		{				this.t.perc.text=prc.toString().concat("%");				var __x:Number = this.t.preGlow.x + Math.cos(angle) * r;				var __y:Number = this.t.preGlow.y + Math.sin(angle) * r;				//this.m.graphics.lineTo(__x,__y);				var xc:uint=300;				var yc:uint=0;				if(prc>0.25)					yc=100;				if(prc>0.5)					xc=200				if(prc>0.75)					yc=0;						this.m.graphics.curveTo(xc, yc, __x, __y);				angle=-Math.PI/2+((3.28+Math.PI)*prc)/100;				trace(__x + "<---xxxx");		}		public function ma():void		{					}	}}						   