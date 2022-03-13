include("autorun/config.lua")

local butonrengi = Color(100,100,100,255)



net.Receive("ucustozu_somine_ac",function(len)

local function ucustozu()

game.AddParticles( "particles/pfx_redux.pcf" )
PrecacheParticleSystem( "[2]swirl_1" )

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

net.Receive("ucustozu_market",function()
local ucusmarket = vgui.Create( "DFrame" )
ucusmarket:SetPos( 5, 5 )
ucusmarket:SetSize( 400, 500 )
ucusmarket:SetTitle( "  " )
ucusmarket:SetVisible( true )
ucusmarket:SetDraggable( false )
ucusmarket:Center()
ucusmarket:ShowCloseButton( false )
ucusmarket:MakePopup()
------------------------------------------------------------------------------------------------------
ucusmarket.Paint = function(s,w,h )
    --draw.RoundedBox( 0, 0, 0,w,h,Color(0,0,0,255))
    draw.RoundedBox( 0, 2, 2,w-4,h-4,Color(50,50,50,200))
end
------------------------------------------------------------------------------------------------------
local kapatma = vgui.Create( "DButton", ucusmarket ) 
kapatma:SetText( "X" )                  
kapatma:SetPos( 360, 0 )                    
kapatma:SetSize( 40, 25 )
kapatma:SetColor(Color(255, 255, 255))              
kapatma.DoClick = function()                
    ucusmarket:Close()
end
------------------------------------------------------------------------------------------------------
local bulaniklik = vgui.Create("DFrame")
bulaniklik:SetSize(5, 5)
bulaniklik:SetDraggable(false)
bulaniklik:SetBackgroundBlur(true)
------------------------------------------------------------------------------------------------------
ucusmarket.OnRemove = function()
bulaniklik:Close()
end
------------------------------------------------------------------------------------------------------
local DScrollPanel = vgui.Create( "DScrollPanel", ucusmarket )
DScrollPanel:Dock( FILL )
------------------------------------------------------------------------------------------------------
for i=0,0 do
    local isinlambolgeleri = DScrollPanel:Add( "DButton" )
    isinlambolgeleri:SetText( "Button #" .. i )
    isinlambolgeleri:Dock( TOP )
    isinlambolgeleri:SetColor(Color(255, 255, 255))    
    isinlambolgeleri:DockMargin( 0, 0, 0, 5 )
end
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

net.Receive("gecisefekti",function(len)
    local start = SysTime() 
    local renk = Color(0,0,0,Lerp( SysTime() - start, 0, 255 ))
    local oku = net.ReadString()
    timer.Simple(0.5, function()
    hook.Add( "HUDPaint", "h", function() 
    if (IsValid(LocalPlayer())) then 
    draw.RoundedBox( 0, ScrW() * 0, ScrH() * 0, ScrW() * 1, ScrH() * 1,Color(0,0,0,Lerp( SysTime() - start, 0, 255 )) )
    draw.SimpleText("Cisimleniyorsun : "..oku..timer.RepsLeft( any identifier ),"gecisyazi", ScrW() * 0.24, ScrH() * 0.42,Color(255,255,255,Lerp( SysTime() - start, 0, 255 )))
end 
end)
end)
    sound.Play("ambient/fire/firebig.wav", LocalPlayer():EyePos(), 60, 170)
    timer.Simple(6, function() hook.Remove("HUDPaint","h") RunConsoleCommand("stopsound") end)
end)