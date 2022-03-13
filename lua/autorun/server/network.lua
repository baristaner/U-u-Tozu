util.AddNetworkString("ucustozu_isinlan")
util.AddNetworkString("ucustozu_isinlan_2")
util.AddNetworkString("gecisefekti")

local efekt = "[1]_large_campfire_green"

net.Receive("ucustozu_isinlan", function(len, ply)
    local buttonHit = net.ReadFloat()

 if (buttonHit == 0) then
        if ply:GetPData("ucustozu") == "var" then 
        ParticleEffectAttach( efekt, 4, ply, 1 )
        ParticleEffectAttach( efekt, 4, ply, 1 )
        timer.Simple(8, function() ply:StopParticles() end)  
        net.Start("gecisefekti") 
        net.WriteString("Hogsmeade")
        net.Send(ply)

        ply:SetPData("ucustozu","yok")
        timer.Simple(3, function()  ply:SetPos(ucustozu.bolgeler["Hogsmeade"].Koordinat) end)
    end
end

    if (buttonHit == 1) then
     if ply:GetPData("ucustozu") == "var" then 
        ParticleEffectAttach( efekt, 4, ply, 1 )
        timer.Simple(8, function() ply:StopParticles() end)  
        net.Start("gecisefekti") 
        net.WriteString("Hogwarts")
        net.Send(ply)

        ply:SetPData("ucustozu","yok")
        timer.Simple(3, function()  ply:SetPos(ucustozu.bolgeler["Hogwarts"].Koordinat) end)
    end
end

     if (buttonHit == 2) then
        if ply:GetPData("ucustozu") == "var" then 
        ParticleEffectAttach( efekt, 4, ply, 1 )
        timer.Simple(8, function() ply:StopParticles() end)  
        net.Start("gecisefekti") 
        net.WriteString("Hagridin Evi")
        net.Send(ply)

        ply:SetPData("ucustozu","yok")
        timer.Simple(3, function()   ply:SetPos(ucustozu.bolgeler["Hagridin Evi"].Koordinat) end)
    end
    end

    if (buttonHit == 3) then
        if ply:GetPData("ucustozu") == "var" then 
        ParticleEffectAttach( efekt, 4, ply, 1 )
        timer.Simple(8, function() ply:StopParticles() end)  
        net.Start("gecisefekti") 
        net.WriteString("Nehir")
        net.Send(ply)

        ply:SetPData("ucustozu","yok")
        timer.Simple(3, function()  ply:SetPos(ucustozu.bolgeler["Nehir"].Koordinat) end)
    end
    end

    if (buttonHit == 4) then
        if ply:GetPData("ucustozu") == "var" then 
        ParticleEffectAttach( efekt, 4, ply, 1 )
        timer.Simple(8, function() ply:StopParticles() end)  
        net.Start("gecisefekti") 
        net.WriteString("Samarci Sogut")
        net.Send(ply)

        ply:SetPData("ucustozu","yok")
        timer.Simple(3, function() ply:SetPos(ucustozu.bolgeler["Samarci Sogut"].Koordinat) end)
    end
end

end)

net.Receive("ucustozu_isinlan_2", function(len, ply)
    local buttonHit = net.ReadFloat()

 if (buttonHit == 0) then
        if ply:GetPData("ucustozu") == "var" then 
        ParticleEffectAttach( efekt, 4, ply, 1 )
        timer.Simple(8, function() ply:StopParticles() end)  
        net.Start("gecisefekti") 
        net.WriteString("Quidditch Pisti")
        net.Send(ply)

        ply:SetPData("ucustozu","yok")
        timer.Simple(3,function() ply:SetPos(ucustozu.bolgeler["Quidditch Pisti"].Koordinat) end)
end
end

    if (buttonHit == 1) then
        if ply:GetPData("ucustozu") == "var" then 
        ParticleEffectAttach( efekt, 4, ply, 1 )
        timer.Simple(8, function() ply:StopParticles() end)  
        net.Start("gecisefekti") 
        net.WriteString("Sihir Bakanligi")
        net.Send(ply)

        ply:SetPData("ucustozu","yok")
        timer.Simple(3,function() ply:SetPos(ucustozu.bolgeler["Sihir Bakanligi"].Koordinat) end)
    end
end

     if (buttonHit == 2) then
        if ply:GetPData("ucustozu") == "var" then 
        ParticleEffectAttach( efekt, 4, ply, 1 )
        timer.Simple(8, function() ply:StopParticles() end)  
        net.Start("gecisefekti") 
        net.WriteString("Baykushane")
        net.Send(ply)

        ply:SetPData("ucustozu","yok")
        timer.Simple(3,function() ply:SetPos(ucustozu.bolgeler["Baykushane"].Koordinat) end)
    end
end


end)



hook.Add( "PlayerInitialSpawn", "FullLoadSetup", function( ply )
   ply:SetPData( "ucustozu","yok" )
end )

