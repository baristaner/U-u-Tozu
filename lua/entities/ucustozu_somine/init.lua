AddCSLuaFile("cl_init.lua") 
AddCSLuaFile("shared.lua")
AddCSLuaFile("isinlayici/config.lua")

include("shared.lua") 


function ENT:Initialize( ) 
	
	self:SetModel( "models/honse/hwm_fireplace.mdl"  )
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

util.AddNetworkString("ucustozu_somine_ac")


function ENT:AcceptInput( Name, Activator, Caller )	

	if Name == "Use" and Caller:IsPlayer() then
		
		net.Start("ucustozu_somine_ac")
		net.Send(Caller)
		Caller.LastArmorNPCUsed = self

	end
end

