AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include('shared.lua')


function ENT:Initialize( )
	
	self:SetModel( "models/Humans/Group03m/male_07.mdl" ) 
	self:SetHullType( HULL_HUMAN )
	self:SetHullSizeNormal( )
	self:SetNPCState( NPC_STATE_SCRIPT )
	self:SetSolid(  SOLID_BBOX )
	self:CapabilitiesAdd( CAP_ANIMATEDFACE )
	self:SetUseType( SIMPLE_USE )
	self:DropToFloor()
	self:SetMaxYawSpeed( 90 )
	
end

function ENT:OnTakeDamage()
	return false 
end 

function ENT:AcceptInput( Name, Activator, Caller )	

	if Name == "Use" and Caller:IsPlayer() then
		 
		umsg.Start("ayzmedecin", Caller) 
		umsg.End()
		
	end
	
end
 util.AddNetworkString( "buyhp25" )
net.Receive( "buyhp25" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 300 then

   ply:addMoney( -300 ) 
    DarkRP.notify(ply,0,7,"Vous avez acheté 25 d'armur pour 100€!") 
    ply:SetHealth(25)
      else
     DarkRP.notify(ply,1,7,"Vous ne pouvez pas vous acheter d'armur car vous n'avez pas assez d'argent")
   
 
    end
  end)
 util.AddNetworkString( "buyhp50" )
net.Receive( "buyhp50" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 300 then

   ply:addMoney( -300 ) 
    DarkRP.notify(ply,0,7,"Vous avez acheté 25 d'armur pour 100€!") 
    ply:SetHealth(50)
      else
     DarkRP.notify(ply,1,7,"Vous ne pouvez pas vous acheter d'armur car vous n'avez pas assez d'argent")
   
 
    end
  end)
   util.AddNetworkString( "buyhp75" )
net.Receive( "buyhp75" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 600 then

   ply:addMoney( -600 ) 
    DarkRP.notify(ply,0,7,"Vous avez acheté 25 d'armur pour 100€!") 
    ply:SetHealth(75)
      else
     DarkRP.notify(ply,1,7,"Vous ne pouvez pas vous acheter d'armur car vous n'avez pas assez d'argent")
   
 
    end
  end)
   util.AddNetworkString( "buyhp100" )
net.Receive( "buyhp100" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 800 then

   ply:addMoney( -800 ) 
    DarkRP.notify(ply,0,7,"Vous avez acheté 25 d'armur pour 100€!") 
    ply:SetHealth(100)
      else
     DarkRP.notify(ply,1,7,"Vous ne pouvez pas vous acheter d'armur car vous n'avez pas assez d'argent")
   
 
    end
  end)