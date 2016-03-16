load cmm.data

entidades = cmm(1:1326,1:9);
classes = cmm(1:1326, 10);

classificador = fitcknn(entidades,classes,'Distance','euclidean', 'NumNeighbors',35);

teste1 = cmm(1327:1473, 1:9);
teste1_classe = cmm(1327:1473, 10);

[label score] = predict(classificador,teste1);

z = 0;
for x = 1:size(label)
    if (label(x) == teste1_classe(x))
        z = z + 1;
    end
end

z = z/147;