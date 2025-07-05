global.upgradeData = 
[
	{
		name: "Warp Drive",
		description: "2x Acceleration",
		sprite: TractorBeamSprite,
		code: function() {Player.acceleration *= 2}
	},
	
	{
		name: "Inertial Compensator",
		description: "2x Max Speed",
		sprite: TractorBeamSprite,
		code: function() {Player.maxSpeed *= 2}
	},
	
	{
		name: "Armor Plating",
		description: "2x Max Health",
		sprite: ArmorPlatingSprite,
		code: function() {Player.maxHealth *= 2}
	},
	
	{
		name: "Tractor Beam",
		description: "2x Pickup Distance",
		sprite: TractorBeamSprite,
		code: function() {Player.magnetDistance *= 2}
	}
]