package com.tarambola.view.screens
{
	import com.tarambola.model.Classes.Arq;
	import com.tarambola.model.Classes.Constants;
	import com.tarambola.model.Classes.Fonts;
	
	import starling.core.Starling;
	import starling.display.Image;
	import starling.text.BitmapFont;
	import starling.text.TextField;
	import starling.textures.Texture;
	import starling.utils.HAlign;
	import starling.utils.VAlign;

	public class Award extends Screen
	{
		private var _title:TextField;
		private var _subTitle:TextField;
		private var _image:Image;
		
		public function Award()
		{
			super();
			
			this.build();
		}
		private function build():void
		{
			this.alpha=0;
			
			var font:BitmapFont;
			font = Fonts.getInstance().getFont(Constants.FONT_TITLE2);
			this._title = new TextField(1000, 400, "CONGRATS", font.name, 56, 0xFFFFFF);
			this._title.hAlign = HAlign.CENTER;
			this._title.vAlign = VAlign.TOP;
			
			this._title.x = Starling.current.stage.stageWidth/2 - this._title.width/2;
			
			
			this._subTitle = new TextField(1000, 400, "CHECK YOUR EMAIL", font.name, 50, 0xFFFFFF);
			this._subTitle.hAlign = HAlign.CENTER;
			this._subTitle.vAlign = VAlign.TOP;
			
			this._subTitle.x = Starling.current.stage.stageWidth/2 - this._subTitle.width/2;
			this._subTitle.y = Starling.current.stage.stageHeight - this._subTitle.textBounds.height - 360;+100
			
			this._image = new Image(Texture.fromBitmap(Arq.getInstance().model.getImage("congrats.png")));
			this._image.x = Starling.current.stage.stageWidth/2 - this._image.width/2;
			this._image.y = Starling.current.stage.stageHeight/2 - this._image.height/2+100;
			
			this._title.y = this._image.y+15;
			this._subTitle.y = this._image.y+this._image.height-this._subTitle.textBounds.height-70;
			
			this.addChild(this._image);
			this.addChild(this._title);
			this.addChild(this._subTitle);
		}
		public override function init():void
		{
			this._title.text = Arq.getInstance().model.getAwardMSG()[0];
			this._subTitle.text = Arq.getInstance().model.getAwardMSG()[1];
			super.init();
		}
	}
}