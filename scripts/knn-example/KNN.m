load cmm.data

entidades = cmm(1:1470,1:9);
classes = cmm(1:1470, 10);

classificador = fitcknn(entidades,classes,'Distance','cosine', 'NumNeighbors',3);

teste1 = cmm(1471:1473, 1:9);
teste1_classe = cmm(1471:1473, 10);

predicao = predict(classificador,teste1);