local NPC = 29455;

if (EVENT == 100) then
	SelectMsg(UID, 2, -1, 1547, NPC, 4226, 102, 4227, -1);
end

if (EVENT == 102) then
	PARA = HowmuchItem(UID, 900000000);
	if (PARA < 1000000) then
		SelectMsg(UID, 2, -1, 11338, NPC, 18, 103);
	else
		PVP = GetPVPMonumentNation(UID);
		if (PVP == 1) then
			Nation = CheckNation(UID);
			if (Nation == 1) then
				ZoneChange(UID, 71, 1346, 853);
			else	
				GoldLose(UID, 1000000);
				ZoneChange(UID, 71, 1346, 853);
			end
		elseif (PVP == 2) then
			Nation = CheckNation(UID);
			if (Nation == 2) then
				ZoneChange(UID, 71, 1346, 853);
			else	
				GoldLose(UID, 1000000);
				ZoneChange(UID, 71, 1346, 853);
			end
		else
			GoldLose(UID, 1000000);
			ZoneChange(UID, 71, 1346, 853);
		end
	end
end

if (EVENT == 103) then
	ShowMap(UID, 336);
end