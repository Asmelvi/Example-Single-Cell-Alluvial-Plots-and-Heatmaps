
# Librería que vamos a usar para coger los datos:

library(readxl)

# Datos del Clonotipo y de sus respectivos Clusters

celulas_por_cluster_por_clonotipo = read_xlsx("Path", sheet = "ncells por cluster y clonotipo")
matriz_datos_clonotipo_cluster = data.frame(celulas_por_cluster_por_clonotipo)

# Datos del Clonotipo y sus respectivos Timepoints

celulas_por_clonotipo_por_timepoint = read_xlsx("Path", sheet = "ncells por origen y clonotipo")
matriz_datos_clonotipo_timepoint = data.frame(celulas_por_clonotipo_por_timepoint)

# VARIABLES PARA GUARDAR LOS CLONOTIPOS

# Total clonotipos por timepoint (Para hacer porcentajes)

total_BL = 0
total_C1 = 0
total_C2 = 0
total_PD = 0

# Script

print(matriz_datos_clonotipo_timepoint)

total_BL  = colSums(matriz_datos_clonotipo_timepoint[2])
total_C1  = colSums(matriz_datos_clonotipo_timepoint[3])
total_C2  = colSums(matriz_datos_clonotipo_timepoint[4])
total_PD  = colSums(matriz_datos_clonotipo_timepoint[5])

# Primeramente, convertimos los datos de cada clonotipo a porcentajes y lo guardamos en un dataframe

clonotipo = c()
BL = c()
C1 = c()
c2 = c()
PD = c()

for (num in matriz_datos_clonotipo_timepoint[1]){
  clonotipo = c(num)
}

for (num in matriz_datos_clonotipo_timepoint[2]){
  BL = c(num/total_BL)
}

for (num in matriz_datos_clonotipo_timepoint[3]){
  C1 = c(num/total_C1)
}

for (num in matriz_datos_clonotipo_timepoint[4]){
  C2 = c(num/total_C2)
}

for (num in matriz_datos_clonotipo_timepoint[5]){
  PD = c(num/total_PD)
}

frame_con_porcentajes_clono_timepoint = data.frame(BL,C1,C2,PD, row.names = clonotipo)
print(frame_con_porcentajes_clono_timepoint)


# Ahora, con los datos de los porcentajes de cada clonotipo, calculamos los porcentajes de cada cluster en cada timepoint:
#### Pero antes que nada ponemos bien la matriz de datos del clonotipo_cluster porque es un caos:

clonotipo2 = c()
cluster1 = c()
cluster2 = c()
cluster3 = c()
cluster4 = c()
cluster5 = c()
cluster6 = c()
cluster7 = c()
cluster8 = c()
cluster9 = c()
cluster10 = c()

for (num in matriz_datos_clonotipo_cluster[1]){
  clonotipo2 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[2]){
  cluster1 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[3]){
  cluster2 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[4]){
  cluster3 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[5]){
  cluster4 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[6]){
  cluster5 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[7]){
  cluster6 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[8]){
  cluster7 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[9]){
  cluster8 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[10]){
  cluster9 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[11]){
  cluster10 = c(num)
}

optimized_matriz_datos_clonotipo_cluster = data.frame(cluster1, cluster2, cluster3, cluster4, cluster5, cluster6, cluster7, cluster8, cluster9, cluster10, row.names = clonotipo2)
print(optimized_matriz_datos_clonotipo_cluster)

# Clonotipos por cluster y timepoint

## TP 1

total_CD4_Naive_TP1 = 0
total_CD4_Memory_1_TP1 = 0
total_CD8_Terminal_effector_1_TP1 = 0
total_CD4_Memory_effector_TP1 = 0
total_CD4_Memory_2_TP1 = 0
total_CD8_Effector_Memory_TP1 = 0
total_CD8_Naive_TP1 = 0
total_CD4_Effector_3_TP1 = 0
total_CD8_Terminal_effector_TP1 = 0
MAIT_TP1 = 0

## TP 2

total_CD4_Naive_TP2 = 0
total_CD4_Memory_1_TP2 = 0
total_CD8_Terminal_effector_1_TP2 = 0
total_CD4_Memory_effector_TP2 = 0
total_CD4_Memory_2_TP2 = 0
total_CD8_Effector_Memory_TP2 = 0
total_CD8_Naive_TP2 = 0
total_CD4_Effector_3_TP2 = 0
total_CD8_Terminal_effector_TP2 = 0
MAIT_TP2 = 0

## TP 3

total_CD4_Naive_TP3 = 0
total_CD4_Memory_1_TP3 = 0
total_CD8_Terminal_effector_1_TP3 = 0
total_CD4_Memory_effector_TP3 = 0
total_CD4_Memory_2_TP3 = 0
total_CD8_Effector_Memory_TP3 = 0
total_CD8_Naive_TP3 = 0
total_CD4_Effector_3_TP3 = 0
total_CD8_Terminal_effector_TP3 = 0
MAIT_TP3 = 0

## TP 4

total_CD4_Naive_TP4 = 0
total_CD4_Memory_1_TP4 = 0
total_CD8_Terminal_effector_1_TP4 = 0
total_CD4_Memory_effector_TP4 = 0
total_CD4_Memory_2_TP4 = 0
total_CD8_Effector_Memory_TP4 = 0
total_CD8_Naive_TP4 = 0
total_CD4_Effector_3_TP4 = 0
total_CD8_Terminal_effector_TP4 = 0
MAIT_TP4 = 0

# OJO, ESTO ES SOLO PARA LOS CLUSTERS INDIVIDUALES

for (clon in clonotipo){
  
  bl_value_time = frame_con_porcentajes_clono_timepoint[clon, 1]
  c1_value_time = frame_con_porcentajes_clono_timepoint[clon, 2]
  c2_value_time = frame_con_porcentajes_clono_timepoint[clon, 3]
  pd_value_time = frame_con_porcentajes_clono_timepoint[clon, 4]
  
  value_cluster1 = optimized_matriz_datos_clonotipo_cluster[clon, 1]
  value_cluster2 = optimized_matriz_datos_clonotipo_cluster[clon, 2]
  value_cluster3 = optimized_matriz_datos_clonotipo_cluster[clon, 3]
  value_cluster4 = optimized_matriz_datos_clonotipo_cluster[clon, 4]
  value_cluster5 = optimized_matriz_datos_clonotipo_cluster[clon, 5]
  value_cluster6 = optimized_matriz_datos_clonotipo_cluster[clon, 6]
  value_cluster7 = optimized_matriz_datos_clonotipo_cluster[clon, 7]
  value_cluster8 = optimized_matriz_datos_clonotipo_cluster[clon, 8]
  value_cluster9 = optimized_matriz_datos_clonotipo_cluster[clon, 9]
  value_cluster10 = optimized_matriz_datos_clonotipo_cluster[clon, 10]
  
  # CLUSTERS TIMEPOINT 1

  if ((bl_value_time > 0) & (value_cluster1 > 0)){
    total_CD4_Naive_TP1 = total_CD4_Naive_TP1 + bl_value_time
  }
  
  if ((bl_value_time > 0) & (value_cluster2 > 0)){
    total_CD4_Memory_1_TP1 = total_CD4_Memory_1_TP1 + bl_value_time
  }
  
  if ((bl_value_time > 0) & (value_cluster3 > 0)){
    total_CD8_Terminal_effector_1_TP1 = total_CD8_Terminal_effector_1_TP1 + bl_value_time
  }
  
  if ((bl_value_time > 0) & (value_cluster4 > 0)){
    total_CD4_Memory_effector_TP1 = toatl_CD4_Memory_effector_TP1 + bl_value_time
  }
  
  if ((bl_value_time > 0) & (value_cluster5 > 0)){
    total_CD4_Memory_2_TP1 = total_CD4_Memory_2_TP1 + bl_value_time
  }
  
  if ((bl_value_time > 0) & (value_cluster6 > 0)){
    total_CD8_Effector_Memory_TP1 = total_CD8_Effector_Memory_TP1 + bl_value_time
  }
  
  if ((bl_value_time > 0) & (value_cluster7 > 0)){
    total_CD8_Naive_TP1 = total_CD8_Naive_TP1 + bl_value_time
  }
  
  if ((bl_value_time > 0) & (value_cluster8 > 0)){
    total_CD4_Effector_3_TP1 = total_CD4_Effector_3_TP1 + bl_value_time
  }
  
  if ((bl_value_time > 0) & (value_cluster9 > 0)){
    total_CD8_Terminal_effector_TP1 = total_CD8_Terminal_effector_TP1 + bl_value_time
  }
  
  if ((bl_value_time > 0) & (value_cluster10 > 0)){
    MAIT_TP1 = MAIT_TP1 + bl_value_time
  }
  
  # CLUSTERS TIMEPOINT 2
  
  if ((c1_value_time > 0) & (value_cluster1 > 0)){
    total_CD4_Naive_TP2 = total_CD4_Naive_TP2 + c1_value_time
  }
  
  if ((c1_value_time > 0) & (value_cluster2 > 0)){
    total_CD4_Memory_1_TP2 = total_CD4_Memory_1_TP2 + c1_value_time
  }
  
  if ((c1_value_time > 0) & (value_cluster3 > 0)){
    total_CD8_Terminal_effector_1_TP2 = total_CD8_Terminal_effector_1_TP2 + c1_value_time
  }
  
  if ((c1_value_time > 0) & (value_cluster4 > 0)){
    total_CD4_Memory_effector_TP2 = toatl_CD4_Memory_effector_TP2 + c1_value_time
  }
  
  if ((c1_value_time > 0) & (value_cluster5 > 0)){
    total_CD4_Memory_2_TP2 = total_CD4_Memory_2_TP2 + c1_value_time
  }
  
  if ((c1_value_time > 0) & (value_cluster6 > 0)){
    total_CD8_Effector_Memory_TP2 = total_CD8_Effector_Memory_TP2 + c1_value_time
  }
  
  if ((c1_value_time > 0) & (value_cluster7 > 0)){
    total_CD8_Naive_TP2 = total_CD8_Naive_TP2 + c1_value_time
  }
  
  if ((c1_value_time > 0) & (value_cluster8 > 0)){
    total_CD4_Effector_3_TP2 = total_CD4_Effector_3_TP2 + c1_value_time
  }
  
  if ((c1_value_time > 0) & (value_cluster9 > 0)){
    total_CD8_Terminal_effector_TP2 = total_CD8_Terminal_effector_TP2 + c1_value_time
  }
  
  if ((c1_value_time > 0) & (value_cluster10 > 0)){
    MAIT_TP2 = MAIT_TP2 + c1_value_time
  }
  
  # CLUSTERS TIMEPOINT 3
  
  if ((c2_value_time > 0) & (value_cluster1 > 0)){
    total_CD4_Naive_TP3 = total_CD4_Naive_TP3 + c2_value_time
  }
  
  if ((c2_value_time > 0) & (value_cluster2 > 0)){
    total_CD4_Memory_1_TP3 = total_CD4_Memory_1_TP3 + c2_value_time
  }
  
  if ((c2_value_time > 0) & (value_cluster3 > 0)){
    total_CD8_Terminal_effector_1_TP3 = total_CD8_Terminal_effector_1_TP3 + c2_value_time
  }
  
  if ((c2_value_time > 0) & (value_cluster4 > 0)){
    total_CD4_Memory_effector_TP3 = toatl_CD4_Memory_effector_TP3 + c2_value_time
  }
  
  if ((c2_value_time > 0) & (value_cluster5 > 0)){
    total_CD4_Memory_2_TP3 = total_CD4_Memory_2_TP3 + c2_value_time
  }
  
  if ((c2_value_time > 0) & (value_cluster6 > 0)){
    total_CD8_Effector_Memory_TP3 = total_CD8_Effector_Memory_TP3 + c2_value_time
  }
  
  if ((c2_value_time > 0) & (value_cluster7 > 0)){
    total_CD8_Naive_TP3 = total_CD8_Naive_TP3 + c2_value_time
  }
  
  if ((c2_value_time > 0) & (value_cluster8 > 0)){
    total_CD4_Effector_3_TP3 = total_CD4_Effector_3_TP3 + c2_value_time
  }
  
  if ((c2_value_time > 0) & (value_cluster9 > 0)){
    total_CD8_Terminal_effector_TP3 = total_CD8_Terminal_effector_TP3 + c2_value_time
  }
  
  if ((c2_value_time > 0) & (value_cluster10 > 0)){
    MAIT_TP3 = MAIT_TP3 + c2_value_time
  }
  
  # CLUSTERS TIMEPOINT 4
  
  if ((pd_value_time > 0) & (value_cluster1 > 0)){
    total_CD4_Naive_TP4 = total_CD4_Naive_TP4 + pd_value_time
  }
  
  if ((pd_value_time > 0) & (value_cluster2 > 0)){
    total_CD4_Memory_1_TP4 = total_CD4_Memory_1_TP4 + pd_value_time
  }
  
  if ((pd_value_time > 0) & (value_cluster3 > 0)){
    total_CD8_Terminal_effector_1_TP4 = total_CD8_Terminal_effector_1_TP4 + pd_value_time
  }
  
  if ((pd_value_time > 0) & (value_cluster4 > 0)){
    total_CD4_Memory_effector_TP4 = total_CD4_Memory_effector_TP4 + pd_value_time
  }
  
  if ((pd_value_time > 0) & (value_cluster5 > 0)){
    total_CD4_Memory_2_TP4 = total_CD4_Memory_2_TP4 + pd_value_time
  }
  
  if ((pd_value_time > 0) & (value_cluster6 > 0)){
    total_CD8_Effector_Memory_TP4 = total_CD8_Effector_Memory_TP4 + pd_value_time
  }
  
  if ((pd_value_time > 0) & (value_cluster7 > 0)){
    total_CD8_Naive_TP4 = total_CD8_Naive_TP4 + pd_value_time
  }
  
  if ((pd_value_time > 0) & (value_cluster8 > 0)){
    total_CD4_Effector_3_TP4 = total_CD4_Effector_3_TP4 + pd_value_time
  }
  
  if ((pd_value_time > 0) & (value_cluster9 > 0)){
    total_CD8_Terminal_effector_TP4 = total_CD8_Terminal_effector_TP4 + pd_value_time
  }
  
  if ((pd_value_time > 0) & (value_cluster10 > 0)){
    MAIT_TP4 = MAIT_TP4 + pd_value_time
  }
  
}

lista_clusters = c("CD4 Naive",	"CD4 Memory 1", "CD8 Terminal Effector 1", "CD4 Memory Effector", "CD4 Memory 2", "CD8 Effector Memory", "CD8 Naive",	"CD8 Effector3", "CD8 Terminal Effector",	"MAIT")
Timepoint1_BL = c(total_CD4_Naive_TP1, 
                  total_CD4_Memory_1_TP1,
                  total_CD8_Terminal_effector_1_TP1,
                  total_CD4_Memory_effector_TP1,
                  total_CD4_Memory_2_TP1,
                  total_CD8_Effector_Memory_TP1,
                  total_CD8_Naive_TP1,
                  total_CD4_Effector_3_TP1,
                  total_CD8_Terminal_effector_TP1,
                  MAIT_TP1)
Timepoint2_C1 = c(total_CD4_Naive_TP2, 
                  total_CD4_Memory_1_TP2,
                  total_CD8_Terminal_effector_1_TP2,
                  total_CD4_Memory_effector_TP2,
                  total_CD4_Memory_2_TP2,
                  total_CD8_Effector_Memory_TP2,
                  total_CD8_Naive_TP2,
                  total_CD4_Effector_3_TP2,
                  total_CD8_Terminal_effector_TP2,
                  MAIT_TP2)
Timepoint3_C2 = c(total_CD4_Naive_TP3, 
                  total_CD4_Memory_1_TP3,
                  total_CD8_Terminal_effector_1_TP3,
                  total_CD4_Memory_effector_TP3,
                  total_CD4_Memory_2_TP3,
                  total_CD8_Effector_Memory_TP3,
                  total_CD8_Naive_TP3,
                  total_CD4_Effector_3_TP3,
                  total_CD8_Terminal_effector_TP3,
                  MAIT_TP3)
Timepoint4_PD = c(total_CD4_Naive_TP4, 
                  total_CD4_Memory_1_TP4,
                  total_CD8_Terminal_effector_1_TP4,
                  total_CD4_Memory_effector_TP4,
                  total_CD4_Memory_2_TP4,
                  total_CD8_Effector_Memory_TP4,
                  total_CD8_Naive_TP4,
                  total_CD4_Effector_3_TP4,
                  total_CD8_Terminal_effector_TP4,
                  MAIT_TP4)

dataframe_x_timepoints_y_clusters = data.frame(Timepoint1_BL, Timepoint2_C1, Timepoint3_C2, Timepoint4_PD, row.names = lista_clusters)
print(dataframe_x_timepoints_y_clusters) ### ESTE DATAFRAME IGUAL TE ES UTIL

Timepoint1_BL = c()
Timepoint2_C1 = c()
Timepoint3_C2 = c()
Timepoint4_PD = c()

# Calculamos el porcentaje de cada Cluster en cada Timepoint

for (cluster in lista_clusters){
  Timepoint1_BL = append(Timepoint1_BL, dataframe_x_timepoints_y_clusters[cluster, 1]/(dataframe_x_timepoints_y_clusters[cluster, 1] + dataframe_x_timepoints_y_clusters[cluster, 2]+ dataframe_x_timepoints_y_clusters[cluster, 3]+ dataframe_x_timepoints_y_clusters[cluster, 4]))
  Timepoint2_C1 = append(Timepoint2_C1, dataframe_x_timepoints_y_clusters[cluster, 2]/(dataframe_x_timepoints_y_clusters[cluster, 1] + dataframe_x_timepoints_y_clusters[cluster, 2]+ dataframe_x_timepoints_y_clusters[cluster, 3]+ dataframe_x_timepoints_y_clusters[cluster, 4]))
  Timepoint3_C2 = append(Timepoint3_C2, dataframe_x_timepoints_y_clusters[cluster, 3]/(dataframe_x_timepoints_y_clusters[cluster, 1] + dataframe_x_timepoints_y_clusters[cluster, 2]+ dataframe_x_timepoints_y_clusters[cluster, 3]+ dataframe_x_timepoints_y_clusters[cluster, 4]))
  Timepoint4_PD = append(Timepoint4_PD, dataframe_x_timepoints_y_clusters[cluster, 4]/(dataframe_x_timepoints_y_clusters[cluster, 1] + dataframe_x_timepoints_y_clusters[cluster, 2]+ dataframe_x_timepoints_y_clusters[cluster, 3]+ dataframe_x_timepoints_y_clusters[cluster, 4]))
}

dataframe_x_timepoints_y_clusters_rows = data.frame(Timepoint1_BL, Timepoint2_C1, Timepoint3_C2, Timepoint4_PD, row.names = lista_clusters)

#### PARA RESUMIR UN POCO

print(frame_con_porcentajes_clono_timepoint)
print(optimized_matriz_datos_clonotipo_cluster)
print(dataframe_x_timepoints_y_clusters_rows)

# Para hacer un macroalluvial con todos los clonotipos, tenemos

library(ggplot2)
library(ggalluvial)

# Optimizamos la matriz anterior de clusters clonotipos a porcentajes (normalizamos)

clonotipo2 = c()
cluster1 = c()
cluster2 = c()
cluster3 = c()
cluster4 = c()
cluster5 = c()
cluster6 = c()
cluster7 = c()
cluster8 = c()
cluster9 = c()
cluster10 = c()

counter = 0

for (num in matriz_datos_clonotipo_cluster[1]){
  clonotipo2 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[2]){
  cluster1 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[3]){
  cluster2 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[4]){
  cluster3 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[5]){
  cluster4 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[6]){
  cluster5 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[7]){
  cluster6 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[8]){
  cluster7 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[9]){
  cluster8 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[10]){
  cluster9 = c(num)
}

for (num in matriz_datos_clonotipo_cluster[11]){
  cluster10 = c(num)
}

semi_mat1 = data.frame(cluster1,cluster2,cluster3,cluster4,cluster5,cluster6,cluster7,cluster8,cluster9,cluster10, row.names = clonotipo2)
print(semi_mat1)

# Optimización 2 a porcentajes

cluster1_porcentaje = c()
cluster2_porcentaje = c()
cluster3_porcentaje = c()
cluster4_porcentaje = c()
cluster5_porcentaje = c()
cluster6_porcentaje = c()
cluster7_porcentaje = c()
cluster8_porcentaje = c()
cluster9_porcentaje = c()
cluster10_porcentaje = c()

for (clon in clonotipo2){
  cluster1_porcentaje = append(cluster1_porcentaje, (semi_mat1[clon, 1]/(semi_mat1[clon, 1] + semi_mat1[clon, 2] + semi_mat1[clon, 3] + semi_mat1[clon, 4] + semi_mat1[clon, 5] + semi_mat1[clon, 6] + semi_mat1[clon, 7] + semi_mat1[clon, 8] + semi_mat1[clon, 9] + semi_mat1[clon, 10])))
}

for (clon in clonotipo2){
  cluster2_porcentaje = append(cluster2_porcentaje, (semi_mat1[clon, 2]/(semi_mat1[clon, 1] + semi_mat1[clon, 2] + semi_mat1[clon, 3] + semi_mat1[clon, 4] + semi_mat1[clon, 5] + semi_mat1[clon, 6] + semi_mat1[clon, 7] + semi_mat1[clon, 8] + semi_mat1[clon, 9] + semi_mat1[clon, 10])))
}

for (clon in clonotipo2){
  cluster3_porcentaje = append(cluster3_porcentaje, (semi_mat1[clon, 3]/(semi_mat1[clon, 1] + semi_mat1[clon, 2] + semi_mat1[clon, 3] + semi_mat1[clon, 4] + semi_mat1[clon, 5] + semi_mat1[clon, 6] + semi_mat1[clon, 7] + semi_mat1[clon, 8] + semi_mat1[clon, 9] + semi_mat1[clon, 10])))
}

for (clon in clonotipo2){
  cluster4_porcentaje = append(cluster4_porcentaje, (semi_mat1[clon, 4]/(semi_mat1[clon, 1] + semi_mat1[clon, 2] + semi_mat1[clon, 3] + semi_mat1[clon, 4] + semi_mat1[clon, 5] + semi_mat1[clon, 6] + semi_mat1[clon, 7] + semi_mat1[clon, 8] + semi_mat1[clon, 9] + semi_mat1[clon, 10])))
}

for (clon in clonotipo2){
  cluster5_porcentaje = append(cluster5_porcentaje, (semi_mat1[clon, 5]/(semi_mat1[clon, 1] + semi_mat1[clon, 2] + semi_mat1[clon, 3] + semi_mat1[clon, 4] + semi_mat1[clon, 5] + semi_mat1[clon, 6] + semi_mat1[clon, 7] + semi_mat1[clon, 8] + semi_mat1[clon, 9] + semi_mat1[clon, 10])))
}

for (clon in clonotipo2){
  cluster6_porcentaje = append(cluster6_porcentaje, (semi_mat1[clon, 6]/(semi_mat1[clon, 1] + semi_mat1[clon, 2] + semi_mat1[clon, 3] + semi_mat1[clon, 4] + semi_mat1[clon, 5] + semi_mat1[clon, 6] + semi_mat1[clon, 7] + semi_mat1[clon, 8] + semi_mat1[clon, 9] + semi_mat1[clon, 10])))
}

for (clon in clonotipo2){
  cluster7_porcentaje = append(cluster7_porcentaje, (semi_mat1[clon, 7]/(semi_mat1[clon, 1] + semi_mat1[clon, 2] + semi_mat1[clon, 3] + semi_mat1[clon, 4] + semi_mat1[clon, 5] + semi_mat1[clon, 6] + semi_mat1[clon, 7] + semi_mat1[clon, 8] + semi_mat1[clon, 9] + semi_mat1[clon, 10])))
}

for (clon in clonotipo2){
  cluster8_porcentaje = append(cluster8_porcentaje, (semi_mat1[clon, 8]/(semi_mat1[clon, 1] + semi_mat1[clon, 2] + semi_mat1[clon, 3] + semi_mat1[clon, 4] + semi_mat1[clon, 5] + semi_mat1[clon, 6] + semi_mat1[clon, 7] + semi_mat1[clon, 8] + semi_mat1[clon, 9] + semi_mat1[clon, 10])))
}

for (clon in clonotipo2){
  cluster9_porcentaje = append(cluster9_porcentaje, (semi_mat1[clon, 9]/(semi_mat1[clon, 1] + semi_mat1[clon, 2] + semi_mat1[clon, 3] + semi_mat1[clon, 4] + semi_mat1[clon, 5] + semi_mat1[clon, 6] + semi_mat1[clon, 7] + semi_mat1[clon, 8] + semi_mat1[clon, 9] + semi_mat1[clon, 10])))
}

for (clon in clonotipo2){
  cluster10_porcentaje = append(cluster10_porcentaje, (semi_mat1[clon, 10]/(semi_mat1[clon, 1] + semi_mat1[clon, 2] + semi_mat1[clon, 3] + semi_mat1[clon, 4] + semi_mat1[clon, 5] + semi_mat1[clon, 6] + semi_mat1[clon, 7] + semi_mat1[clon, 8] + semi_mat1[clon, 9] + semi_mat1[clon, 10])))
}

percentage_optimized_matriz_datos_clonotipo_cluster = data.frame(cluster1_porcentaje, cluster2_porcentaje, cluster3_porcentaje, cluster4_porcentaje, cluster5_porcentaje, cluster6_porcentaje, cluster7_porcentaje, cluster8_porcentaje, cluster9_porcentaje, cluster10_porcentaje, row.names = clonotipo2)
print(percentage_optimized_matriz_datos_clonotipo_cluster)

# Hacemos una gráfica de cada clonotipo, separado por su cluster en cada timepoint, indicando su frecuencia en dicho cluster:
# Para ello necesitamos un dataframe con datos específicos


## TP 1

c_clusters_tp1 = c()
c_values_clusters_tp1 = c()
clones_select1 = c()

## TP 2

c_clusters_tp2 = c()
c_values_clusters_tp2 = c()
clones_select2 = c()

## TP 3

c_clusters_tp3 = c()
c_values_clusters_tp3 = c()
clones_select3 = c()

## TP 4

c_clusters_tp4 = c()
c_values_clusters_tp4 = c()
clones_select4 = c()

#### SEGUNDO RESUMEN DATAFRAMES

print(frame_con_porcentajes_clono_timepoint)
print(optimized_matriz_datos_clonotipo_cluster)
print(dataframe_x_timepoints_y_clusters)
print(percentage_optimized_matriz_datos_clonotipo_cluster)


for (clon in clonotipo2){
  #TP1
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,1]) > 0)){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,1]))
    c_clusters_tp1 = append(c_clusters_tp1, "Cluster1")
    clones_select1 = append(clones_select1, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,2]) > 0)){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,2]))
    c_clusters_tp1 = append(c_clusters_tp1, "Cluster2")
    clones_select1 = append(clones_select1, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,3]) > 0)){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,3]))
    c_clusters_tp1 = append(c_clusters_tp1, "Cluster3")
    clones_select1 = append(clones_select1, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,4]) > 0)){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,4]))
    c_clusters_tp1 = append(c_clusters_tp1, "Cluster4")
    clones_select1 = append(clones_select1, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,5]) > 0)){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,5]))
    c_clusters_tp1 = append(c_clusters_tp1, "Cluster5")
    clones_select = append(clones_select1, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,6]) > 0)){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,6]))
    c_clusters_tp1 = append(c_clusters_tp1, "Cluster6")
    clones_select1 = append(clones_select1, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,7]) > 0)){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,7]))
    c_clusters_tp1 = append(c_clusters_tp1, "Cluster7")
    clones_select1 = append(clones_select, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,8]) > 0)){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,8]))
    c_clusters_tp1 = append(c_clusters_tp1, "Cluster8")
    clones_select1 = append(clones_select1, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,9]) > 0)){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,9]))
    c_clusters_tp1 = append(c_clusters_tp1, "Cluster9")
    clones_select1 = append(clones_select1, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,10]) > 0)){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,10]))
    c_clusters_tp1 = append(c_clusters_tp1, "Cluster10")
    clones_select1 = append(clones_select1, clon)
  }
  
  if ((frame_con_porcentajes_clono_timepoint[clon,1]) == 0){
    c_values_clusters_tp1 = append(c_values_clusters_tp1, 0)
    c_clusters_tp1 = append(c_clusters_tp1, "No-clustered")
    clones_select1 = append(clones_select1, clon)
  }
  
  #TP2
  if (((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,1]) > 0)){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,1]))
    c_clusters_tp2 = append(c_clusters_tp2, "Cluster1")
    clones_select2 = append(clones_select2, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,2]) > 0)){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,2]))
    c_clusters_tp2 = append(c_clusters_tp2, "Cluster2")
    clones_select2 = append(clones_select2, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,3]) > 0)){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,3]))
    c_clusters_tp2 = append(c_clusters_tp2, "Cluster3")
    clones_select2 = append(clones_select2, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,4]) > 0)){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,4]))
    c_clusters_tp2 = append(c_clusters_tp2, "Cluster4")
    clones_select2 = append(clones_select2, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,5]) > 0)){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,5]))
    c_clusters_tp2 = append(c_clusters_tp2, "Cluster5")
    clones_select2 = append(clones_select2, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,6]) > 0)){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,6]))
    c_clusters_tp2 = append(c_clusters_tp2, "Cluster6")
    clones_select2 = append(clones_select2, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,7]) > 0)){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,7]))
    c_clusters_tp2 = append(c_clusters_tp2, "Cluster7")
    clones_select2 = append(clones_select2, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,8]) > 0)){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,8]))
    c_clusters_tp2 = append(c_clusters_tp2, "Cluster8")
    clones_select2 = append(clones_select2, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,9]) > 0)){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,9]))
    c_clusters_tp2 = append(c_clusters_tp2, "Cluster9")
    clones_select2 = append(clones_select2, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,10]) > 0)){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,10]))
    c_clusters_tp2 = append(c_clusters_tp2, "Cluster10")
    clones_select2 = append(clones_select2, clon)
  }
  
  if ((frame_con_porcentajes_clono_timepoint[clon,2]) == 0){
    c_values_clusters_tp2 = append(c_values_clusters_tp2, 0)
    c_clusters_tp2 = append(c_clusters_tp2, "No-clustered")
    clones_select2 = append(clones_select2, clon)
  }
  
  #TP3
  if (((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,1]) > 0)){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,1]))
    c_clusters_tp3 = append(c_clusters_tp3, "Cluster1")
    clones_select3 = append(clones_select3, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,2]) > 0)){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,2]))
    c_clusters_tp3 = append(c_clusters_tp3, "Cluster2")
    clones_select3 = append(clones_select3, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,3]) > 0)){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,3]))
    c_clusters_tp3 = append(c_clusters_tp3, "Cluster3")
    clones_select3 = append(clones_select3, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,4]) > 0)){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,4]))
    c_clusters_tp3 = append(c_clusters_tp3, "Cluster4")
    clones_select3 = append(clones_select3, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,5]) > 0)){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,5]))
    c_clusters_tp3 = append(c_clusters_tp3, "Cluster5")
    clones_select3 = append(clones_select3, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,6]) > 0)){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,6]))
    c_clusters_tp3 = append(c_clusters_tp3, "Cluster6")
    clones_select3 = append(clones_select3, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,7]) > 0)){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,7]))
    c_clusters_tp3 = append(c_clusters_tp3, "Cluster7")
    clones_select3 = append(clones_select3, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,8]) > 0)){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,8]))
    c_clusters_tp3 = append(c_clusters_tp3, "Cluster8")
    clones_select3 = append(clones_select3, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,9]) > 0)){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,9]))
    c_clusters_tp3 = append(c_clusters_tp3, "Cluster9")
    clones_select3 = append(clones_select3, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,10]) > 0)){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,10]))
    c_clusters_tp3 = append(c_clusters_tp3, "Cluster10")
    clones_select3 = append(clones_select3, clon)
  }
  
  if ((frame_con_porcentajes_clono_timepoint[clon,3]) == 0){
    c_values_clusters_tp3 = append(c_values_clusters_tp3, 0)
    c_clusters_tp3 = append(c_clusters_tp3, "No-clustered")
    clones_select3 = append(clones_select3, clon)
  }
  
  #TP4
  if (((frame_con_porcentajes_clono_timepoint[clon,4]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,1]) > 0)){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,1]))
    c_clusters_tp4 = append(c_clusters_tp4, "Cluster1")
    clones_select4 = append(clones_select4, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,4]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,2]) > 0)){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,2]))
    c_clusters_tp4 = append(c_clusters_tp4, "Cluster2")
    clones_select4 = append(clones_select4, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,4]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,3]) > 0)){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,3]))
    c_clusters_tp4 = append(c_clusters_tp4, "Cluster3")
    clones_select4 = append(clones_select4, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,4]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,4]) > 0)){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,4]))
    c_clusters_tp4 = append(c_clusters_tp4, "Cluster4")
    clones_select4 = append(clones_select4, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,4]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,5]) > 0)){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,5]))
    c_clusters_tp4 = append(c_clusters_tp4, "Cluster5")
    clones_select4 = append(clones_select4, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,4]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,6]) > 0)){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,6]))
    c_clusters_tp4 = append(c_clusters_tp4, "Cluster6")
    clones_select4 = append(clones_select4, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,4]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,7]) > 0)){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,7]))
    c_clusters_tp4 = append(c_clusters_tp4, "Cluster7")
    clones_select4 = append(clones_select4, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,4]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,8]) > 0)){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,8]))
    c_clusters_tp4 = append(c_clusters_tp4, "Cluster8")
    clones_select4 = append(clones_select4, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,4]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,9]) > 0)){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,9]))
    c_clusters_tp4 = append(c_clusters_tp1, "Cluster9")
    clones_select4 = append(clones_select4, clon)
  }
  
  if (((frame_con_porcentajes_clono_timepoint[clon,4]) > 0) & ((percentage_optimized_matriz_datos_clonotipo_cluster[clon,10]) > 0)){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, (frame_con_porcentajes_clono_timepoint[clon,1]) * (percentage_optimized_matriz_datos_clonotipo_cluster[clon,10]))
    c_clusters_tp4 = append(c_clusters_tp4, "Cluster10")
    clones_select4 = append(clones_select4, clon)
  }
  
  if ((frame_con_porcentajes_clono_timepoint[clon,4]) == 0){
    c_values_clusters_tp4 = append(c_values_clusters_tp4, 0)
    c_clusters_tp4 = append(c_clusters_tp4, "No-clustered")
    clones_select4 = append(clones_select4, clon)
  }
}  

####dataframe_final_con_todos_las_columnas = data.frame(clones_select1, c_values_clusters_tp1, c_clusters_tp1, clones_select2, c_values_clusters_tp2, c_clusters_tp2, clones_select3, c_values_clusters_tp3, c_clusters_tp3, clones_select4, c_values_clusters_tp4, c_clusters_tp4)
## Por si acaso

#### PARA RESUMIR UN POCO

print(frame_con_porcentajes_clono_timepoint)   ##### Esta matriz, para utilizarla posteriormente para los heatmaps hay que estandarizarla por ROW
print(percentage_optimized_matriz_datos_clonotipo_cluster)
print(dataframe_x_timepoints_y_clusters)


# Gráfica (Heatmap), para comprobar el peso de cada clon en el paciente en cada timepoint:

library(pheatmap)

subset_clonos = c()
tp1 = c()
tp2 = c()
tp3 = c()
tp4 = c()

for (clon in clonotipo2){
  if (((frame_con_porcentajes_clono_timepoint[clon,1]) > 0) & ((frame_con_porcentajes_clono_timepoint[clon,2]) > 0) & ((frame_con_porcentajes_clono_timepoint[clon,3]) > 0) & ((frame_con_porcentajes_clono_timepoint[clon,4]) > 0)){
    tp1 = append(tp1, (frame_con_porcentajes_clono_timepoint[clon,1]))
    tp2 = append(tp2, (frame_con_porcentajes_clono_timepoint[clon,2]))
    tp3 = append(tp3, (frame_con_porcentajes_clono_timepoint[clon,3]))
    tp4 = append(tp4, (frame_con_porcentajes_clono_timepoint[clon,4]))
    subset_clonos = append(subset_clonos, clon)
  }
}

frame_clonos_4_timepoints = data.frame(tp1, tp2, tp3, tp4, row.names = subset_clonos)
print(frame_clonos_4_timepoints)
pheatmap(as.matrix(frame_clonos_4_timepoints), cluster_cols = F, cluster_rows = F, main = "Peso de los clonotipos")

#############################################################

# Matriz clave para los heatmaps

Timepoint1_BL = c()
Timepoint2_C1 = c()
Timepoint3_C2 = c()
Timepoint4_PD = c()

print(frame_con_porcentajes_clono_timepoint)  

for (clon in clonotipo2){print(frame_con_porcentajes_clono_timepoint[clon, 1])}

for (clon in clonotipo2){
  Timepoint1_BL = append(Timepoint1_BL, frame_con_porcentajes_clono_timepoint[clon, 1]/(frame_con_porcentajes_clono_timepoint[clon, 1] + frame_con_porcentajes_clono_timepoint[clon, 2] + frame_con_porcentajes_clono_timepoint[clon, 3] + frame_con_porcentajes_clono_timepoint[clon, 4]))
  Timepoint2_C1 = append(Timepoint2_C1, frame_con_porcentajes_clono_timepoint[clon, 2]/(frame_con_porcentajes_clono_timepoint[clon, 1] + frame_con_porcentajes_clono_timepoint[clon, 2] + frame_con_porcentajes_clono_timepoint[clon, 3] + frame_con_porcentajes_clono_timepoint[clon, 4]))
  Timepoint3_C2 = append(Timepoint3_C2, frame_con_porcentajes_clono_timepoint[clon, 3]/(frame_con_porcentajes_clono_timepoint[clon, 1] + frame_con_porcentajes_clono_timepoint[clon, 2] + frame_con_porcentajes_clono_timepoint[clon, 3] + frame_con_porcentajes_clono_timepoint[clon, 4]))
  Timepoint4_PD = append(Timepoint4_PD, frame_con_porcentajes_clono_timepoint[clon, 4]/(frame_con_porcentajes_clono_timepoint[clon, 1] + frame_con_porcentajes_clono_timepoint[clon, 2] + frame_con_porcentajes_clono_timepoint[clon, 3] + frame_con_porcentajes_clono_timepoint[clon, 4]))
}

frame_clono_timepoint_normalizados = data.frame(Timepoint1_BL, Timepoint2_C1, Timepoint3_C2, Timepoint4_PD, row.names = clonotipo2)    ###### Esta es la matriz clave para hacer los heatmaps de cada timepoint, clonotipo y cluster
print(frame_clono_timepoint_normalizados)

#############################################################

############################################### Heatmaps ####

library(ComplexHeatmap)
library(circlize)

print(frame_clono_timepoint_normalizados)
print(percentage_optimized_matriz_datos_clonotipo_cluster)
print(dataframe_x_timepoints_y_clusters)        # Ojo que estas dos son diferentes
print(dataframe_x_timepoints_y_clusters_rows)   # Ojo que estas dos son diferentes

########################################################################################################

######### Únicamente los clonotipos comunes entre todos los timepoints  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}
print(CD4_Naive)
CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    if (((frame_clono_timepoint_normalizados[clon,1]) - (frame_clono_timepoint_normalizados[clon,4])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,4]) - (frame_clono_timepoint_normalizados[clon,1])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

print(matriz_expanded_contracted_stable)
matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)


main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T1, T2, T3, T4", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha

########################################################################################################

######### Únicamente los clonotipos comunes entre TP1 y TP2  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}

CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    if (((frame_clono_timepoint_normalizados[clon,1]) - (frame_clono_timepoint_normalizados[clon,2])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,2]) - (frame_clono_timepoint_normalizados[clon,1])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)
main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T1, T2", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha


########################################################################################################

######### TP1 y TP3  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}

CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    if (((frame_clono_timepoint_normalizados[clon,1]) - (frame_clono_timepoint_normalizados[clon,3])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,3]) - (frame_clono_timepoint_normalizados[clon,1])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)
main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T1, T3", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha

########################################################################################################

######### TP1 y TP4  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}

CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    if (((frame_clono_timepoint_normalizados[clon,1]) - (frame_clono_timepoint_normalizados[clon,4])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,4]) - (frame_clono_timepoint_normalizados[clon,1])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)
main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T1, T4", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha
########################################################################################################

######### T2 y T3  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}

CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    if (((frame_clono_timepoint_normalizados[clon,2]) - (frame_clono_timepoint_normalizados[clon,3])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,3]) - (frame_clono_timepoint_normalizados[clon,2])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)
main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T2, T3", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha
########################################################################################################

######### T2 y T4  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}

CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    if (((frame_clono_timepoint_normalizados[clon,2]) - (frame_clono_timepoint_normalizados[clon,4])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,4]) - (frame_clono_timepoint_normalizados[clon,2])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)
main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T2, T4", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha
########################################################################################################

######### T3 y T4  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}

CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    if (((frame_clono_timepoint_normalizados[clon,3]) - (frame_clono_timepoint_normalizados[clon,4])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,4]) - (frame_clono_timepoint_normalizados[clon,3])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)
main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T3, T4", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha

########################################################################################################

######### T1, T2 y T3  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}

CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) == 0)){
    if (((frame_clono_timepoint_normalizados[clon,1]) - (frame_clono_timepoint_normalizados[clon,3])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,3]) - (frame_clono_timepoint_normalizados[clon,1])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)
main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T1, T2, T3", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha

########################################################################################################

######### T1, T2, T4  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}

CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) == 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    if (((frame_clono_timepoint_normalizados[clon,1]) - (frame_clono_timepoint_normalizados[clon,4])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,1]) - (frame_clono_timepoint_normalizados[clon,1])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)
main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T1, T2, T4", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha

########################################################################################################

######### T1, T3, T4  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}

CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) > 0) & ((frame_clono_timepoint_normalizados[clon,2]) == 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    if (((frame_clono_timepoint_normalizados[clon,1]) - (frame_clono_timepoint_normalizados[clon,4])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,4]) - (frame_clono_timepoint_normalizados[clon,1])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)
main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T1,T3,T4", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha
########################################################################################################

######### T2, T3, T4  - HEATMAP DE CLONOTIPO Y CLUSTER

subset_clonos = c()
CD4_Naive = c()
CD4_Memory_1 = c()
CD8_Terminal_Effector_1 = c()
CD4_Memory_Effector  = c()
CD4_Memory_2 = c()
CD8_Effector_Memory = c()
CD8_Naive = c()
CD8_Effector3 = c()
CD8_Terminal_Effector = c()
MAIT = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive = append(CD4_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_1 = append(CD4_Memory_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector_1 = append(CD8_Terminal_Effector_1, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_Effector = append(CD4_Memory_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD4_Memory_2 = append(CD4_Memory_2, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector_Memory = append(CD8_Effector_Memory, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Naive = append(CD8_Naive, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Effector3 = append(CD8_Effector3, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    CD8_Terminal_Effector = append(CD8_Terminal_Effector, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    MAIT = append(MAIT, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]/(percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] + percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10]))
    subset_clonos = append(subset_clonos, clon)
  }
}

CD4_Naive_percentage = c()
CD4_Memory_1_percentage = c()
CD8_Terminal_Effector_1_percentage = c()
CD4_Memory_Effector_percentage  = c()
CD4_Memory_2_percentage = c()
CD8_Effector_Memory_percentage = c()
CD8_Naive_percentage = c()
CD8_Effector3_percentage = c()
CD8_Terminal_Effector_percentage = c()
MAIT_percentage = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    CD4_Naive_percentage = append(CD4_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1])
    CD4_Memory_1_percentage = append(CD4_Memory_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2])
    CD8_Terminal_Effector_1_percentage = append(CD8_Terminal_Effector_1_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3])
    CD4_Memory_2_percentage = append(CD4_Memory_2_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4])
    CD4_Memory_Effector_percentage  = append(CD4_Memory_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5])
    CD8_Effector_Memory_percentage = append(CD8_Effector_Memory_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6])
    CD8_Naive_percentage = append(CD8_Naive_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7])
    CD8_Effector3_percentage = append(CD8_Effector3_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8])
    CD8_Terminal_Effector_percentage = append(CD8_Terminal_Effector_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9])
    MAIT_percentage = append(MAIT_percentage, percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10])
  }
}

matriz_expanded_contracted_stable = c()

for (clon in clonotipo2){
  if (((frame_clono_timepoint_normalizados[clon,1]) == 0) & ((frame_clono_timepoint_normalizados[clon,2]) > 0) & ((frame_clono_timepoint_normalizados[clon,3]) > 0) & ((frame_clono_timepoint_normalizados[clon,4]) > 0)){
    if (((frame_clono_timepoint_normalizados[clon,2]) - (frame_clono_timepoint_normalizados[clon,4])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "C_Contracted")
    }
    
    else if (((frame_clono_timepoint_normalizados[clon,4]) - (frame_clono_timepoint_normalizados[clon,2])) > 0.1){
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "A_Expanded")
    }
    
    else{
      matriz_expanded_contracted_stable = append(matriz_expanded_contracted_stable, "B_Stable")
    }
  }
}

matriz_expanded_contracted_stable = rep(c(matriz_expanded_contracted_stable),1)
main_data_heat = data.frame(CD4_Naive, CD4_Memory_1, CD8_Terminal_Effector_1, CD4_Memory_Effector, CD4_Memory_2, CD8_Effector_Memory, CD8_Naive, CD8_Effector3, CD8_Terminal_Effector, MAIT, row.names = subset_clonos)
percentages_clusters = data.frame(CD4_Naive_percentage, CD4_Memory_1_percentage, CD8_Terminal_Effector_1_percentage, CD4_Memory_Effector_percentage, CD4_Memory_2_percentage, CD8_Effector_Memory_percentage, CD8_Naive_percentage, CD8_Effector3_percentage, CD8_Terminal_Effector_percentage, MAIT_percentage, row.names = subset_clonos)
ha = HeatmapAnnotation(percentage_clusters = anno_barplot(as.matrix(percentages_clusters)), which = "row")
rownames(main_data_heat) = subset_clonos
Heatmap(as.matrix(main_data_heat), show_column_names = TRUE, column_title = "Shared Clonotypes T2, T3, T4", row_split = matriz_expanded_contracted_stable, row_labels = subset_clonos, row_title_gp = gpar(fill = c("red", "yellow", "blue")), row_names_side = "left") + ha


#################################

### Para el alluvial necesitamos estas tres matrices

print(frame_con_porcentajes_clono_timepoint)
print(percentage_optimized_matriz_datos_clonotipo_cluster)
print(dataframe_x_timepoints_y_clusters_rows)


########################## Si tienes un PC de la nasa, puedes hacer un alluvial con TODOS los clonotipos, si no, hay que filtrar:

clonotipo3 = c()

for (clon in clonotipo2){
  if ((frame_con_porcentajes_clono_timepoint[clon,1]+frame_con_porcentajes_clono_timepoint[clon,2]+frame_con_porcentajes_clono_timepoint[clon,3]+frame_con_porcentajes_clono_timepoint[clon,4])> 0.01){    ##### Tienes que jugar con este valor, entre 0'02 y 0'001 para elegir tantos clonos "relevantes" como quieras, a menor numero, menos filtras
    clonotipo3 = append(clonotipo3, clon)
  }
}

print(clonotipo3)




########################## Parte para generar la matriz del alluvial

alluvial_clonotypes = c()

alluvial_values_1_timepoint = c()
alluvial_values_2_timepoint = c()
alluvial_values_3_timepoint = c()
alluvial_values_4_timepoint = c()

cluster_1_timepoint = c()
cluster_2_timepoint = c()
cluster_3_timepoint = c()
cluster_4_timepoint = c()

for (clon in clonotipo3){
  
  alluvial_values_1_timepoint = append(alluvial_values_1_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 1] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] * dataframe_x_timepoints_y_clusters_rows[1, 1]))
  alluvial_values_1_timepoint = append(alluvial_values_1_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 1] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] * dataframe_x_timepoints_y_clusters_rows[2, 1]))
  alluvial_values_1_timepoint = append(alluvial_values_1_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 1] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] * dataframe_x_timepoints_y_clusters_rows[3, 1]))
  alluvial_values_1_timepoint = append(alluvial_values_1_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 1] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] * dataframe_x_timepoints_y_clusters_rows[4, 1]))
  alluvial_values_1_timepoint = append(alluvial_values_1_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 1] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] * dataframe_x_timepoints_y_clusters_rows[5, 1]))
  alluvial_values_1_timepoint = append(alluvial_values_1_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 1] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] * dataframe_x_timepoints_y_clusters_rows[6, 1]))
  alluvial_values_1_timepoint = append(alluvial_values_1_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 1] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] * dataframe_x_timepoints_y_clusters_rows[7, 1]))
  alluvial_values_1_timepoint = append(alluvial_values_1_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 1] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] * dataframe_x_timepoints_y_clusters_rows[8, 1]))
  alluvial_values_1_timepoint = append(alluvial_values_1_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 1] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] * dataframe_x_timepoints_y_clusters_rows[9, 1]))
  alluvial_values_1_timepoint = append(alluvial_values_1_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 1] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10] * dataframe_x_timepoints_y_clusters_rows[10, 1]))
  
  alluvial_values_2_timepoint = append(alluvial_values_2_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 2] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] * dataframe_x_timepoints_y_clusters_rows[1, 2]))
  alluvial_values_2_timepoint = append(alluvial_values_2_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 2] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] * dataframe_x_timepoints_y_clusters_rows[2, 2]))
  alluvial_values_2_timepoint = append(alluvial_values_2_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 2] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] * dataframe_x_timepoints_y_clusters_rows[3, 2]))
  alluvial_values_2_timepoint = append(alluvial_values_2_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 2] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] * dataframe_x_timepoints_y_clusters_rows[4, 2]))
  alluvial_values_2_timepoint = append(alluvial_values_2_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 2] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] * dataframe_x_timepoints_y_clusters_rows[5, 2]))
  alluvial_values_2_timepoint = append(alluvial_values_2_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 2] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] * dataframe_x_timepoints_y_clusters_rows[6, 2]))
  alluvial_values_2_timepoint = append(alluvial_values_2_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 2] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] * dataframe_x_timepoints_y_clusters_rows[7, 2]))
  alluvial_values_2_timepoint = append(alluvial_values_2_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 2] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] * dataframe_x_timepoints_y_clusters_rows[8, 2]))
  alluvial_values_2_timepoint = append(alluvial_values_2_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 2] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] * dataframe_x_timepoints_y_clusters_rows[9, 2]))
  alluvial_values_2_timepoint = append(alluvial_values_2_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 2] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10] * dataframe_x_timepoints_y_clusters_rows[10, 2]))
  
  alluvial_values_3_timepoint = append(alluvial_values_3_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 3] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] * dataframe_x_timepoints_y_clusters_rows[1, 3]))
  alluvial_values_3_timepoint = append(alluvial_values_3_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 3] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] * dataframe_x_timepoints_y_clusters_rows[2, 3]))
  alluvial_values_3_timepoint = append(alluvial_values_3_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 3] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] * dataframe_x_timepoints_y_clusters_rows[3, 3]))
  alluvial_values_3_timepoint = append(alluvial_values_3_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 3] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] * dataframe_x_timepoints_y_clusters_rows[4, 3]))
  alluvial_values_3_timepoint = append(alluvial_values_3_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 3] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] * dataframe_x_timepoints_y_clusters_rows[5, 3]))
  alluvial_values_3_timepoint = append(alluvial_values_3_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 3] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] * dataframe_x_timepoints_y_clusters_rows[6, 3]))
  alluvial_values_3_timepoint = append(alluvial_values_3_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 3] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] * dataframe_x_timepoints_y_clusters_rows[7, 3]))
  alluvial_values_3_timepoint = append(alluvial_values_3_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 3] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] * dataframe_x_timepoints_y_clusters_rows[8, 3]))
  alluvial_values_3_timepoint = append(alluvial_values_3_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 3] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] * dataframe_x_timepoints_y_clusters_rows[9, 3]))
  alluvial_values_3_timepoint = append(alluvial_values_3_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 3] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10] * dataframe_x_timepoints_y_clusters_rows[10, 3]))
  
  alluvial_values_4_timepoint = append(alluvial_values_4_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 4] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 1] * dataframe_x_timepoints_y_clusters_rows[1, 4]))
  alluvial_values_4_timepoint = append(alluvial_values_4_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 4] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 2] * dataframe_x_timepoints_y_clusters_rows[2, 4]))
  alluvial_values_4_timepoint = append(alluvial_values_4_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 4] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 3] * dataframe_x_timepoints_y_clusters_rows[3, 4]))
  alluvial_values_4_timepoint = append(alluvial_values_4_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 4] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 4] * dataframe_x_timepoints_y_clusters_rows[4, 4]))
  alluvial_values_4_timepoint = append(alluvial_values_4_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 4] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 5] * dataframe_x_timepoints_y_clusters_rows[5, 4]))
  alluvial_values_4_timepoint = append(alluvial_values_4_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 4] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 6] * dataframe_x_timepoints_y_clusters_rows[6, 4]))
  alluvial_values_4_timepoint = append(alluvial_values_4_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 4] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 7] * dataframe_x_timepoints_y_clusters_rows[7, 4]))
  alluvial_values_4_timepoint = append(alluvial_values_4_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 4] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 8] * dataframe_x_timepoints_y_clusters_rows[8, 4]))
  alluvial_values_4_timepoint = append(alluvial_values_4_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 4] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 9] * dataframe_x_timepoints_y_clusters_rows[9, 4]))
  alluvial_values_4_timepoint = append(alluvial_values_4_timepoint, (frame_con_porcentajes_clono_timepoint[clon, 4] *  percentage_optimized_matriz_datos_clonotipo_cluster[clon, 10] * dataframe_x_timepoints_y_clusters_rows[10, 4]))
  
  cluster_1_timepoint = append(cluster_1_timepoint, "CD4_Naive")
  cluster_1_timepoint = append(cluster_1_timepoint, "CD4_Memory_1")
  cluster_1_timepoint = append(cluster_1_timepoint, "CD8_Terminal_Effector_1")
  cluster_1_timepoint = append(cluster_1_timepoint, "CD4_Memory_Effector")
  cluster_1_timepoint = append(cluster_1_timepoint, "CD4_Memory_2")
  cluster_1_timepoint = append(cluster_1_timepoint, "CD8_Effector_Memory")
  cluster_1_timepoint = append(cluster_1_timepoint, "CD8_Naive")
  cluster_1_timepoint = append(cluster_1_timepoint, "CD8_Effector_3")
  cluster_1_timepoint = append(cluster_1_timepoint, "CD8_Terminal_Effector")
  cluster_1_timepoint = append(cluster_1_timepoint, "MAIT")
  
  cluster_2_timepoint = append(cluster_2_timepoint, "CD4_Naive")
  cluster_2_timepoint = append(cluster_2_timepoint, "CD4_Memory_1")
  cluster_2_timepoint = append(cluster_2_timepoint, "CD8_Terminal_Effector_1")
  cluster_2_timepoint = append(cluster_2_timepoint, "CD4_Memory_Effector")
  cluster_2_timepoint = append(cluster_2_timepoint, "CD4_Memory_2")
  cluster_2_timepoint = append(cluster_2_timepoint, "CD8_Effector_Memory")
  cluster_2_timepoint = append(cluster_2_timepoint, "CD8_Naive")
  cluster_2_timepoint = append(cluster_2_timepoint, "CD8_Effector_3")
  cluster_2_timepoint = append(cluster_2_timepoint, "CD8_Terminal_Effector")
  cluster_2_timepoint = append(cluster_2_timepoint, "MAIT")
  
  cluster_3_timepoint = append(cluster_3_timepoint, "CD4_Naive")
  cluster_3_timepoint = append(cluster_3_timepoint, "CD4_Memory_1")
  cluster_3_timepoint = append(cluster_3_timepoint, "CD8_Terminal_Effector_1")
  cluster_3_timepoint = append(cluster_3_timepoint, "CD4_Memory_Effector")
  cluster_3_timepoint = append(cluster_3_timepoint, "CD4_Memory_2")
  cluster_3_timepoint = append(cluster_3_timepoint, "CD8_Effector_Memory")
  cluster_3_timepoint = append(cluster_3_timepoint, "CD8_Naive")
  cluster_3_timepoint = append(cluster_3_timepoint, "CD8_Effector_3")
  cluster_3_timepoint = append(cluster_3_timepoint, "CD8_Terminal_Effector")
  cluster_3_timepoint = append(cluster_3_timepoint, "MAIT")
  
  cluster_4_timepoint = append(cluster_4_timepoint, "CD4_Naive")
  cluster_4_timepoint = append(cluster_4_timepoint, "CD4_Memory_1")
  cluster_4_timepoint = append(cluster_4_timepoint, "CD8_Terminal_Effector_1")
  cluster_4_timepoint = append(cluster_4_timepoint, "CD4_Memory_Effector")
  cluster_4_timepoint = append(cluster_4_timepoint, "CD4_Memory_2")
  cluster_4_timepoint = append(cluster_4_timepoint, "CD8_Effector_Memory")
  cluster_4_timepoint = append(cluster_4_timepoint, "CD8_Naive")
  cluster_4_timepoint = append(cluster_4_timepoint, "CD8_Effector_3")
  cluster_4_timepoint = append(cluster_4_timepoint, "CD8_Terminal_Effector")
  cluster_4_timepoint = append(cluster_4_timepoint, "MAIT")
  
  alluvial_clonotypes = append(alluvial_clonotypes, clon)
  alluvial_clonotypes = append(alluvial_clonotypes, clon)
  alluvial_clonotypes = append(alluvial_clonotypes, clon)
  alluvial_clonotypes = append(alluvial_clonotypes, clon)
  alluvial_clonotypes = append(alluvial_clonotypes, clon)
  alluvial_clonotypes = append(alluvial_clonotypes, clon)
  alluvial_clonotypes = append(alluvial_clonotypes, clon)
  alluvial_clonotypes = append(alluvial_clonotypes, clon)
  alluvial_clonotypes = append(alluvial_clonotypes, clon)
  alluvial_clonotypes = append(alluvial_clonotypes, clon)
}

library(ggplot2)
library(ggalluvial)

new_data_matrix_for_alluvial = data.frame(alluvial_clonotypes, alluvial_values_1_timepoint , cluster_1_timepoint, alluvial_values_2_timepoint , cluster_2_timepoint, alluvial_values_3_timepoint , cluster_3_timepoint, alluvial_values_4_timepoint , cluster_4_timepoint)
new_data_matrix_for_alluvial

ggplot(as.data.frame(new_data_matrix_for_alluvial),
       aes(y = alluvial_values_1_timepoint, axis1 = alluvial_clonotypes, axis2 = cluster_1_timepoint)) +
  geom_alluvium(aes(fill = cluster_1_timepoint), width = 1/12) +
  geom_stratum(width = 1/12, fill = "white", color = "black") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("Clonotypes", "Clusters Timepoint 1"), expand = c(.05, .05)) +
  scale_fill_brewer(type = "qual", palette = "Set1") +
  ggtitle("Timepoint 1 cluster Most Remarkable Clonotypes")

ggplot(as.data.frame(new_data_matrix_for_alluvial),
       aes(y = alluvial_values_2_timepoint, axis1 = alluvial_clonotypes, axis2 = cluster_2_timepoint)) +
  geom_alluvium(aes(fill = cluster_2_timepoint), width = 1/12) +
  geom_stratum(width = 1/12, fill = "white", color = "black") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("Clonotypes", "Clusters Timepoint 2"), expand = c(.05, .05)) +
  scale_fill_brewer(type = "qual", palette = "Set1") +
  ggtitle("Timepoint 2 cluster Most Remarkable Clonotypes")

ggplot(as.data.frame(new_data_matrix_for_alluvial),
       aes(y = alluvial_values_3_timepoint, axis1 = alluvial_clonotypes, axis2 = cluster_3_timepoint)) +
  geom_alluvium(aes(fill = cluster_3_timepoint), width = 1/12) +
  geom_stratum(width = 1/12, fill = "white", color = "black") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("Clonotypes", "Clusters Timepoint 3"), expand = c(.05, .05)) +
  scale_fill_brewer(type = "qual", palette = "Set1") +
  ggtitle("Timepoint 3 cluster Most Remarkable Clonotypes")

ggplot(as.data.frame(new_data_matrix_for_alluvial),
       aes(y = alluvial_values_4_timepoint, axis1 = alluvial_clonotypes, axis2 = cluster_4_timepoint)) +
  geom_alluvium(aes(fill = cluster_4_timepoint), width = 1/12) +
  geom_stratum(width = 1/12, fill = "white", color = "black") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("Clonotypes", "Clusters Timepoint 4"), expand = c(.05, .05)) +
  scale_fill_brewer(type = "qual", palette = "Set1") +
  ggtitle("Timepoint 4 cluster Most Remarkable Clonotypes")
