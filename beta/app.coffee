bg = new BackgroundLayer
	backgroundColor: "skyblue"
flow = new FlowComponent
flow.showNext(HomePage)

HomePage.onSwipeLeft (event, layer) ->
	flow.showNext(Menu)
	logo.Logo.animate("menu")
	LogoOval.animate("menu")
	MO1.animate("menu")
	MO2.animate("menu")
	MO3.animate("menu")
	MO4.animate("menu")
	MO5.animate("menu")
	MO6.animate("menu")
	swipeLeftHint.destroy()
Menu.onSwipeRight (event, layer) ->
	flow.showPrevious()
	logo.Logo.animate("homescreen")
	LogoOval.animate("homescreen")
	MO1.animate("homescreen")
	MO2.animate("homescreen")
	MO3.animate("homescreen")
	MO4.animate("homescreen")
	MO5.animate("homescreen")
	MO6.animate("homescreen")

LogoOval = new Layer
	borderRadius: 100
	midY:Screen.height/2
	midX:Screen.width/2
	scale:0
	backgroundColor: "#1199EE"
logo = Framer.Importer.load("imported/logo-home-static@1x")
logo.Logo.opacity = 0;
logo.scale = 0.3
logo.Logo.midX = Screen.width/2
logo.Logo.midY = Screen.height/2

logo.Logo.states.homescreen =
	midY:Screen.height/2
	midX:Screen.width/2
	scale: 0.3
	opacity: 1
	animationOptions:
		time: 1
		curve: Spring

logo.Logo.states.homescreen =
	midY:Screen.height/2
	midX:Screen.width/2
	scale: 0.3
	opacity: 1
	animationOptions:
		time: 1
		curve: Spring
logo.Logo.animate("homescreen")


logo.Logo.states.menu =
	midY:50
	midX:50
	scale: 0.1
	opacity: 1
	animationOptions:
		time: 1
		curve: Spring

swipeLeftHint.animate
	opacity: 0.2
	options: 
		delay: 2
		curve: Spring(mass: 0.01)
		

LogoOval.states.menu = 
	scale: 1.2
	midX: 0
	midY: 0
	animationOptions:
		time: 1
		curve: Spring

LogoOval.states.homescreen = 
	scale: 0
	midY:Screen.height/2
	midX:Screen.width/2
	animationOptions:
		time: 1
		curve: Spring
MO1.scale=0
MO2.scale=0
MO3.scale=0
MO4.scale=0
MO5.scale=0
MO6.scale=0
MO1.states.menu = 
	scale:1
	opacity: 1
	animationOptions:
		time: 1
		curve: Spring
MO2.states.menu = 
	scale:1
	opacity: 1
	animationOptions:
		time: 2
		curve: Spring
MO3.states.menu = 
	scale:1
	opacity: 1
	animationOptions:
		time: 3
		curve: Spring
MO4.states.menu = 
	scale:1
	opacity: 1
	animationOptions:
		time: 4
		curve: Spring
MO5.states.menu = 
	scale:1
	opacity: 1
	animationOptions:
		time: 5
		curve: Spring
MO6.states.menu = 
	scale:1
	opacity: 1
	animationOptions:
		time: 6
		curve: Spring

MO1.states.homescreen = 
	scale:0
	opacity: 0
	animationOptions:
		time: 1
		curve: Spring
MO2.states.homescreen = 
	scale:0
	opacity: 0
	animationOptions:
		time: 1
		curve: Spring
MO3.states.homescreen = 
	scale:0
	opacity: 0
	animationOptions:
		time: 1
		curve: Spring
MO4.states.homescreen = 
	scale:0
	opacity: 0
	animationOptions:
		time: 1
		curve: Spring
MO5.states.homescreen = 
	scale:0
	opacity: 0
	animationOptions:
		time: 1
		curve: Spring
MO6.states.homescreen = 
	scale:0
	opacity: 0
	animationOptions:
		time: 1
		curve: Spring

LogoOval.onTap (event, layer) ->
	flow.showPrevious(HomePage)
	logo.Logo.animate("homescreen")
	LogoOval.animate("homescreen")
	MO1.animate("homescreen")
	MO2.animate("homescreen")
	MO3.animate("homescreen")
	MO4.animate("homescreen")
	MO5.animate("homescreen")
	MO6.animate("homescreen")
