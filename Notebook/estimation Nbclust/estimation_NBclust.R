 
library("NbClust")
IndexList<-list('ch','cindex','kl','rubin','dunn','silhouette','kl')
nbClust<- function(IndexList,path) {
  d=read.csv(file=path, header=TRUE, sep =",")
  K=c()
  Index=c('ch','cindex','kl','rubin','dunn','silhouette','kl')
  #Distance= c('euclidean','euclidean','euclidean','euclidean','euclidean','euclidean','euclidean')
  #Methode= c('complete','complete','complete','complete','complete','complete','complete')
  
  for(i in IndexList) {
    res<-NbClust(d, distance = "euclidean", min.nc=2, max.nc=6, method = "complete",
                 index = i)
    
    K=append(K,res$Best.nc[1])
    #print(res$Best.nc[1])
  }
  df <- data.frame(Index,K)
  return(df)
  
  
}


            # --------- Dataset classic 3 -----------#

# Representation Word2vec

path="C:/Users/ThinkPad/Desktop/Projet data2/classic3_word2vec.csv"

df_classic3_word2vec=nbClust(IndexList,path)
print(df_classic3_word2vec)
 
# Representation Glove


path="C:/Users/ThinkPad/Desktop/Projet data2/classic3_glove.csv"
df_classic3_glove=nbClust(IndexList,path)
print(df_classic3_glove)



             # --------- Dataset bbc -----------#


# Representation Word2vec

path="C:/Users/ThinkPad/Desktop/Projet data2/bbc_word2vec.csv"

df_bbc_word2vec=nbClust(IndexList,path)
print(df_bbc_word2vec)

# Representation Glove
path="C:/Users/ThinkPad/Desktop/Projet data2/bbc_glove.csv"

df_bbc_glove=nbClust(IndexList,path)
print(df_bbc_glove)


              # --------- Dataset classic4 -----------#


# Representation Word2vec

path="C:/Users/ThinkPad/Desktop/Projet data2/classic4_word2vec.csv"

df_classic4_word2vec=nbClust(IndexList,path)
print(df_bbc_word2vec)

# Representation Glove
path="C:/Users/ThinkPad/Desktop/Projet data2/classic4_glove.csv"

df_classic4_glove=nbClust(IndexList,path)
print(df_classic4_glove)


