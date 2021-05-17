# |---Noter ---| -------------------------------------------------------------------

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


# Evaluation of classification functions ----------------------------------
# Related: hemopheliaROC.R from lecture on d. 17.05  

# > APER (Apparent error rate) - for 2 grupper ----
# Step 1: Find ECM (distribution af grupperne)
#   Note: Nogen gange kan TPM anvendes, hvilket er en speciel variant af ECM, hvor begge fordelinger er lig 1.
# Step 2: Lav confusion matrix
# Step 3: aflæs False positive (FP), True negative (TN) og mængden af data (N)
# Step 4: APER = (FP + TN)/N
#  Note: APER er simnpel, men tenderer til at overestimere AER
# Step 5: (simpel)Opdeling af date i training og test set 
#  Note: fordel som det passer dig, typisk 80/20, men test set er ofte 10-30%
# Step 5 (systematisk) leave one out meteode - loop alle elementer, og kør test for hvert punkt som test data og resten som training, og se om den kan gætte det. Tæl fejl.
#   Note: LDA eller QDA med CV=T kan avendes

# > Ê(APR) (Expected error rate) with cross validation rate ----

# > ROC (Reciever operating Charateristic) ----
# Kan kun bruges på 2 grupper
# Det kan automatiseres med ROCR
library(ROCR)
?performance
performance(x, "tdr", "fpr")