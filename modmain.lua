local function OverlayDisable(self, owner)
	self.OnUpdate = function(self, ...)
		self:StopUpdating()
		self:Hide()
	end
end

if CurrentRelease.GreaterOrEqualTo(ReleaseID.R17_WATERLOGGED)
then
    AddClassPostConstruct("widgets/leafcanopy", OverlayDisable)
end

