# Define and set custom device
Framer.Device.customize
	screenWidth: 1080
	screenHeight: 1920
	devicePixelRatio: 1
flow = new FlowComponent
# Import file "logo-home-static"
_ = Framer.Importer.load("imported/logo-home-static@1x", scale: 1)
_.Logo.opacity = 0
_.Logo.scale = 0
_.Logo.y = 0

# Set up FlowComponent

homescreenColorFilter.center()

_.Logo.states.homepage =
	opacity: 1
	scale: 1
	y: Align.center
	isHome: true
	animationOptions:
		curve: Spring
		time: 1
		delay: 1
_.Logo.states.homepageFAST =
	opacity: 1
	scale: 1
	y: Align.center
	isHome: true
	animationOptions:
		curve: Spring
		time: 1
		delay: 0
				
_.Logo.states.menupage =
	opacity: 1
	x: Align.center
	isHome: false
	y: -77
	scale: 0.3
	animationOptions:
		curve: Spring
		time: 1


homescreenColorFilter.states.homepage =
	x:-4000
	animationOptions:
		curve: Bezier
		time: 1
		delay: 3

homeMenuText = new TextLayer
	text: "MENU"
	fontSize: 64
	fontFamily: "raleway"
	fontWeight: 600
	color: "white"
	height: 71
	parent: menuTile
	x:Align.center(-20)
	y:Align.center
	
homeMenuText = new TextLayer
	text: "CONTACT & HOURS"
	fontSize: 64
	fontFamily: "raleway"
	fontWeight: 600
	color: "white"
	height: 71
	parent: contactTile
	x:Align.center(20)
	y:Align.center()


toppingsSection.states.menupage =
	x: Align.center
	animationOptions:
		curve: Bezier
		time: 0.7

toppingsSection.states.homepage =
x: -toppingsSection.width
y: 633
animationOptions:
	curve: Bezier
	time: 0
	delay: 0.5

btSection.states.menupage =
	x: Align.center
	animationOptions:
		curve: Bezier
		time: 0.5

btSection.states.homepage =
x: -btSection.width
animationOptions:
	curve: Bezier
	time: 0
	delay: 0.5

btSmoothiesSection.states.menupage =
	x: Align.center
	animationOptions:
		curve: Bezier
		time: 0.6

btSmoothiesSection.states.homepage =
x: -btSmoothiesSection.width
animationOptions:
	curve: Bezier
	time: 0
	delay: 0.5

ftmSection.states.menupage =
	x: Align.center
	animationOptions:
		curve: Bezier
		time: 0.6

ftmSection.states.homepage =
x: ftmSection.width
animationOptions:
	curve: Bezier
	time: 0
	delay: 0.5

ftmText = new TextLayer
	text: "Flavors of The Month"
	color: "#7755CC"
	x: Align.center(-70)
	y: Align.center
	fontSize: 48
	fontWeight: 600
	parent: ftmTarea

btText = new TextLayer
	text: "Bubble Teas"
	color: "#FFEE66"
	x: Align.center(20)
	y: Align.center
	fontSize: 48
	fontWeight: 600
	parent: btTarea

btSText = new TextLayer
	text: "Bubble Teas Smoothies"
	color: "#FFEE66"
	x: Align.center(20)
	y: Align.center
	fontSize: 48
	fontWeight: 600
	parent: btSmoothiesTarea

btText = new TextLayer
	text: "Bubble Teas"
	color: "#FFEE66"
	x: Align.center(20)
	y: Align.center
	fontSize: 48
	fontWeight: 600
	parent: btTarea

btSText = new TextLayer
	text: "Bubble Teas Smoothies"
	color: "#FFEE66"
	x: Align.center(20)
	y: Align.center
	fontSize: 48
	fontWeight: 600
	parent: btSmoothiesTarea


_.Logo.animate("homepage")
homescreenColorFilter.animate("homepage")
toppingsSection.animate("homepage")
btSection.animate("homepage")
btSmoothiesSection.animate("homepage")
ftmSection.animate("homepage")

flow.showNext(homepage)

# Switch on click
menuTile.onClick ->
	flow.showNext(menupage)
	_.Logo.animate("menupage")
	toppingsSection.animate("menupage")
	btSection.animate("menupage")
	btSmoothiesSection.animate("menupage")
	ftmSection.animate("menupage")

contactTile.onClick ->
	flow.showPrevious()

_.Logo.onClick (event, layer) ->
	if (_.Logo.isHome == false)
		flow.showPrevious(homepage)
		_.Logo.animate("homepageFAST")
		toppingsSection.animate("homepage")
		btSection.animate("homepage")
		btSmoothiesSection.animate("homepage")
		ftmSection.animate("homepage")


