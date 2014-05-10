Health Geo - App to find health services

Build an open source framework/app and make health service discovery easy and put it on a map.  Be able to tag services with symptoms such as depression or pregnancy ;-) This would allow others to be able to add their own flavour to it regardless of end game.

What is the problem you're trying to solve?

Everybody wants some form of discovery system for health.  Lets take the Google API and do a chuck of the work to able to easily add information to google maps e.g. the number of doctors at a clinic and the number of patients. Maybe even show which practices have unused capacity

How do you plan to solve it?

Build a framework in rails to negotiate with Google AP or openstreetmap and easily add overlays. Our intent would to make it open source so any developers can get involved and then any terrority or province could you use it.

Back end
Organisations - Phone, email, website
Locations - LAT/LONG and address
Capbiltity - e.g. MRI
Capacity - e.g. family doctor has open spots
Symptoms - e.g. Depression, pregancy

Middle
Serve HTML, JSON, XML
routing

v1 no map, just text list
v2 plot on map
v3 by transit time
weighted matching
find services in area defined by user

Front End
Plain text
User - input for organisation, locations, cabilities, symptoms
web based UI
Easy tagging
