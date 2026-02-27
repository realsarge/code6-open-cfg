Sh_Config = {
  locale = "en_US_",

  -- Set spotlight configurations here, then assign them to a model in enabledVehicles
  configurations = {
    ["base"] = {
      -- If enabled, no cone will be emitted and the light object will not update directionally
      useLegacyLightingOption = false,

      -- Don't remove or change this unless you have your own models
      coneModel = `px_light_cone_01`,
      coronaModel = `px_light_corona_01`,
      
      lightParams = {
        -- R, G, B values for colour
        color = {180, 180, 255}, -- LED white

        -- Options below are only available in legacy mode
        -- If you REALLY want to change these with the cone, join phynix.gg/discord and we can discuss details
        distance = 100.0,
        brightness = 15.0,
        roundness = 1.0,
        radius = 10.0,
        falloff = 100.0
      },
    },
  },

  -- Enable the spotlight for specific vehicles and set their default parameters
  --    This is a mapping from MODEL to OFFSET and CONFIGURATION
  --    MODEL: The model name of the vehicle
  --    OFFSET: Set the spotlight in a specific position by default for an individual model
  --    CONFIGURATION: The configuration to use for the spotlight
  enabledVehicles = {
    [`police`] = { offset = vector3(-0.83, 1.185, 0.52), configuration = "base" },
    [`police2`] = { offset = vector3(-0.85, 0.756, 0.424), configuration = "base" },
    [`police3`] = { offset = vector3(-0.844, 0.81, 0.5), configuration = "base" },
    [`police4`] = { offset = vector3(-0.83, 1.185, 0.52), configuration = "base" },
    [`sheriff`] = { offset = vector3(-0.83, 1.185, 0.52), configuration = "base" },
    [`sheriff2`] = { offset = vector3(-0.911, 1.22, 0.92), configuration = "base" },
    [`pranger`] = { offset = vector3(-0.911, 1.22, 0.92), configuration = "base" },
  },

  -- If parameters not set above for a model, use this value instead
  defaultOffset = vector3(-0.95, 0.8, 0.5),
  defaultConfiguration = "base",

  -- Allow all emergency vehicles to use the spotlight
  allowAllEmergencyVehicles = true,
  raycastDistance = 100.0,

  -- Don't allow the spotlight to turn more than X degrees in each direction
  limitRadiusToFront = true,
  maxSpotlightAngle = 80.0,

  -- How far away can you lock onto targets
  raycastDistance = 100.0,

  -- How quickly the stobe will flash (milliseconds)
  strobeInterval = 75,

  -- Developer use
  debugMode = false
}
