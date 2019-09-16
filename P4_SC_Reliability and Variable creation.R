all.data = read.csv("P4_CAAT_SocialContext_Engagement_Codes.csv", stringsAsFactors = FALSE)

options(scipen = 999)

all.data[all.data == 888] <- NA

#Chose 8 to include for reliabilities.
all.data[all.data == 999] <- 8

#Coder pairs assignments

#AO_BC = 1
#AO_NB = 2
#NB_BC = 3

all.data$P4_SocialContext_CoderCategeory[all.data$Coders == "AO_BC"] <- 1
all.data$P4_SocialContext_CoderCategeory[all.data$Coders == "AO_NB"] <- 2
all.data$P4_SocialContext_CoderCategeory[all.data$Coders == "NB_BC"] <- 3
all.data$P4_SocialContext_Coders_CT[all.data$Coders_CT == "NB_BC"] <- 3

##Personal final scores per coding block

#Alex scores
all.data$IT_Afill_AO <- with(all.data, (IT_T1_Afill_AO+IT_T2_Afill_AO)/2, na.rm = TRUE)
all.data$IT_Antag_AO <- with(all.data, (IT_T1_Antag_AO+IT_T2_Antag_AO)/2, na.rm = TRUE)
all.data$IT_Eng_AO <- with(all.data, (IT_T1_Eng_AO+IT_T2_Eng_AO)/2, na.rm = TRUE)
all.data$IT_JCE_AO <- with(all.data, (IT_T1_JCE_AO+IT_T2_JCE_AO)/2, na.rm = TRUE)

all.data$PR_Afill_AO <- with(all.data, (PR_T1_Afill_AO+PR_T2_Afill_AO)/2, na.rm = TRUE)
all.data$PR_Antag_AO <- with(all.data, (PR_T1_Antag_AO+PR_T2_Antag_AO)/2, na.rm = TRUE)
all.data$PR_Eng_AO <- with(all.data, (PR_T1_Eng_AO+PR_T2_Eng_AO)/2, na.rm = TRUE)
all.data$PR_JCE_AO <- with(all.data, (PR_T1_JCE_AO+PR_T2_JCE_AO)/2, na.rm = TRUE)

all.data$CR_Afill_AO <- with(all.data, (CR_T1_Afill_AO+CR_T2_Afill_AO)/2, na.rm = TRUE)
all.data$CR_Antag_AO <- with(all.data, (CR_T1_Antag_AO+CR_T2_Antag_AO)/2, na.rm = TRUE)
all.data$CR_Eng_AO <- with(all.data, (CR_T1_Eng_AO+CR_T2_Eng_AO)/2, na.rm = TRUE)
all.data$CR_JCE_AO <- with(all.data, (CR_T1_JCE_AO+CR_T2_JCE_AO)/2, na.rm = TRUE)

#Buket scores
all.data$IT_Afill_BC <- with(all.data, (IT_T1_Afill_BC+IT_T2_Afill_BC)/2, na.rm = TRUE)
all.data$IT_Antag_BC <- with(all.data, (IT_T1_Antag_BC+IT_T2_Antag_BC)/2, na.rm = TRUE)
all.data$IT_Eng_BC <- with(all.data, (IT_T1_Eng_BC+IT_T2_Eng_BC)/2, na.rm = TRUE)
all.data$IT_JCE_BC <- with(all.data, (IT_T1_JCE_BC+IT_T2_JCE_BC)/2, na.rm = TRUE)

all.data$PR_Afill_BC <- with(all.data, (PR_T1_Afill_BC+PR_T2_Afill_BC)/2, na.rm = TRUE)
all.data$PR_Antag_BC <- with(all.data, (PR_T1_Antag_BC+PR_T2_Antag_BC)/2, na.rm = TRUE)
all.data$PR_Eng_BC <- with(all.data, (PR_T1_Eng_BC+PR_T2_Eng_BC)/2, na.rm = TRUE)
all.data$PR_JCE_BC <- with(all.data, (PR_T1_JCE_BC+PR_T2_JCE_BC)/2, na.rm = TRUE)

all.data$CR_Afill_BC <- with(all.data, (CR_T1_Afill_BC+CR_T2_Afill_BC)/2, na.rm = TRUE)
all.data$CR_Antag_BC <- with(all.data, (CR_T1_Antag_BC+CR_T2_Antag_BC)/2, na.rm = TRUE)
all.data$CR_Eng_BC <- with(all.data, (CR_T1_Eng_BC+CR_T2_Eng_BC)/2, na.rm = TRUE)
all.data$CR_JCE_BC <- with(all.data, (CR_T1_JCE_BC+CR_T2_JCE_BC)/2, na.rm = TRUE)

all.data$CT_Afill_BC <- with(all.data, (CT_T1_Afill_BC+CT_T2_Afill_BC)/2, na.rm = TRUE)
all.data$CT_Antag_BC <- with(all.data, (CT_T1_Antag_BC+CT_T2_Antag_BC)/2, na.rm = TRUE)
all.data$CT_Eng_BC <- with(all.data, (CT_T1_Eng_BC+CT_T2_Eng_BC)/2, na.rm = TRUE)
all.data$CT_JCE_BC <- with(all.data, (CT_T1_JCE_BC+CT_T2_JCE_BC)/2, na.rm = TRUE)

#Nichole Scores

all.data$IT_Afill_NB <- with(all.data, (IT_T1_Afill_NB+IT_T2_Afill_NB)/2, na.rm = TRUE)
all.data$IT_Antag_NB <- with(all.data, (IT_T1_Antag_NB+IT_T2_Antag_NB)/2, na.rm = TRUE)
all.data$IT_Eng_NB <- with(all.data, (IT_T1_Eng_NB+IT_T2_Eng_NB)/2, na.rm = TRUE)
all.data$IT_JCE_NB <- with(all.data, (IT_T1_JCE_NB+IT_T2_JCE_NB)/2, na.rm = TRUE)

all.data$PR_Afill_NB <- with(all.data, (PR_T1_Afill_NB+PR_T2_Afill_NB)/2, na.rm = TRUE)
all.data$PR_Antag_NB <- with(all.data, (PR_T1_Antag_NB+PR_T2_Antag_NB)/2, na.rm = TRUE)
all.data$PR_Eng_NB <- with(all.data, (PR_T1_Eng_NB+PR_T2_Eng_NB)/2, na.rm = TRUE)
all.data$PR_JCE_NB <- with(all.data, (PR_T1_JCE_NB+PR_T2_JCE_NB)/2, na.rm = TRUE)

all.data$CR_Afill_NB <- with(all.data, (CR_T1_Afill_NB+CR_T2_Afill_NB)/2, na.rm = TRUE)
all.data$CR_Antag_NB <- with(all.data, (CR_T1_Antag_NB+CR_T2_Antag_NB)/2, na.rm = TRUE)
all.data$CR_Eng_NB <- with(all.data, (CR_T1_Eng_NB+CR_T2_Eng_NB)/2, na.rm = TRUE)
all.data$CR_JCE_NB <- with(all.data, (CR_T1_JCE_NB+CR_T2_JCE_NB)/2, na.rm = TRUE)

all.data$CT_Afill_NB <- with(all.data, (CT_T1_Afill_NB+CT_T2_Afill_NB)/2, na.rm = TRUE)
all.data$CT_Antag_NB <- with(all.data, (CT_T1_Antag_NB+CT_T2_Antag_NB)/2, na.rm = TRUE)
all.data$CT_Eng_NB <- with(all.data, (CT_T1_Eng_NB+CT_T2_Eng_NB)/2, na.rm = TRUE)
all.data$CT_JCE_NB <- with(all.data, (CT_T1_JCE_NB+CT_T2_JCE_NB)/2, na.rm = TRUE)


#data subsets for coder pairs
sc.df_AO_BC <- all.data[which(all.data$P4_SocialContext_CoderCategeory == 1),]

sc.df_AO_NB <- all.data[which(all.data$P4_SocialContext_CoderCategeory == 2),]

sc.df_NB_BC <- all.data[which(all.data$P4_SocialContext_CoderCategeory == 3),]
ct.df_NB_BC <- all.data[which(all.data$P4_SocialContext_Coders_CT == 3),]
ct.df_NB_BC <- subset(ct.df_NB_BC, select = c("CT_Afill_NB", "CT_Antag_NB", "CT_Eng_NB","CT_JCE_NB", 
                                              "CT_Afill_BC", "CT_Antag_BC", "CT_Eng_BC","CT_JCE_BC"))

library(dplyr)
sc.df_NB_BC<- right_join(sc.df_NB_BC, ct.df_NB_BC, by = NULL, type = "right", match = "all")



#Pair 1 variable subsets all tasks combined

sc.df_AO_BC_afill <- subset(sc.df_AO_BC, select = c("IT_Afill_AO", "PR_Afill_AO", "CR_Afill_AO",
                                                    "IT_Afill_BC", "PR_Afill_BC", "CR_Afill_BC"))
sc.df_AO_BC_afill <- data.frame(IT_Afill_AO = c(sc.df_AO_BC_afill[,"IT_Afill_AO"], 
                                                sc.df_AO_BC_afill[,"PR_Afill_AO"], 
                                                sc.df_AO_BC_afill[,"CR_Afill_AO"]),
                                IT_Afill_BC = c(sc.df_AO_BC_afill[,"IT_Afill_BC"], 
                                                sc.df_AO_BC_afill[,"PR_Afill_BC"],
                                                sc.df_AO_BC_afill[,"CR_Afill_BC"]))

sc.df_AO_BC_antag <- subset(sc.df_AO_BC, select = c("IT_Antag_AO", "PR_Antag_AO", "CR_Antag_AO",
                                                    "IT_Antag_BC", "PR_Antag_BC", "CR_Antag_BC"))
sc.df_AO_BC_antag <- data.frame(IT_Antag_AO = c(sc.df_AO_BC_antag[,"IT_Antag_AO"], 
                                                sc.df_AO_BC_antag[,"PR_Antag_AO"], 
                                                sc.df_AO_BC_antag[,"CR_Antag_AO"]),
                                IT_Antag_BC = c(sc.df_AO_BC_antag[,"IT_Antag_BC"], 
                                                sc.df_AO_BC_antag[,"PR_Antag_BC"],
                                                sc.df_AO_BC_antag[,"CR_Antag_BC"]))

sc.df_AO_BC_eng <- subset(sc.df_AO_BC, select = c("IT_Eng_AO", "PR_Eng_AO", "CR_Eng_AO",
                                                    "IT_Eng_BC", "PR_Eng_BC", "CR_Eng_BC"))
sc.df_AO_BC_eng <- data.frame(IT_Eng_AO = c(sc.df_AO_BC_eng[,"IT_Eng_AO"], 
                                                sc.df_AO_BC_eng[,"PR_Eng_AO"], 
                                                sc.df_AO_BC_eng[,"CR_Eng_AO"]),
                                IT_Eng_BC = c(sc.df_AO_BC_eng[,"IT_Eng_BC"], 
                                                sc.df_AO_BC_eng[,"PR_Eng_BC"],
                                                sc.df_AO_BC_eng[,"CR_Eng_BC"]))

sc.df_AO_BC_jce <- subset(sc.df_AO_BC, select = c("IT_JCE_AO", "PR_JCE_AO", "CR_JCE_AO",
                                                    "IT_JCE_BC", "PR_JCE_BC", "CR_JCE_BC"))
sc.df_AO_BC_jce <- data.frame(IT_JCE_AO = c(sc.df_AO_BC_jce[,"IT_JCE_AO"], 
                                                sc.df_AO_BC_jce[,"PR_JCE_AO"], 
                                                sc.df_AO_BC_jce[,"CR_JCE_AO"]),
                                IT_JCE_BC = c(sc.df_AO_BC_jce[,"IT_JCE_BC"], 
                                                sc.df_AO_BC_jce[,"PR_JCE_BC"],
                                                sc.df_AO_BC_jce[,"CR_JCE_BC"]))

#Pair 2 variable subsets all tasks combined

sc.df_AO_NB_afill <- subset(sc.df_AO_NB, select = c("IT_Afill_AO", "PR_Afill_AO", "CR_Afill_AO",
                                                    "IT_Afill_NB", "PR_Afill_NB", "CR_Afill_NB"))
sc.df_AO_NB_afill <- data.frame(IT_Afill_AO = c(sc.df_AO_NB_afill[,"IT_Afill_AO"], 
                                                sc.df_AO_NB_afill[,"PR_Afill_AO"], 
                                                sc.df_AO_NB_afill[,"CR_Afill_AO"]),
                                IT_Afill_NB = c(sc.df_AO_NB_afill[,"IT_Afill_NB"], 
                                                sc.df_AO_NB_afill[,"PR_Afill_NB"],
                                                sc.df_AO_NB_afill[,"CR_Afill_NB"]))

sc.df_AO_NB_antag <- subset(sc.df_AO_NB, select = c("IT_Antag_AO", "PR_Antag_AO", "CR_Antag_AO",
                                                    "IT_Antag_NB", "PR_Antag_NB", "CR_Antag_NB"))
sc.df_AO_NB_antag <- data.frame(IT_Antag_AO = c(sc.df_AO_NB_antag[,"IT_Antag_AO"], 
                                                sc.df_AO_NB_antag[,"PR_Antag_AO"], 
                                                sc.df_AO_NB_antag[,"CR_Antag_AO"]),
                                IT_Antag_NB = c(sc.df_AO_NB_antag[,"IT_Antag_NB"], 
                                                sc.df_AO_NB_antag[,"PR_Antag_NB"],
                                                sc.df_AO_NB_antag[,"CR_Antag_NB"]))



sc.df_AO_NB_eng <- subset(sc.df_AO_NB, select = c("IT_Eng_AO", "PR_Eng_AO", "CR_Eng_AO",
                                                  "IT_Eng_NB", "PR_Eng_NB", "CR_Eng_NB"))
sc.df_AO_NB_eng <- data.frame(IT_Eng_AO = c(sc.df_AO_NB_eng[,"IT_Eng_AO"], 
                                            sc.df_AO_NB_eng[,"PR_Eng_AO"], 
                                            sc.df_AO_NB_eng[,"CR_Eng_AO"]),
                              IT_Eng_NB = c(sc.df_AO_NB_eng[,"IT_Eng_NB"], 
                                            sc.df_AO_NB_eng[,"PR_Eng_NB"],
                                            sc.df_AO_NB_eng[,"CR_Eng_NB"]))

sc.df_AO_NB_jce <- subset(sc.df_AO_NB, select = c("IT_JCE_AO", "PR_JCE_AO", "CR_JCE_AO",
                                                  "IT_JCE_NB", "PR_JCE_NB", "CR_JCE_NB"))
sc.df_AO_NB_jce <- data.frame(IT_JCE_AO = c(sc.df_AO_NB_jce[,"IT_JCE_AO"], 
                                            sc.df_AO_NB_jce[,"PR_JCE_AO"], 
                                            sc.df_AO_NB_jce[,"CR_JCE_AO"]),
                              IT_JCE_NB = c(sc.df_AO_NB_jce[,"IT_JCE_NB"], 
                                            sc.df_AO_NB_jce[,"PR_JCE_NB"],
                                            sc.df_AO_NB_jce[,"CR_JCE_NB"]))



#Pair 3 variable subsets all tasks combined

sc.df_NB_BC_afill <- subset(sc.df_NB_BC, select = c("IT_Afill_NB", "PR_Afill_NB", "CR_Afill_NB", "CT_Afill_NB",
                                                    "IT_Afill_BC", "PR_Afill_BC", "CR_Afill_BC", "CT_Afill_BC"))

sc.df_NB_BC_afill <- data.frame(IT_Afill_NB = c(sc.df_NB_BC_afill[,"IT_Afill_NB"], 
                                                sc.df_NB_BC_afill[,"PR_Afill_NB"], 
                                                sc.df_NB_BC_afill[,"CR_Afill_NB"],
                                                sc.df_NB_BC_afill[,"CT_Afill_NB"]),
                                IT_Afill_BC = c(sc.df_NB_BC_afill[,"IT_Afill_BC"], 
                                                sc.df_NB_BC_afill[,"PR_Afill_BC"],
                                                sc.df_NB_BC_afill[,"CR_Afill_BC"],
                                                sc.df_NB_BC_afill[,"CT_Afill_BC"]))

sc.df_NB_BC_antag <- subset(sc.df_NB_BC, select = c("IT_Antag_NB", "PR_Antag_NB", "CR_Antag_NB", "CT_Antag_NB",
                                                    "IT_Antag_BC", "PR_Antag_BC", "CR_Antag_BC", "CT_Antag_BC"))
sc.df_NB_BC_antag <- data.frame(IT_Antag_NB = c(sc.df_NB_BC_antag[,"IT_Antag_NB"], 
                                                sc.df_NB_BC_antag[,"PR_Antag_NB"], 
                                                sc.df_NB_BC_antag[,"CR_Antag_NB"],
                                                sc.df_NB_BC_antag[,"CT_Antag_NB"]),
                                IT_Antag_BC = c(sc.df_NB_BC_antag[,"IT_Antag_BC"], 
                                                sc.df_NB_BC_antag[,"PR_Antag_BC"],
                                                sc.df_NB_BC_antag[,"CR_Antag_BC"],
                                                sc.df_NB_BC_antag[,"CT_Antag_BC"]))

sc.df_NB_BC_eng <- subset(sc.df_NB_BC, select = c("IT_Eng_NB", "PR_Eng_NB", "CR_Eng_NB", "CT_Eng_NB",
                                                  "IT_Eng_BC", "PR_Eng_BC", "CR_Eng_BC", "CT_Eng_BC"))
sc.df_NB_BC_eng <- data.frame(IT_Eng_NB = c(sc.df_NB_BC_eng[,"IT_Eng_NB"], 
                                            sc.df_NB_BC_eng[,"PR_Eng_NB"], 
                                            sc.df_NB_BC_eng[,"CR_Eng_NB"],
                                            sc.df_NB_BC_eng[,"CT_Eng_NB"]),
                              IT_Eng_BC = c(sc.df_NB_BC_eng[,"IT_Eng_BC"], 
                                            sc.df_NB_BC_eng[,"PR_Eng_BC"],
                                            sc.df_NB_BC_eng[,"CR_Eng_BC"],
                                            sc.df_NB_BC_eng[,"CT_Eng_BC"]))

sc.df_NB_BC_jce <- subset(sc.df_NB_BC, select = c("IT_JCE_NB", "PR_JCE_NB", "CR_JCE_NB", "CT_JCE_NB",
                                                  "IT_JCE_BC", "PR_JCE_BC", "CR_JCE_BC", "CT_JCE_BC"))

sc.df_NB_BC_jce <- data.frame(IT_JCE_NB = c(sc.df_NB_BC_jce[,"IT_JCE_NB"], 
                                            sc.df_NB_BC_jce[,"PR_JCE_NB"], 
                                            sc.df_NB_BC_jce[,"CR_JCE_NB"],
                                            sc.df_NB_BC_jce[,"CT_JCE_NB"]),
                              IT_JCE_BC = c(sc.df_NB_BC_jce[,"IT_JCE_BC"], 
                                            sc.df_NB_BC_jce[,"PR_JCE_BC"],
                                            sc.df_NB_BC_jce[,"CR_JCE_BC"],
                                            sc.df_NB_BC_jce[,"CT_JCE_BC"]))




#ICC reliabilities for all pairs all variables combined across tasks
library(irr)

#Pair 1 
icc(sc.df_AO_BC_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_BC_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_BC_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_BC_jce, model="twoway", type="consistency", unit = "average")

#Pair 2
icc(sc.df_AO_NB_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_NB_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_NB_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_AO_NB_jce, model="twoway", type="consistency", unit = "average")

#Pair 3 

icc(sc.df_NB_BC_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_BC_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_BC_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_BC_jce, model="twoway", type="consistency", unit = "average")


#write file for final scores with out reliabilities
names(all.data)

all.data$IT_Afill_Final <- with(all.data, (IT_T1_Afill_Final+IT_T2_Afill_Final)/2, na.rm = TRUE)
all.data$IT_Antag_Final <- with(all.data, (IT_T1_Antag_Final+IT_T2_Antag_Final)/2, na.rm = TRUE)
all.data$IT_Eng_Final <- with(all.data, (IT_T1_Eng_Final+IT_T2_Eng_Final)/2, na.rm = TRUE)
all.data$IT_JCE_Final <- with(all.data, (IT_T1_JCE_Final+IT_T2_JCE_Final)/2, na.rm = TRUE)

all.data$PR_Afill_Final <- with(all.data, (PR_T1_Afill_Final+PR_T2_Afill_Final)/2, na.rm = TRUE)
all.data$PR_Antag_Final <- with(all.data, (PR_T1_Antag_Final+PR_T2_Antag_Final)/2, na.rm = TRUE)
all.data$PR_Eng_Final <- with(all.data, (PR_T1_Eng_Final+PR_T2_Eng_Final)/2, na.rm = TRUE)
all.data$PR_JCE_Final <- with(all.data, (PR_T1_JCE_Final+PR_T2_JCE_Final)/2, na.rm = TRUE)

all.data$CR_Afill_Final <- with(all.data, (CR_T1_Afill_Final+CR_T2_Afill_Final)/2, na.rm = TRUE)
all.data$CR_Antag_Final <- with(all.data, (CR_T1_Antag_Final+CR_T2_Antag_Final)/2, na.rm = TRUE)
all.data$CR_Eng_Final <- with(all.data, (CR_T1_Eng_Final+CR_T2_Eng_Final)/2, na.rm = TRUE)
all.data$CR_JCE_Final <- with(all.data, (CR_T1_JCE_Final+CR_T2_JCE_Final)/2, na.rm = TRUE)

all.data$CT_Afill_Final <- with(all.data, (CT_T1_Afill_Final+CT_T2_Afill_Final)/2, na.rm = TRUE)
all.data$CT_Antag_Final <- with(all.data, (CT_T1_Antag_Final+CT_T2_Antag_Final)/2, na.rm = TRUE)
all.data$CT_Eng_Final <- with(all.data, (CT_T1_Eng_Final+CT_T2_Eng_Final)/2, na.rm = TRUE)
all.data$CT_JCE_Final <- with(all.data, (CT_T1_JCE_Final+CT_T2_JCE_Final)/2, na.rm = TRUE)

###DO NOT RUN = csv and working data set creation##


sc.df_fin <- subset(all.data, select = c("ORCA_ID", "IT_Afill_Final", "IT_Antag_Final", "IT_Eng_Final", "IT_JCE_Final",
                                         "PR_Afill_Final", "PR_Antag_Final", "PR_Eng_Final", "PR_JCE_Final",
                                         "CR_Afill_Final", "CR_Antag_Final", "CR_Eng_Final", "CR_JCE_Final",
                                         "CT_Afill_Final", "CT_Antag_Final", "CT_Eng_Final", "CT_JCE_Final"))
View(sc.df_fin)
write.csv(sc.df_fin, file = "P4_CE_sc_finalscores.csv")
