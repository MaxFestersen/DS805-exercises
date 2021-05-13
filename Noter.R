# Noter -------------------------------------------------------------------

# Classification for more than 2 normal populations -----------------------
# > Fremgang ----
# 0. Indlæs data
#   Protip: Se om header er med, og tilpas indlæsning derefter.
# 1. Identificer kategori atteribute og de øvrige (målinger)
#   Excluder categori i træningsdata
# 2. Check normalitet og covarians mellem grupper (er det homogent/identisk)
#   Hvis det ikke er normalfordelt, men er homogent, så kan man bruge fishers method
#   Hvis det er normalfordelt, kan fishers method bruges (da det er tilsvarende en linæt diskriminant analyse)
#   Hvis det ikke er homogent, så kan multinomial reggresion model anvendes

# 3. Byg model
lda() # hvis det er homogent, normalfordelt eller ej
qda() # Ved ikke
multinom() # Hvis det ikke er homogent - fra nnet

# 4. lav indsigt
predict()