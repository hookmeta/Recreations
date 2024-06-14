getgenv().Stellar = {
    Global = {
        Intro           = true,
        Friend_Check    = false,
        Crew_Check      = false,
        Wall_Check      = true
    },
    Spin = {
        Enabled         = false,
        Keybind         = "X",
        Speed           = math.pi / 0.165, -- // pi/2 radians or 180 degrees per second

        InternalEnabled = false, -- // do not touch
        CurrentAngle    = 69 -- // do not touch
    },
    Silent = {
        Enabled       = true,
        Toggle        = "P",
        Prediction    = 0.145,
        HitChance     = 100,
        Customization = {
            FOVType          = 1, -- 1 or 2 or 3
            Type3Leeway      = true,
            VisualiseType3   = false,
            ScaleFactorType3 = 0.5,
            Type2Rectangle   = false,
            RectangleWidth   = 60,
            RectangleHeight  = 75,
            ShowFOV          = true,
            Radius           = 50,
            Color            = Color3.fromRGB(145, 0, 0),
            Filled           = true,
            Transparency     = 0.25
        },
        GunSpecific = {
            Enabled = false,
            Detection = { Close = 60, Mid = 65, Far = math.huge },
            Pistols = {
                FOV = { Close = 4, Mid = 3, Far = 2.4 },
                Prediction = { Close = 0.125, Mid = 0.125, Far = 0.1228 },
                HitChance = { Close = 100, Mid = 100, Far = 100 }
            },
            Shotguns = {
                FOV = { Close = 16, Mid = 14, Far = 3 },
                Prediction = { Close = 0.124, Mid = 0.124, Far = 0.1228 },
                HitChance = { Close = 100, Mid = 100, Far = 100 }
            },
            Automatics = {
                FOV = { Close = 4, Mid = 2, Far = 2 },
                Prediction = { Close = 0.127, Mid = 0.125, Far = 0.1233 },
                HitChance = { Close = 25, Mid = 50, Far = 75 }
            },
            Other = {
                FOV = { Close = 4, Mid = 4, Far = 4 },
                Prediction = { Close = 0.127, Mid = 0.125, Far = 0.1233 },
                HitChance = { Close = 25, Mid = 50, Far = 75 }
            }
        }
    },
    Camlock = {
        Enabled                      = true,
        Smoothing                    = 0.08,
        EasingStyle                  = Enum.EasingStyle.Bounce,
        EasingDirection              = Enum.EasingDirection.Out,
        Sensitivity                  = 0.25,
        Prediction                   = 0.145, -- // Prediction
        Toggle                       = "C", -- // Keybind
        Part                         = "HumanoidRootPart", -- // AimPart
        AirPart                      = "LowerTorso", -- // AimPart when Target is in air
        AirSmoothing                 = 0.08, -- // Smoothing when Target is in air
        AirPrediction                = 0.145, -- // Predicition when Target is in air
        Disable_On_ThirdPerson       = false,
        Disable_On_Reload            = false,
        Disable_When_Not_Holding_Gun = false,
        GunSpecific = {
            Enabled = false,
            Detection = { Close = 30, Mid = 65, Far = math.huge },
            Pistols = {
                Smoothing = { Close = 0.06, Mid = 0.3, Far = 0.315 },
                Prediction = { Close = 0.15, Mid = 0.12, Far = 0.13 },
                Part = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                AirSmoothing = { Close = 0.34, Mid = 0.36, Far = 0.33 },
                AirPrediction = { Close = 0.11, Mid = 0.1, Far = 0.13 },
                AirPart = { Close = "Head", Mid = "Head", Far = "UpperTorso" },
                Sensitivity = { Close = 0.25, Mid = 0.25, Far = 0.25 }
            },
            Shotguns = {
                Smoothing = { Close = 0.26, Mid = 0.3, Far = 0.315 },
                Prediction = { Close = 0.15, Mid = 0.12, Far = 0.13 },
                Part = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                AirSmoothing = { Close = 0.34, Mid = 0.36, Far = 0.33 },
                AirPrediction = { Close = 0.11, Mid = 0.1, Far = 0.13},
                AirPart = { Close = "Head", Mid = "Head", Far = "UpperTorso" },
                Sensitivity = { Close = 0.25, Mid = 0.25, Far =  0.25 }
            },
            Automatics = {
                Smoothing = { Close = 0.26, Mid = 0.3, Far = 0.315 },
                Prediction = { Close = 0.15, Mid = 0.12, Far = 0.13 },
                Part = { Close = "Head", Mid = "UpperTorso", Far = "UpperTorso" },
                AirSmoothing = { Close = 0.34, Mid = 0.36, Far = 0.33 },
                AirPrediction = { Close = 0.11, Mid = 0.1, Far = 0.13 },
                AirPart = { Close = "Head", Mid = "Head", Far = "UpperTorso" },
                Sensitivity = { Close = 0.25, Mid = 0.25, Far = 0.25 }
            }
        }
    },
    TriggerBot = {
        Enabled               = false,
        Prediction            = 0.11, -- // If GunSpecificPrediction is false
        Cooldown              = 0.02,
        Toggle                = "Z",
        GunSpecificPrediction = {
            Enabled = true,

            Detection = { Close = 30, Mid = 65, Far = math.huge },
            Pistols = { Close = 0.108, Mid = 0.106, Far = 0.102 },
            Shotguns = { Close = 0.108, Mid = 0.106, Far = 0.102 },
            Other = { Close = 0.108, Mid = 0.106, Far = 0.102 }
        }
    },
    Misc = {
        MemorySpoofer = {
            Percent = 100 -- // %
        },
        SpeedThreshold = 65,
        Macro = {
            Enabled     = false,
            MacroKey    = "P",
            MacroSpeed  = 1,
            MacroType   = "mouse", -- // Normal or Mouse (It doesn't matter if it's in upper or lower case.)
            MacroToggle = "hold" -- // Hold or Press (It doesn't matter if it's in upper or lower case.)
        }
    },
    Prediction = {
        Enabled            = false,  -- // Enable automated prediction
        RangeCoefficient   = 1,  -- // Small value to reduce the impact of distance
        AdditionalInterval = 1.5 / 10,  -- // Directly influence the additional interval
        Precision          = 4,  -- // Set precision to 4 to match the desired output precision (0.1552 for ex)
    }
}
--
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7b99741f580e19c62c306948f18e8ef5.lua"))()
