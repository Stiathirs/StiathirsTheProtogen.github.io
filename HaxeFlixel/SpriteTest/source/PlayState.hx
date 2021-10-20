package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.tweens.FlxTween;

class PlayState extends FlxState
{
	override public function create()
	{
		bgColor = 0xFFAAAAAA;
		super.create();
		sprite = new FlxSprite();
		sprite.loadGraphic(AssetPaths.protohapp__png);
		sprite.x = 100;
		sprite.y = 0;

		add(sprite);

		FlxTween.tween(sprite, {x: FlxG.width - sprite.width, y: FlxG.height - sprite.height, angle: 360}, 5, {type: FlxTweenType.PINGPONG});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	var sprite:FlxSprite;
}
