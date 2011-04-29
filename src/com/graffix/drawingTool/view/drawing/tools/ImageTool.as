package com.graffix.drawingTool.view.drawing.tools
{
	import com.graffix.drawingTool.view.drawing.editors.ImagesGallery;
	import com.graffix.drawingTool.view.drawing.events.ImageToolEvent;
	
	import flash.display.Bitmap;
	import flash.events.Event;
	import flash.utils.setTimeout;
	
	import mx.controls.Image;
	import mx.events.FlexEvent;
	import mx.managers.PopUpManager;

	public class ImageTool extends BaseTool
	{
		public static const IMAGE_TOOL:int = 11;
		public function ImageTool(type:int)
		{
			super(type);
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			_image= new Image();
			addChild(_image);
		}
		public var empty:Boolean = true;
		private var _image:Image;
		public function insertImage(imageSource:Class, width:Number, height:Number):void
		{
			_image.source = imageSource;
			_image.width = width;
			_image.height = height;
			setTimeout(resizeImageToFullSize, 200);
			empty = _image.source ? false : true;
		}
		
		private function resizeImageToFullSize():void
		{
			_image.width = _image.content.loaderInfo.width
			_image.height = _image.content.loaderInfo.height;
		}
		
	
		override protected function showTransform():void
		{
			_transformTool.target = _image;
			_transformTool.registration = _transformTool.boundsCenter;
			_transforming = true;
		}
	}
}