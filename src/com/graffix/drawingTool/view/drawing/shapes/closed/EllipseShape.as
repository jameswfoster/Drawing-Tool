package com.graffix.drawingTool.view.drawing.shapes.closed
{
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;

	public class EllipseShape extends ClosedFigureBaseShape
	{
		public function EllipseShape()
		{
			super();
			_type=ELLIPSE_SHAPE;
		}
		public static const ELLIPSE_SHAPE:int = 3;
		
		override public function draw():void
		{
			_spriteToDraw.graphics.clear();
			if(_hasFill)
			{
				_spriteToDraw.graphics.beginFill(_fillColor);
			}else
			{
				_spriteToDraw.graphics.beginFill(_fillColor, 0);
			}
			_spriteToDraw.graphics.lineStyle( _lineSize, _lineColor );
			_spriteToDraw.graphics.drawEllipse( (_shapeDrawData as Rectangle).x, (_shapeDrawData as Rectangle).y, (_shapeDrawData as Rectangle).width, (_shapeDrawData as Rectangle).height );
		}
	}
}