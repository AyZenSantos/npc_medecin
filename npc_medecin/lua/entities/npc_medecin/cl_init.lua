include('shared.lua')

surface.CreateFont( "HUDNumber5", {
    font = "HudNumbers",
    size = 13,
    weight = 500,
} )

function ayzmedecin () 
	local Medecin = vgui.Create( "DFrame" )
Medecin:SetPos( ScrW()/2-150, ScrH()/2-150 )
Medecin:SetSize( 400, 200 )
Medecin:Center()
Medecin:SetTitle("")
Medecin:ShowCloseButton( false )
Medecin:SetDraggable(true)
Medecin:SetVisible( true )
Medecin:MakePopup()
Medecin.Paint = function()
	 draw.RoundedBox( 4, 0, 0, Medecin:GetWide(), Medecin:GetTall(), Color( 50,50, 50, 255	 ) )
end
DButtonmedecin2 = vgui.Create("DButton",Medecin)
DButtonmedecin2:SetText("Annuler")
DButtonmedecin2:SetParent( Medecin )  
DButtonmedecin2:SetPos(100,125)
DButtonmedecin2:SetTextColor( Color( 0, 0, 0, 250 ) )
DButtonmedecin2:SetFont("Trebuchet24")
DButtonmedecin2:SetSize(200,40)
DButtonmedecin2.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
DButtonmedecin2.DoClick = function()
Medecin:Close()
end
DButtonMedecin = vgui.Create("DButton",Medecin)
DButtonMedecin:SetText("Se Soigner")
DButtonMedecin:SetParent( Medecin )  
DButtonMedecin:SetPos(100,50)
DButtonMedecin:SetTextColor( Color( 0, 0, 0, 250 ) )
DButtonMedecin:SetFont("Trebuchet24")
DButtonMedecin:SetSize(200,40)
DButtonMedecin.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 200, 0, 255 ) )
end
DButtonMedecin.DoClick = function()
Medecin:Close()
local FrameMedecin2 = vgui.Create( "DFrame" )
FrameMedecin2:SetPos( ScrW()/2-150, ScrH()/2-150 )
FrameMedecin2:SetSize( 525, 200 )
FrameMedecin2:SetTitle( "" )
FrameMedecin2:Center()
FrameMedecin2:ShowCloseButton( false )
FrameMedecin2:SetVisible( true )
FrameMedecin2:MakePopup()
FrameMedecin2.Paint = function()
	draw.RoundedBox( 4, 0, 0, FrameMedecin2:GetWide(), FrameMedecin2:GetTall(), Color( 50, 50, 50, 255 ) )
	draw.SimpleText("Se Soigner Ici", "Trebuchet24", 10, 10,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	draw.SimpleText("150€", "Trebuchet24", 10, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	draw.SimpleText("300€", "Trebuchet24", 175, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	draw.SimpleText("600€", "Trebuchet24", 300, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	draw.SimpleText("800€", "Trebuchet24", 425, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT)
end
medecinclose = vgui.Create("DButton",FrameMedecin2)
medecinclose:SetText("Annuler")
medecinclose:SetParent( FrameMedecin2 )  
medecinclose:SetPos(150,125)
medecinclose:SetTextColor( Color( 0, 0, 0, 250 ) )
medecinclose:SetFont("Trebuchet24")
medecinclose:SetSize(200,40)
medecinclose.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
medecinclose.DoClick = function()
FrameMedecin2:Close()
end
HP25 = vgui.Create("DButton",FrameMedecin2)
HP25:SetText("25HP")
HP25:SetParent( FrameMedecin2 )  
HP25:SetPos(10,50)
HP25:SetTextColor( Color( 0, 0, 0, 250 ) )
HP25:SetFont("Trebuchet24")
HP25:SetSize(100,40)
HP25.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 200, 255 ) )
end
HP25.DoClick = function()
net.Start( "buyhp25" )
net.SendToServer()
end
HP50 = vgui.Create("DButton",FrameMedecin2)
HP50:SetText("50HP")
HP50:SetParent(FrameMedecin2)  
HP50:SetPos(150,50)
HP50:SetTextColor( Color( 0, 0, 0, 250 ) )
HP50:SetFont("Trebuchet24")
HP50:SetSize(100,40)
HP50.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 200, 255 ) )
end
HP50.DoClick = function()
net.Start( "buyhp50" )
net.SendToServer()
end
HP75 = vgui.Create("DButton",FrameMedecin2)
HP75:SetText("75HP")
HP75:SetParent( FrameMedecin2 )  
HP75:SetPos(275,50)
HP75:SetTextColor( Color( 0, 0, 0, 250 ) )
HP75:SetFont("Trebuchet24")
HP75:SetSize(100,40)
HP75.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 200, 255 ) )
end
HP75.DoClick = function()
net.Start( "buyhp75" )
net.SendToServer()
end
HP100 = vgui.Create("DButton",FrameMedecin2)
HP100:SetText("100HP")
HP100:SetParent( FrameMedecin2 )  
HP100:SetPos(400,50)
HP100:SetTextColor( Color( 0, 0, 0, 250 ) )
HP100:SetFont("Trebuchet24")
HP100:SetSize(100,40)
HP100.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 200, 255 ) )
end
HP100.DoClick = function()
net.Start( "buyhp100" )
net.SendToServer()
end


end
end

usermessage.Hook("ayzmedecin", ayzmedecin) 

hook.Add("PostDrawOpaqueRenderables", "ayzmedecin", function() 
	for _, ent in pairs (ents.FindByClass("npc_medecin")) do 
		if ent:GetPos():Distance(LocalPlayer():GetPos()) < 1000 then
			local Ang = ent:GetAngles()

			Ang:RotateAroundAxis( Ang:Forward(), 90)
			Ang:RotateAroundAxis( Ang:Right(), -90)
		
			cam.Start3D2D(ent:GetPos()+ent:GetUp()*79, Ang, 0.20)
				draw.SimpleTextOutlined( 'Medecin', "HUDNumber5", 0, 0, Color( 255, 0, 0, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 1, Color(0, 0, 0, 255))			
			cam.End3D2D()
		end
	end
end)