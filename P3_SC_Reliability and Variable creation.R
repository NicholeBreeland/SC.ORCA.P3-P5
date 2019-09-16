all.data = read.csv("P3_CAAT_SocialContext_Engagement_Codes.csv", stringsAsFactors = FALSE)

options(scipen = 999)

all.data[all.data == 888] <- NA

#999 indicates child was missing from video
#As this was coded - chose 8 to include for reliabilities.
#If rewriting final scores csv, change 8 to NA

all.data[all.data == 999] <- 8

#Coder pairs assignments

#BB_MP = 1
#NB_BB = 2
#NB_MP = 3
#NB_OB = 4
#OB_BB = 5
#OB_MP = 6

all.data$P4_SocialContext_CoderCategeory[all.data$Coders == "BB_MP"] <- 1
all.data$P4_SocialContext_CoderCategeory[all.data$Coders == "NB_BB"] <- 2
all.data$P4_SocialContext_CoderCategeory[all.data$Coders == "NB_MP"] <- 3
all.data$P4_SocialContext_CoderCategeory[all.data$Coders == "NB_OB"] <- 4
all.data$P4_SocialContext_CoderCategeory[all.data$Coders == "OB_BB"] <- 5
all.data$P4_SocialContext_CoderCategeory[all.data$Coders == "OB_MP"] <- 6

##Personal final scores per coding block

#BB scores
all.data$IT_Afill_BB <- with(all.data, (IT_T1_Afill_BB+IT_T2_Afill_BB)/2, na.rm = TRUE)
all.data$IT_Antag_BB <- with(all.data, (IT_T1_Antag_BB+IT_T2_Antag_BB)/2, na.rm = TRUE)
all.data$IT_Eng_BB <- with(all.data, (IT_T1_Eng_BB+IT_T2_Eng_BB)/2, na.rm = TRUE)
all.data$IT_JCE_BB <- with(all.data, (IT_T1_JCE_BB+IT_T2_JCE_BB)/2, na.rm = TRUE)

all.data$PR_Afill_BB <- with(all.data, (PR_T1_Afill_BB+PR_T2_Afill_BB)/2, na.rm = TRUE)
all.data$PR_Antag_BB <- with(all.data, (PR_T1_Antag_BB+PR_T2_Antag_BB)/2, na.rm = TRUE)
all.data$PR_Eng_BB <- with(all.data, (PR_T1_Eng_BB+PR_T2_Eng_BB)/2, na.rm = TRUE)
all.data$PR_JCE_BB <- with(all.data, (PR_T1_JCE_BB+PR_T2_JCE_BB)/2, na.rm = TRUE)

all.data$CR_Afill_BB <- with(all.data, (CR_T1_Afill_BB+CR_T2_Afill_BB)/2, na.rm = TRUE)
all.data$CR_Antag_BB <- with(all.data, (CR_T1_Antag_BB+CR_T2_Antag_BB)/2, na.rm = TRUE)
all.data$CR_Eng_BB <- with(all.data, (CR_T1_Eng_BB+CR_T2_Eng_BB)/2, na.rm = TRUE)
all.data$CR_JCE_BB <- with(all.data, (CR_T1_JCE_BB+CR_T2_JCE_BB)/2, na.rm = TRUE)

#MP scores
all.data$IT_Afill_MP <- with(all.data, (IT_T1_Afill_MP+IT_T2_Afill_MP)/2, na.rm = TRUE)
all.data$IT_Antag_MP <- with(all.data, (IT_T1_Antag_MP+IT_T2_Antag_MP)/2, na.rm = TRUE)
all.data$IT_Eng_MP <- with(all.data, (IT_T1_Eng_MP+IT_T2_Eng_MP)/2, na.rm = TRUE)
all.data$IT_JCE_MP <- with(all.data, (IT_T1_JCE_MP+IT_T2_JCE_MP)/2, na.rm = TRUE)

all.data$PR_Afill_MP <- with(all.data, (PR_T1_Afill_MP+PR_T2_Afill_MP)/2, na.rm = TRUE)
all.data$PR_Antag_MP <- with(all.data, (PR_T1_Antag_MP+PR_T2_Antag_MP)/2, na.rm = TRUE)
all.data$PR_Eng_MP <- with(all.data, (PR_T1_Eng_MP+PR_T2_Eng_MP)/2, na.rm = TRUE)
all.data$PR_JCE_MP <- with(all.data, (PR_T1_JCE_MP+PR_T2_JCE_MP)/2, na.rm = TRUE)

all.data$CR_Afill_MP <- with(all.data, (CR_T1_Afill_MP+CR_T2_Afill_MP)/2, na.rm = TRUE)
all.data$CR_Antag_MP <- with(all.data, (CR_T1_Antag_MP+CR_T2_Antag_MP)/2, na.rm = TRUE)
all.data$CR_Eng_MP <- with(all.data, (CR_T1_Eng_MP+CR_T2_Eng_MP)/2, na.rm = TRUE)
all.data$CR_JCE_MP <- with(all.data, (CR_T1_JCE_MP+CR_T2_JCE_MP)/2, na.rm = TRUE)

#NB Scores

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

#OB Scores

all.data$IT_Afill_OB <- with(all.data, (IT_T1_Afill_OB+IT_T2_Afill_OB)/2, na.rm = TRUE)
all.data$IT_Antag_OB <- with(all.data, (IT_T1_Antag_OB+IT_T2_Antag_OB)/2, na.rm = TRUE)
all.data$IT_Eng_OB <- with(all.data, (IT_T1_Eng_OB+IT_T2_Eng_OB)/2, na.rm = TRUE)
all.data$IT_JCE_OB <- with(all.data, (IT_T1_JCE_OB+IT_T2_JCE_OB)/2, na.rm = TRUE)

all.data$PR_Afill_OB <- with(all.data, (PR_T1_Afill_OB+PR_T2_Afill_OB)/2, na.rm = TRUE)
all.data$PR_Antag_OB <- with(all.data, (PR_T1_Antag_OB+PR_T2_Antag_OB)/2, na.rm = TRUE)
all.data$PR_Eng_OB <- with(all.data, (PR_T1_Eng_OB+PR_T2_Eng_OB)/2, na.rm = TRUE)
all.data$PR_JCE_OB <- with(all.data, (PR_T1_JCE_OB+PR_T2_JCE_OB)/2, na.rm = TRUE)

all.data$CR_Afill_OB <- with(all.data, (CR_T1_Afill_OB+CR_T2_Afill_OB)/2, na.rm = TRUE)
all.data$CR_Antag_OB <- with(all.data, (CR_T1_Antag_OB+CR_T2_Antag_OB)/2, na.rm = TRUE)
all.data$CR_Eng_OB <- with(all.data, (CR_T1_Eng_OB+CR_T2_Eng_OB)/2, na.rm = TRUE)
all.data$CR_JCE_OB <- with(all.data, (CR_T1_JCE_OB+CR_T2_JCE_OB)/2, na.rm = TRUE)


#data subsets for coder pairs
sc.df_BB_MP <- all.data[which(all.data$P4_SocialContext_CoderCategeory == 1),]
sc.df_NB_BB <- all.data[which(all.data$P4_SocialContext_CoderCategeory == 2),]
sc.df_NB_MP <- all.data[which(all.data$P4_SocialContext_CoderCategeory == 3),]
sc.df_NB_OB <- all.data[which(all.data$P4_SocialContext_CoderCategeory == 4),]
sc.df_OB_BB <- all.data[which(all.data$P4_SocialContext_CoderCategeory == 5),]
sc.df_OB_MP <- all.data[which(all.data$P4_SocialContext_CoderCategeory == 6),]

#Pair 1 variable subsets all tasks combined

sc.df_BB_MP_afill <- subset(sc.df_BB_MP, select = c("IT_Afill_BB", "PR_Afill_BB", "CR_Afill_BB",
                                                    "IT_Afill_MP", "PR_Afill_MP", "CR_Afill_MP"))
sc.df_BB_MP_afill <- data.frame(IT_Afill_BB = c(sc.df_BB_MP_afill[,"IT_Afill_BB"], 
                                                sc.df_BB_MP_afill[,"PR_Afill_BB"], 
                                                sc.df_BB_MP_afill[,"CR_Afill_BB"]),
                                IT_Afill_MP = c(sc.df_BB_MP_afill[,"IT_Afill_MP"], 
                                                sc.df_BB_MP_afill[,"PR_Afill_MP"],
                                                sc.df_BB_MP_afill[,"CR_Afill_MP"]))

sc.df_BB_MP_antag <- subset(sc.df_BB_MP, select = c("IT_Antag_BB", "PR_Antag_BB", "CR_Antag_BB",
                                                    "IT_Antag_MP", "PR_Antag_MP", "CR_Antag_MP"))
sc.df_BB_MP_antag <- data.frame(IT_Antag_BB = c(sc.df_BB_MP_antag[,"IT_Antag_BB"], 
                                                sc.df_BB_MP_antag[,"PR_Antag_BB"], 
                                                sc.df_BB_MP_antag[,"CR_Antag_BB"]),
                                IT_Antag_MP = c(sc.df_BB_MP_antag[,"IT_Antag_MP"], 
                                                sc.df_BB_MP_antag[,"PR_Antag_MP"],
                                                sc.df_BB_MP_antag[,"CR_Antag_MP"]))

sc.df_BB_MP_eng <- subset(sc.df_BB_MP, select = c("IT_Eng_BB", "PR_Eng_BB", "CR_Eng_BB",
                                                  "IT_Eng_MP", "PR_Eng_MP", "CR_Eng_MP"))
sc.df_BB_MP_eng <- data.frame(IT_Eng_BB = c(sc.df_BB_MP_eng[,"IT_Eng_BB"], 
                                            sc.df_BB_MP_eng[,"PR_Eng_BB"], 
                                            sc.df_BB_MP_eng[,"CR_Eng_BB"]),
                              IT_Eng_MP = c(sc.df_BB_MP_eng[,"IT_Eng_MP"], 
                                            sc.df_BB_MP_eng[,"PR_Eng_MP"],
                                            sc.df_BB_MP_eng[,"CR_Eng_MP"]))

sc.df_BB_MP_jce <- subset(sc.df_BB_MP, select = c("IT_JCE_BB", "PR_JCE_BB", "CR_JCE_BB",
                                                  "IT_JCE_MP", "PR_JCE_MP", "CR_JCE_MP"))
sc.df_BB_MP_jce <- data.frame(IT_JCE_BB = c(sc.df_BB_MP_jce[,"IT_JCE_BB"], 
                                            sc.df_BB_MP_jce[,"PR_JCE_BB"], 
                                            sc.df_BB_MP_jce[,"CR_JCE_BB"]),
                              IT_JCE_MP = c(sc.df_BB_MP_jce[,"IT_JCE_MP"], 
                                            sc.df_BB_MP_jce[,"PR_JCE_MP"],
                                            sc.df_BB_MP_jce[,"CR_JCE_MP"]))

#Pair 2 variable subsets all tasks combined

sc.df_NB_BB_afill <- subset(sc.df_NB_BB, select = c("IT_Afill_NB", "PR_Afill_NB", "CR_Afill_NB",
                                                    "IT_Afill_BB", "PR_Afill_BB", "CR_Afill_BB"))
sc.df_NB_BB_afill <- data.frame(IT_Afill_NB = c(sc.df_NB_BB_afill[,"IT_Afill_NB"], 
                                                sc.df_NB_BB_afill[,"PR_Afill_NB"], 
                                                sc.df_NB_BB_afill[,"CR_Afill_NB"]),
                                IT_Afill_BB = c(sc.df_NB_BB_afill[,"IT_Afill_BB"], 
                                                sc.df_NB_BB_afill[,"PR_Afill_BB"],
                                                sc.df_NB_BB_afill[,"CR_Afill_BB"]))

sc.df_NB_BB_antag <- subset(sc.df_NB_BB, select = c("IT_Antag_NB", "PR_Antag_NB", "CR_Antag_NB",
                                                    "IT_Antag_BB", "PR_Antag_BB", "CR_Antag_BB"))
sc.df_NB_BB_antag <- data.frame(IT_Antag_NB = c(sc.df_NB_BB_antag[,"IT_Antag_NB"], 
                                                sc.df_NB_BB_antag[,"PR_Antag_NB"], 
                                                sc.df_NB_BB_antag[,"CR_Antag_NB"]),
                                IT_Antag_BB = c(sc.df_NB_BB_antag[,"IT_Antag_BB"], 
                                                sc.df_NB_BB_antag[,"PR_Antag_BB"],
                                                sc.df_NB_BB_antag[,"CR_Antag_BB"]))



sc.df_NB_BB_eng <- subset(sc.df_NB_BB, select = c("IT_Eng_NB", "PR_Eng_NB", "CR_Eng_NB",
                                                  "IT_Eng_BB", "PR_Eng_BB", "CR_Eng_BB"))
sc.df_NB_BB_eng <- data.frame(IT_Eng_NB = c(sc.df_NB_BB_eng[,"IT_Eng_NB"], 
                                            sc.df_NB_BB_eng[,"PR_Eng_NB"], 
                                            sc.df_NB_BB_eng[,"CR_Eng_NB"]),
                              IT_Eng_BB = c(sc.df_NB_BB_eng[,"IT_Eng_BB"], 
                                            sc.df_NB_BB_eng[,"PR_Eng_BB"],
                                            sc.df_NB_BB_eng[,"CR_Eng_BB"]))

sc.df_NB_BB_jce <- subset(sc.df_NB_BB, select = c("IT_JCE_NB", "PR_JCE_NB", "CR_JCE_NB",
                                                  "IT_JCE_BB", "PR_JCE_BB", "CR_JCE_BB"))
sc.df_NB_BB_jce <- data.frame(IT_JCE_NB = c(sc.df_NB_BB_jce[,"IT_JCE_NB"], 
                                            sc.df_NB_BB_jce[,"PR_JCE_NB"], 
                                            sc.df_NB_BB_jce[,"CR_JCE_NB"]),
                              IT_JCE_BB = c(sc.df_NB_BB_jce[,"IT_JCE_BB"], 
                                            sc.df_NB_BB_jce[,"PR_JCE_BB"],
                                            sc.df_NB_BB_jce[,"CR_JCE_BB"]))

#Pair 3 variable subsets all tasks combined

sc.df_NB_MP_afill <- subset(sc.df_NB_MP, select = c("IT_Afill_NB", "PR_Afill_NB", "CR_Afill_NB",
                                                    "IT_Afill_MP", "PR_Afill_MP", "CR_Afill_MP"))
sc.df_NB_MP_afill <- data.frame(IT_Afill_NB = c(sc.df_NB_MP_afill[,"IT_Afill_NB"], 
                                                sc.df_NB_MP_afill[,"PR_Afill_NB"], 
                                                sc.df_NB_MP_afill[,"CR_Afill_NB"]),
                                IT_Afill_MP = c(sc.df_NB_MP_afill[,"IT_Afill_MP"], 
                                                sc.df_NB_MP_afill[,"PR_Afill_MP"],
                                                sc.df_NB_MP_afill[,"CR_Afill_MP"]))

sc.df_NB_MP_antag <- subset(sc.df_NB_MP, select = c("IT_Antag_NB", "PR_Antag_NB", "CR_Antag_NB",
                                                    "IT_Antag_MP", "PR_Antag_MP", "CR_Antag_MP"))
sc.df_NB_MP_antag <- data.frame(IT_Antag_NB = c(sc.df_NB_MP_antag[,"IT_Antag_NB"], 
                                                sc.df_NB_MP_antag[,"PR_Antag_NB"], 
                                                sc.df_NB_MP_antag[,"CR_Antag_NB"]),
                                IT_Antag_MP = c(sc.df_NB_MP_antag[,"IT_Antag_MP"], 
                                                sc.df_NB_MP_antag[,"PR_Antag_MP"],
                                                sc.df_NB_MP_antag[,"CR_Antag_MP"]))



sc.df_NB_MP_eng <- subset(sc.df_NB_MP, select = c("IT_Eng_NB", "PR_Eng_NB", "CR_Eng_NB",
                                                  "IT_Eng_MP", "PR_Eng_MP", "CR_Eng_MP"))
sc.df_NB_MP_eng <- data.frame(IT_Eng_NB = c(sc.df_NB_MP_eng[,"IT_Eng_NB"], 
                                            sc.df_NB_MP_eng[,"PR_Eng_NB"], 
                                            sc.df_NB_MP_eng[,"CR_Eng_NB"]),
                              IT_Eng_MP = c(sc.df_NB_MP_eng[,"IT_Eng_MP"], 
                                            sc.df_NB_MP_eng[,"PR_Eng_MP"],
                                            sc.df_NB_MP_eng[,"CR_Eng_MP"]))

sc.df_NB_MP_jce <- subset(sc.df_NB_MP, select = c("IT_JCE_NB", "PR_JCE_NB", "CR_JCE_NB",
                                                  "IT_JCE_MP", "PR_JCE_MP", "CR_JCE_MP"))
sc.df_NB_MP_jce <- data.frame(IT_JCE_NB = c(sc.df_NB_MP_jce[,"IT_JCE_NB"], 
                                            sc.df_NB_MP_jce[,"PR_JCE_NB"], 
                                            sc.df_NB_MP_jce[,"CR_JCE_NB"]),
                              IT_JCE_MP = c(sc.df_NB_MP_jce[,"IT_JCE_MP"], 
                                            sc.df_NB_MP_jce[,"PR_JCE_MP"],
                                            sc.df_NB_MP_jce[,"CR_JCE_MP"]))

#Pair 4 variable subsets all tasks combined

sc.df_NB_OB_afill <- subset(sc.df_NB_OB, select = c("IT_Afill_NB", "PR_Afill_NB", "CR_Afill_NB",
                                                    "IT_Afill_OB", "PR_Afill_OB", "CR_Afill_OB"))
sc.df_NB_OB_afill <- data.frame(IT_Afill_NB = c(sc.df_NB_OB_afill[,"IT_Afill_NB"], 
                                                sc.df_NB_OB_afill[,"PR_Afill_NB"], 
                                                sc.df_NB_OB_afill[,"CR_Afill_NB"]),
                                IT_Afill_OB = c(sc.df_NB_OB_afill[,"IT_Afill_OB"], 
                                                sc.df_NB_OB_afill[,"PR_Afill_OB"],
                                                sc.df_NB_OB_afill[,"CR_Afill_OB"]))

sc.df_NB_OB_antag <- subset(sc.df_NB_OB, select = c("IT_Antag_NB", "PR_Antag_NB", "CR_Antag_NB",
                                                    "IT_Antag_OB", "PR_Antag_OB", "CR_Antag_OB"))
sc.df_NB_OB_antag <- data.frame(IT_Antag_NB = c(sc.df_NB_OB_antag[,"IT_Antag_NB"], 
                                                sc.df_NB_OB_antag[,"PR_Antag_NB"], 
                                                sc.df_NB_OB_antag[,"CR_Antag_NB"]),
                                IT_Antag_OB = c(sc.df_NB_OB_antag[,"IT_Antag_OB"], 
                                                sc.df_NB_OB_antag[,"PR_Antag_OB"],
                                                sc.df_NB_OB_antag[,"CR_Antag_OB"]))



sc.df_NB_OB_eng <- subset(sc.df_NB_OB, select = c("IT_Eng_NB", "PR_Eng_NB", "CR_Eng_NB",
                                                  "IT_Eng_OB", "PR_Eng_OB", "CR_Eng_OB"))
sc.df_NB_OB_eng <- data.frame(IT_Eng_NB = c(sc.df_NB_OB_eng[,"IT_Eng_NB"], 
                                            sc.df_NB_OB_eng[,"PR_Eng_NB"], 
                                            sc.df_NB_OB_eng[,"CR_Eng_NB"]),
                              IT_Eng_OB = c(sc.df_NB_OB_eng[,"IT_Eng_OB"], 
                                            sc.df_NB_OB_eng[,"PR_Eng_OB"],
                                            sc.df_NB_OB_eng[,"CR_Eng_OB"]))

sc.df_NB_OB_jce <- subset(sc.df_NB_OB, select = c("IT_JCE_NB", "PR_JCE_NB", "CR_JCE_NB",
                                                  "IT_JCE_OB", "PR_JCE_OB", "CR_JCE_OB"))
sc.df_NB_OB_jce <- data.frame(IT_JCE_NB = c(sc.df_NB_OB_jce[,"IT_JCE_NB"], 
                                            sc.df_NB_OB_jce[,"PR_JCE_NB"], 
                                            sc.df_NB_OB_jce[,"CR_JCE_NB"]),
                              IT_JCE_OB = c(sc.df_NB_OB_jce[,"IT_JCE_OB"], 
                                            sc.df_NB_OB_jce[,"PR_JCE_OB"],
                                            sc.df_NB_OB_jce[,"CR_JCE_OB"]))

#Pair 5 variable subsets all tasks combined

sc.df_OB_BB_afill <- subset(sc.df_OB_BB, select = c("IT_Afill_OB", "PR_Afill_OB", "CR_Afill_OB",
                                                    "IT_Afill_BB", "PR_Afill_BB", "CR_Afill_BB"))
sc.df_OB_BB_afill <- data.frame(IT_Afill_OB = c(sc.df_OB_BB_afill[,"IT_Afill_OB"], 
                                                sc.df_OB_BB_afill[,"PR_Afill_OB"], 
                                                sc.df_OB_BB_afill[,"CR_Afill_OB"]),
                                IT_Afill_BB = c(sc.df_OB_BB_afill[,"IT_Afill_BB"], 
                                                sc.df_OB_BB_afill[,"PR_Afill_BB"],
                                                sc.df_OB_BB_afill[,"CR_Afill_BB"]))

sc.df_OB_BB_antag <- subset(sc.df_OB_BB, select = c("IT_Antag_OB", "PR_Antag_OB", "CR_Antag_OB",
                                                    "IT_Antag_BB", "PR_Antag_BB", "CR_Antag_BB"))
sc.df_OB_BB_antag <- data.frame(IT_Antag_OB = c(sc.df_OB_BB_antag[,"IT_Antag_OB"], 
                                                sc.df_OB_BB_antag[,"PR_Antag_OB"], 
                                                sc.df_OB_BB_antag[,"CR_Antag_OB"]),
                                IT_Antag_BB = c(sc.df_OB_BB_antag[,"IT_Antag_BB"], 
                                                sc.df_OB_BB_antag[,"PR_Antag_BB"],
                                                sc.df_OB_BB_antag[,"CR_Antag_BB"]))



sc.df_OB_BB_eng <- subset(sc.df_OB_BB, select = c("IT_Eng_OB", "PR_Eng_OB", "CR_Eng_OB",
                                                  "IT_Eng_BB", "PR_Eng_BB", "CR_Eng_BB"))
sc.df_OB_BB_eng <- data.frame(IT_Eng_OB = c(sc.df_OB_BB_eng[,"IT_Eng_OB"], 
                                            sc.df_OB_BB_eng[,"PR_Eng_OB"], 
                                            sc.df_OB_BB_eng[,"CR_Eng_OB"]),
                              IT_Eng_BB = c(sc.df_OB_BB_eng[,"IT_Eng_BB"], 
                                            sc.df_OB_BB_eng[,"PR_Eng_BB"],
                                            sc.df_OB_BB_eng[,"CR_Eng_BB"]))

sc.df_OB_BB_jce <- subset(sc.df_OB_BB, select = c("IT_JCE_OB", "PR_JCE_OB", "CR_JCE_OB",
                                                  "IT_JCE_BB", "PR_JCE_BB", "CR_JCE_BB"))
sc.df_OB_BB_jce <- data.frame(IT_JCE_OB = c(sc.df_OB_BB_jce[,"IT_JCE_OB"], 
                                            sc.df_OB_BB_jce[,"PR_JCE_OB"], 
                                            sc.df_OB_BB_jce[,"CR_JCE_OB"]),
                              IT_JCE_BB = c(sc.df_OB_BB_jce[,"IT_JCE_BB"], 
                                            sc.df_OB_BB_jce[,"PR_JCE_BB"],
                                            sc.df_OB_BB_jce[,"CR_JCE_BB"]))
#Pair 6 variable subsets all tasks combined

sc.df_OB_MP_afill <- subset(sc.df_OB_MP, select = c("IT_Afill_OB", "PR_Afill_OB", "CR_Afill_OB",
                                                    "IT_Afill_MP", "PR_Afill_MP", "CR_Afill_MP"))
sc.df_OB_MP_afill <- data.frame(IT_Afill_OB = c(sc.df_OB_MP_afill[,"IT_Afill_OB"], 
                                                sc.df_OB_MP_afill[,"PR_Afill_OB"], 
                                                sc.df_OB_MP_afill[,"CR_Afill_OB"]),
                                IT_Afill_MP = c(sc.df_OB_MP_afill[,"IT_Afill_MP"], 
                                                sc.df_OB_MP_afill[,"PR_Afill_MP"],
                                                sc.df_OB_MP_afill[,"CR_Afill_MP"]))

sc.df_OB_MP_antag <- subset(sc.df_OB_MP, select = c("IT_Antag_OB", "PR_Antag_OB", "CR_Antag_OB",
                                                    "IT_Antag_MP", "PR_Antag_MP", "CR_Antag_MP"))
sc.df_OB_MP_antag <- data.frame(IT_Antag_OB = c(sc.df_OB_MP_antag[,"IT_Antag_OB"], 
                                                sc.df_OB_MP_antag[,"PR_Antag_OB"], 
                                                sc.df_OB_MP_antag[,"CR_Antag_OB"]),
                                IT_Antag_MP = c(sc.df_OB_MP_antag[,"IT_Antag_MP"], 
                                                sc.df_OB_MP_antag[,"PR_Antag_MP"],
                                                sc.df_OB_MP_antag[,"CR_Antag_MP"]))



sc.df_OB_MP_eng <- subset(sc.df_OB_MP, select = c("IT_Eng_OB", "PR_Eng_OB", "CR_Eng_OB",
                                                  "IT_Eng_MP", "PR_Eng_MP", "CR_Eng_MP"))
sc.df_OB_MP_eng <- data.frame(IT_Eng_OB = c(sc.df_OB_MP_eng[,"IT_Eng_OB"], 
                                            sc.df_OB_MP_eng[,"PR_Eng_OB"], 
                                            sc.df_OB_MP_eng[,"CR_Eng_OB"]),
                              IT_Eng_MP = c(sc.df_OB_MP_eng[,"IT_Eng_MP"], 
                                            sc.df_OB_MP_eng[,"PR_Eng_MP"],
                                            sc.df_OB_MP_eng[,"CR_Eng_MP"]))

sc.df_OB_MP_jce <- subset(sc.df_OB_MP, select = c("IT_JCE_OB", "PR_JCE_OB", "CR_JCE_OB",
                                                  "IT_JCE_MP", "PR_JCE_MP", "CR_JCE_MP"))
sc.df_OB_MP_jce <- data.frame(IT_JCE_OB = c(sc.df_OB_MP_jce[,"IT_JCE_OB"], 
                                            sc.df_OB_MP_jce[,"PR_JCE_OB"], 
                                            sc.df_OB_MP_jce[,"CR_JCE_OB"]),
                              IT_JCE_MP = c(sc.df_OB_MP_jce[,"IT_JCE_MP"], 
                                            sc.df_OB_MP_jce[,"PR_JCE_MP"],
                                            sc.df_OB_MP_jce[,"CR_JCE_MP"]))


#ICC reliabilities for all pairs all variables combined across tasks
library(irr)

#Pair 1 
icc(sc.df_BB_MP_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_BB_MP_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_BB_MP_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_BB_MP_jce, model="twoway", type="consistency", unit = "average")

#Pair 2
icc(sc.df_NB_BB_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_BB_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_BB_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_BB_jce, model="twoway", type="consistency", unit = "average")

#Pair 3 

icc(sc.df_NB_MP_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_MP_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_MP_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_MP_jce, model="twoway", type="consistency", unit = "average")

#Pair 4

icc(sc.df_NB_OB_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_OB_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_OB_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_NB_OB_jce, model="twoway", type="consistency", unit = "average")

#Pair 5

icc(sc.df_OB_BB_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_OB_BB_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_OB_BB_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_OB_BB_jce, model="twoway", type="consistency", unit = "average")

#Pair 6

icc(sc.df_OB_MP_afill, model="twoway", type="consistency", unit = "average")
icc(sc.df_OB_MP_antag, model="twoway", type="consistency", unit = "average")
icc(sc.df_OB_MP_eng, model="twoway", type="consistency", unit = "average")
icc(sc.df_OB_MP_jce, model="twoway", type="consistency", unit = "average")


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



###DO NOT RUN = csv and working data set creation##


sc.df_fin <- subset(all.data, select = c("X.ID", "IT_Afill_Final", "IT_Antag_Final", "IT_Eng_Final", "IT_JCE_Final",
                                         "PR_Afill_Final", "PR_Antag_Final", "PR_Eng_Final", "PR_JCE_Final",
                                         "CR_Afill_Final", "CR_Antag_Final", "CR_Eng_Final", "CR_JCE_Final"))
View(sc.df_fin)
write.csv(sc.df_fin, file = "P3_CE_sc_finalscores.csv")
