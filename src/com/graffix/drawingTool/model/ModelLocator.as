package com.graffix.drawingTool.model
{
	import com.graffix.drawingTool.vo.Settings;
	import com.graffix.drawingTool.vo.User;

	[Bindable]
	public class ModelLocator
	{
		
		private static var __instance:ModelLocator = null;
		
		public static function getInstance():ModelLocator
		{
			if (__instance == null)
			{
				__instance = new ModelLocator();
			}
			return __instance;
		}
		
		public function ModelLocator()
		{
			if (__instance)
			{
				throw new Error("Only one instance of model should be instantiated!");
			}
			settings = new Settings();
			user = new User();
		}
		
		public var settings:Settings;
		
		public var message:String;
		
		public var initStatus:String = "connecting";
		
		public var username:String;
		
		public var currentState:String = "InitState";
		
		public var user:User;
	}
}