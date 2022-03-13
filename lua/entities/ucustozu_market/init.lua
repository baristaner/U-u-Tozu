AddCSLuaFile("cl_init.lua") 
AddCSLuaFile("shared.lua")
AddCSLuaFile("isinlayici/config.lua")

include("shared.lua") 


function ENT:Initialize( ) 
	
	self:SetModel( "models/props/de_inferno/claypot01.mdl"  )
	self:SetHullType( HULL_HUMAN ) 
	self:SetHullSizeNormal( )
	self:SetNPCState( NPC_STATE_SCRIPT )
	self:SetSolid(  SOLID_BBOX ) 
	self:CapabilitiesAdd( CAP_ANIMATEDFACE ) 
	self:CapabilitiesAdd( CAP_TURN_HEAD )
	self:SetUseType( SIMPLE_USE ) 
	self:DropToFloor()
	
	self:SetMaxYawSpeed( 90 ) 

end

function ENT:OnTakeDamage()
	return false 
end 

util.AddNetworkString("ucustozu_market")


function ENT:AcceptInput( Name, Activator, Caller )	
if Activator:GetPData("ucustozu") == "yok" then 
if Activator:canAfford(ucustozu.fiyat) then
	Activator:addMoney(-ucustozu.fiyat)
	Activator:SetPData("ucustozu","var")
	Activator:ChatPrint(ucustozu.fiyat.." Galleona ucuç tozu aldın!")
end
else
	Activator:ChatPrint("Zaten uçuç tozuna sahipsin!")
end

--[[
	if Name == "Use" and Caller:IsPlayer() then
		
		net.Start("ucustozu_market")
		net.Send(Caller)
		Caller.LastArmorNPCUsed = self

	end
	--]]
end

