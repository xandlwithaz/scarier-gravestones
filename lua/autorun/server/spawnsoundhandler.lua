local gravestoneModels = {
    ["models/props_c17/gravestone001a.mdl"] = true,
    ["models/props_c17/gravestone002a.mdl"] = true,
    ["models/props_c17/gravestone003a.mdl"] = true,
    ["models/props_c17/gravestone004a.mdl"] = true,
    ["models/props_c17/gravestone_coffinpiece001a.mdl"] = true,
    ["models/props_c17/gravestone_coffinpiece002a.mdl"] = true,
    ["models/props_c17/gravestone_cross001a.mdl"] = true, 
    ["models/props_c17/gravestone_cross001b.mdl"] = true,
    ["models/props_c17/gravestone_statue001a.mdl"] = true,
}

hook.Add("PlayerSpawnedProp", "graveSound", function(ply, model, ent)
    if not IsValid(ent) then
        return
    end

    if gravestoneModels[model] then
        ent:EmitSound("taco_bell_bong_44100hz.mp3", 72.5, 100, 1)
    end
end)

--@xandlwithaz