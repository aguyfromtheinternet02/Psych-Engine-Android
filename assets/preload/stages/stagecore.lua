finishedGameover = false;
startedPlaying = false;

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'pitro');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'A');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', '');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
    -- background shit
	makeLuaSprite('corebg', 'corebg', -800, -500);
	setScrollFactor('corebg', 0.9, 0.9);
	
	makeAnimatedLuaSprite('AMANDDICA','AMANDDICA',-180, 440);
	addAnimationByPrefix('AMANDDICA', 'AMANDDICA', 'BOP', 24, true);
	setScrollFactor('AMANDDICA', 1, 1);
	
	addLuaSprite('corebg', false);
	addLuaSprite('AMANDDICA',false);
	
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

	addLuaSprite('corebg', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	addLuaSprite('', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end