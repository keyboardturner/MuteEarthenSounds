local SoundsToMute = {
	5919534, 5919536, 5919568, 5919570, 5919572, 5919582, 5919588, -- innkeeper
	--6021056, 6021070, -- player sound /bored (not needed for NPCs)
	5919848, 5919846, 5919844, 5919842, 5919839, 5919807, 5919805, 5919803, 5919801, 5919642, -- female bored/yawns
	5919642, 5919640, 5919638, 5919636, 5919634, 5919632, 5919630, 5919628, 5919574, 5919566,-- male bored/yawns
};

local function MuteSounds()
	for k, v in pairs(SoundsToMute) do
		MuteSoundFile(v);
	end
end

-- Mute sounds when the player logs in or reloads the UI
local f = CreateFrame("Frame");
f:RegisterEvent("PLAYER_LOGIN");
f:SetScript("OnEvent", MuteSounds);