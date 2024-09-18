View(mtcars)

skim(mtcars)

kml=mtcars$mpg[1:32]*2.352

cc=mtcars$disp[1:32]*16.387

mtcars$kml = kml[1:32]

mtcars$cc = cc[1:32]

mtpak = mtcars


attach(mtpak)

skim(mtpak)

kmlcc=lm(cc~kml,data = mtpak)

summary(kmlcc)

#Negativity in the estimate means there is a negative relation between CC and Kml.


plot(cc,kml, col= "Red", xlab = "Displacement(Centi-3) of the Cars ", ylab = "Kilometers per Litre (Mileage)" )


plot(disp,mpg, col= "Green",xlab = "Displacement (In-3) of the Cars ", ylab = "Miles Per Gallon (Mileage)")

#Viewing both Shows that as seen, they both are simple counterparts of each other, Naturally

plot(factor(gear),hp, type = "l", col = "6", xlab = "Number of gears", ylab = "Total Horse Power")

#This Plot shows the relation between gears and the Power of the car, With each gear the power level changes

hpwt =lm(hp~wt, data = mtpak)

summary(hpwt)

#The positive value below the intercept shows that yes, weight of the car does increase with the increase in power

#Overall the top cars in Power are Maserati Bora, Ford Pantera L and Duster 360

