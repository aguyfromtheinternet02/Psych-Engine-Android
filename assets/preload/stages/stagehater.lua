finishedGameover = false;
startedPlaying = false;

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'pitro');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'A');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', '');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
    -- background shit
	makeLuaSprite('stagebackhater', 'stagebackhater', -700, 760);
	setScrollFactor('stagebackhater', 0.9, 0.9);
	
	makeLuaSprite('stagefronthater', 'stagefronthater', -650, 600);
	setScrollFactor('stagefronthater', 0.9, 0.9);
	scaleObject('stagefronthater', 1.1, 1.1);
	
	addLuaSprite('stagebackhater', false);
	addLuaSprite('stagefronthater', false);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('', '', -125, -100);
		setScrollFactor('', 0.9, 0.9);
		scaleObject('', 1.1, 1.1);
		
		makeLuaSprite('', '', 1225, -100);
		setScrollFactor('', 0.9, 0.9);
		scaleObject('', 1.1, 1.1);
		setProperty('', true); --mirror sprite horizontally

		makeLuaSprite('', '', -500, -300);
		setScrollFactor('', 1.3, 1.3);
		scaleObject('', 0.9, 0.9);
	end

	addLuaSprite('stagebackhater', false);
	addLuaSprite('stagefronthater', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end