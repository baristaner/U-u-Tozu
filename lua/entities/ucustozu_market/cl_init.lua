include("shared.lua")

surface.CreateFont( "npc", {
        font = "Harry P",
        extended = false,
        size =  ScrW() * 0.07,
        weight = 500,
        blursize = 0,
        scanlines = 0,
        antialias = true,
        underline = false,
        italic = false,
        strikeout = false,
        symbol = false,
        rotary = false,
        shadow = false,
        additive = false,
        outline = true,
})

surface.CreateFont( "npc2", {
        font = "Harry P",
        extended = false,
        size =  ScrW() * 0.04,
        weight = 500,
        blursize = 0,
        scanlines = 0,
        antialias = true,
        underline = false,
        italic = false,
        strikeout = false,
        symbol = false,
        rotary = false,
        shadow = false,
        additive = false,
        outline = true,
})

function ENT:Draw()

self:DrawModel()

if ( IsValid( self ) && LocalPlayer():GetPos():Distance( self:GetPos() ) < 500 ) then

local ang = Angle( 0, ( LocalPlayer():GetPos() - self:GetPos() ):Angle()[ "yaw" ], ( LocalPlayer():GetPos() - self:GetPos() ):Angle()[ "pitch" ] ) + Angle( 0, 90, 90 )

cam.IgnoreZ( false )
cam.Start3D2D( self:GetPos() + Vector( -1, 0, 40 ), ang, .1 )

--draw.RoundedBox(12,-80,-20,146,40, Color(17, 162, 223, 200))
draw.SimpleTextOutlined( self:GetNWString( "HeaderText", "Ucuc Tozu" ), "npc", -5, -120, Color( 0,211,61, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, .5, Color( 0,0,0,255 ) )
draw.SimpleTextOutlined( self:GetNWString( "HeaderText2", "'E Tusuna Basarak' Satin Al" ), "npc2", -5, -60, Color( 2361, 666, 650, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, .5, Color( 0,0,0,255 ) )

cam.End3D2D()
end
end


