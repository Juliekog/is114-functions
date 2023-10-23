use context essentials2021

include color
include image

#lager de ulike skivene, samt tomme pinner 

oransje=circle(50, "solid", "orange") 
blaa=circle(40, "solid", "blue")
gronn=circle(30, "solid", "green")
rod=circle(20, "solid", "red")
pinne=circle(5, "solid", "black")
hvit=square(120,"solid", "white")

#lager skivene på pinnene, og kombinasjoner av de ulike skivene

en= put-image(pinne, 20, 20, rod)
to=put-image(pinne, 30, 30, gronn)
tre = put-image(pinne, 40, 40, blaa)
fire = put-image(pinne, 50, 50, oransje)

en-to=put-image(en, 30, 30, to)
en-tre=put-image(en-to, 40, 40, tre)
en-fire=put-image(en-tre, 50, 50, fire)

to-tre = put-image(to, 40, 40, tre)
to-fire = put-image(to-tre, 50, 50, fire)

tre-fire = put-image(tre, 50, 50, fire)

#lager de ulike basene, skivefrie områdene

base1=put-image(en-fire, 60, 60, hvit)

base2=put-image(pinne, 60, 60, hvit)


base3= beside-align("middle",base1, base2)

start= beside-align("middle", base3, base2) #utgangsposisjonen 

#alle trekkene, i rekkefølge 

trekk1_1=put-image(to-fire, 60, 60, start)
trekk1=put-image(en, 180, 60, trekk1_1)

trekk2_1=put-image(tre-fire, 60, 60, trekk1)
trekk2 = put-image(to, 300, 60, trekk2_1)

trekk3_1=put-image(tre-fire, 60, 60, start)
trekk3 = put-image(en-to, 300, 60, trekk3_1)

trekk4_1=put-image(fire, 60, 60, start)
trekk4_2 = put-image(tre, 180, 60, trekk4_1)
trekk4 = put-image(en-to, 300, 60, trekk4_2)

trekk5_1=put-image(en, 60, 60, trekk4)
trekk5=put-image(to, 300, 60, trekk5_1)

trekk6_1=put-image(to, 180, 60, trekk5)
trekk6=put-image(base2, 300, 60, trekk6_1)

trekk7_1=put-image(en-tre, 180, 60, trekk4)
trekk7=put-image(base2, 300, 60, trekk7_1)

trekk8_1=put-image(base2, 60, 60, trekk7)
trekk8=put-image(fire, 300, 60, trekk8_1)

trekk9_1=put-image(en, 300, 60, trekk8)
trekk9=put-image(to-tre, 180, 60, trekk9_1)

trekk10_1= put-image(to, 60, 60, trekk9)
trekk10= put-image(tre, 180, 60, trekk10_1)

trekk11_1=put-image(en-to, 60, 60, trekk10)
trekk11=put-image(fire, 300, 60, trekk11_1)

trekk12_1=put-image(tre-fire, 300, 60, trekk11)
trekk12=put-image(base2, 180, 60, trekk12_1)

trekk13_1=put-image(to, 60, 60, trekk12)
trekk13=put-image(en, 180, 60, trekk13_1)

trekk14_1=put-image(to-fire, 300, 60, trekk13)
trekk14=put-image(base2, 60, 60, trekk14_1)

trekk15_1=put-image(en-fire, 300, 60, trekk14)
trekk15=put-image(base2, 180, 60, trekk15_1)


start
trekk1
trekk2
trekk3
trekk4
trekk5
trekk6
trekk7
trekk8
trekk9
trekk10
trekk11
trekk12
trekk13
trekk14
trekk15