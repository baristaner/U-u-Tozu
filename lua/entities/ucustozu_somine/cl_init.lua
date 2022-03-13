include("shared.lua")

surface.CreateFont( "npc", {
        font = "Harry P",
        extended = false,
        size =  ScrW() * 0.09,
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
        size =  ScrW() * 0.08,
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

local butonrengi = Color(100,100,100,255)



net.Receive("ucustozu_somine_ac",function(len)

local function ucustozu()

game.AddParticles( "particles/pfx_redux.pcf" )
PrecacheParticleSystem( "[1]_large_campfire_green" )

local function ucuctozumenu2()
local ucustozu2 = vgui.Create( "DFrame" )
ucustozu2:SetPos( 5, 5 )
ucustozu2:SetSize( 400, 500 )
ucustozu2:SetTitle( "  " )
ucustozu2:SetVisible( true )
ucustozu2:SetDraggable( false )
ucustozu2:Center()
ucustozu2:ShowCloseButton( false )
ucustozu2:MakePopup()
------------------------------------------------------------------------------------------------------
ucustozu2.Paint = function(s,w,h )
    --draw.RoundedBox( 0, 0, 0,w,h,Color(0,0,0,255))
    draw.RoundedBox( 0, 2, 2,w-4,h-4,Color(0,0,0,200))
end
------------------------------------------------------------------------------------------------------
local kapatma = vgui.Create( "DButton", ucustozu2 ) 
kapatma:SetText( "X" )                  
kapatma:SetPos( 360, 0 )                    
kapatma:SetSize( 40, 25 )
kapatma:SetColor(Color(255, 255, 255))              
kapatma.DoClick = function()                
    ucustozu2:Close()
end
------------------------------------------------------------------------------------------------------
local bulaniklik = vgui.Create("DFrame")
bulaniklik:SetSize(5, 5)
bulaniklik:SetDraggable(false)
bulaniklik:SetBackgroundBlur(true)
------------------------------------------------------------------------------------------------------
ucustozu2.OnRemove = function()
bulaniklik:Close()
end
------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------

kapatma:TDLib()
kapatma:ClearPaint()
:Circle(Color(40, 40, 40, 0))
:CircleFadeHover(Color(40,40,40,200), 15)
:Text("×", "Trebuchet48")

------------------------------------------------------------------------------------------------------


local DScrollPanel = vgui.Create( "DScrollPanel", ucustozu2 )
DScrollPanel:Dock( FILL )
------------------------------------------------------------------------------------------------------
for i=0, 2 do
    local isinlambolgeleri = DScrollPanel:Add( "DButton" )
    isinlambolgeleri:SetText( "Button #" .. i )
    isinlambolgeleri:Dock( TOP )
    isinlambolgeleri:SetColor(Color(255, 255, 255))    
    isinlambolgeleri:DockMargin( 0, 0, 0, 5 )

isinlambolgeleri.Paint = function(s,w,h )
    draw.RoundedBox( 0, 0, 0,w,h,Color(0,0,0,255))
    draw.RoundedBox( 0, 2, 2,w-4,h-4,butonrengi)
end
------------------------------------------------------------------------------------------------------
if i == 0 then
isinlambolgeleri:SetText( "Quidditch Pisti" )
isinlambolgeleri.DoClick = function()
ucustozu2:Close() 
net.Start("ucustozu_isinlan_2")
net.WriteFloat(i)
net.SendToServer()  
end  
end

if i == 1 then
isinlambolgeleri:SetText( "Sihir Bakanligi" )
isinlambolgeleri.DoClick = function()
ucustozu2:Close() 
net.Start("ucustozu_isinlan_2")
net.WriteFloat(i)
net.SendToServer()    
end        
end

if i == 2 then
isinlambolgeleri:SetText( "Baykuşhane" )
isinlambolgeleri.DoClick = function()
ucustozu2:Close() 
net.Start("ucustozu_isinlan_2")
net.WriteFloat(i)
net.SendToServer()    
end        
end
end
end

local ucus_tozu = vgui.Create( "DFrame" )             
ucus_tozu:SetSize(750,500)               
ucus_tozu:SetTitle(" ")         
ucus_tozu:MakePopup()   
ucus_tozu:Center()    
ucus_tozu:ShowCloseButton(true)
ucus_tozu:SetDraggable(true)

local harita = vgui.Create("DImage", ucus_tozu)
harita:SetPos(0, 0)
harita:SetSize(750,500)      
harita:SetImage("materials/baristaner/ucus_tozu/hogwarts_harita2.jpg")   

local kapatmabuton = vgui.Create( "DButton", ucus_tozu )                 
kapatmabuton:SetPos( 620,18 )   
kapatmabuton:SetText(" X ")             
kapatmabuton:SetSize(180,30)                 
kapatmabuton.DoClick = function()               
    ucus_tozu:Close()            
end


for i=0, 4 do
local isinlabuton = vgui.Create( "DImageButton", ucus_tozu )
isinlabuton:SetSize( 40, 40 )  
isinlabuton:SetImage( "materials/baristaner/ucus_tozu/supurge.png" ) 

if i == 0 then
isinlabuton:SetPos( 300,330 )  
isinlabuton.DoClick = function()
ucus_tozu:Close() 
net.Start("ucustozu_isinlan")
net.WriteFloat(i)
net.SendToServer()  
end  
end

if i == 1 then
isinlabuton:SetPos( 480,100 )  
isinlabuton.DoClick = function()
ucus_tozu:Close() 
net.Start("ucustozu_isinlan")
net.WriteFloat(i)
net.SendToServer()  
end  
end

if i == 2 then
isinlabuton:SetPos( 520,280 )  
isinlabuton.DoClick = function()
ucus_tozu:Close() 
net.Start("ucustozu_isinlan")
net.WriteFloat(i)
net.SendToServer()  
end  
end


if i == 3 then
isinlabuton:SetPos( 250,230 ) 
isinlabuton.DoClick = function()
net.Start("ucustozu_isinlan")
net.WriteFloat(i)
net.SendToServer()  
end  
end


if i == 4 then
isinlabuton:SetPos( 380,170 )  
isinlabuton.DoClick = function()
ucus_tozu:Close() 
net.Start("ucustozu_isinlan")
net.WriteFloat(i)
net.SendToServer()  
end  
end



end

local yanbuton = vgui.Create( "DImageButton", ucus_tozu )
yanbuton:SetSize( 40, 40 )  
yanbuton:SetPos( 120,400 )  
yanbuton:SetImage( "materials/baristaner/ucus_tozu/ok_ters.png" )
yanbuton.DoClick = function()
ucuctozumenu2()
ucus_tozu:Close()  
end



ucus_tozu:TDLib()
:FadeIn()

local blur = vgui.Create("DFrame")
blur:SetSize(2, 1)
blur:SetDraggable(false)
blur:SetBackgroundBlur(true)

ucus_tozu.OnRemove = function()
blur:Close()
end


kapatmabuton.Paint = function(s,w,h )
    draw.RoundedBox( 0, 0, 0,w,h,Color(0,0,0,0))
    draw.RoundedBox( 0, 2, 2,w-4,h-4,Color(139,0,0,0))
end


kapatmabuton:TDLib()
kapatmabuton:ClearPaint()
:Circle(Color(40, 40, 40, 0))
:CircleFadeHover(Color(40,40,40,200), 15)
:Text("×", "Trebuchet48")

ucus_tozu.Paint = function(s,w,h )
    draw.RoundedBox( 0, 0, 0,w,h,Color(0,0,0,0))
end
end

ucustozu()
end)


surface.CreateFont( "gecisyazi", {
    font = "Harry P", 
    extended = false,
    size = ScrW() * 0.07, --0.10
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
    outline = false,
})

function ENT:Draw()

self:DrawModel()

if ( IsValid( self ) && LocalPlayer():GetPos():Distance( self:GetPos() ) < 500 ) then

local ang = Angle( 0, ( LocalPlayer():GetPos() - self:GetPos() ):Angle()[ "yaw" ], ( LocalPlayer():GetPos() - self:GetPos() ):Angle()[ "pitch" ] ) + Angle( 0, 90, 90 )

cam.IgnoreZ( false )
cam.Start3D2D( self:GetPos() + Vector( -1, 0, 60 ), ang, .1 )

--draw.RoundedBox(12,-80,-20,146,40, Color(17, 162, 223, 200))
draw.SimpleTextOutlined( self:GetNWString( "HeaderText", "Ucuc Tozu" ), "npc", -5, -120, Color(  0,211,61, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, .5, Color( 0,0,0,255 ) )
draw.SimpleTextOutlined( self:GetNWString( "HeaderText2", "Sominesi" ), "npc2", -5, -20, Color( 2361, 666, 650, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, .5, Color( 0,0,0,255 ) )

cam.End3D2D()
end
end


