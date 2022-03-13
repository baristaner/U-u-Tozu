
ENT.Base = "base_ai" 
ENT.Type = "ai" 
ENT.AutomaticFrameAdvance = true 
ENT.Spawnable 			  = true
ENT.AdminSpawnable        = false
ENT.PrintName             = "Ucus Tozu Market"
ENT.Purpose 			  = "Gitmek istediğin yerlere götürür"
ENT.Category 			  = "[BT] Ucus Tozu"
ENT.RenderGroup	= 9
 
function ENT:SetAutomaticFrameAdvance( bUsingAnim ) 
	self.AutomaticFrameAdvance = bUsingAnim
end





