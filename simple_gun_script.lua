-- This is where you put the gun name and the author name for the gun mod
SWEP.PrintName = "Simple Gun Script"
SWEP.Author = "Guff05"
SWEP.Instructions = "Simple Gun Script"

SWEP.Spawnable = true
SWEP.AdminOnly = false

-- This is where you put the clip size and what kind of gun it is and the clip size -1 if and infinate clip 
SWEP.Primary.ClipSize = 9
SWEP.Primary.DefaultClip = 9
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "Pistol"
-- for secandary fire if you dont need secondary fire remove the line below 
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Slot = 1
SWEP.SlotPos = 2
SWEP.DrawAmmo = true
SWEP.DrawCrosshair = true

-- This is where you put your gun model files i just use garrys mod basic files 
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"

SWEP.UseHands = true

-- This is where you put your gun sound files 
SWEP.ShootSound = Sound("weapons/pistol/pistol_fire2.wav")
-- remove the 3 lines bellow for unlimited ammo
function SWEP:PrimaryAttack()
  if not self:CanPrimaryAttack() then
    return
  end
  -- Value Between Delay for shots   
    self:SetNextPrimaryFire(CurTime() + 0.1 )
 -- First number is damage of the bullets Second is Number of Bulltes Per Shot 3rd is Bullet spread   
    self:ShootBullet(10, 1, 0.01)
    self:EmitSound(self.ShootSound)
-- Remove Line Bellow if you want unlimited ammo
    self:TakePrimaryAmmo(1)
end
-- Removes Secandary fire add it back if you want 
function SWEP:SecondaryAttack()
    
end