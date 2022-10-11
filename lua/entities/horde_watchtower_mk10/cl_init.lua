include("shared.lua")

function ENT:Draw()
    self:DrawModel()
end

function ENT:Think()
    if not self.dlight then
        self.dlight = DynamicLight(0)
        self.dlight.Pos = self:GetPos()
        self.dlight.r = 0
        self.dlight.g = 80
        self.dlight.b = 181
        self.dlight.Brightness = 6
        self.dlight.Size = 160
        self.dlight.DieTime = CurTime() + 1
    end
    if self.dlight then
        self.dlight.Pos = self:GetPos()
        self.dlight.DieTime = CurTime() + 1
    end
end