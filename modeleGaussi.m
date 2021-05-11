
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Cette fonction permet de Tracer le modèle de mélange gaussien %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function modeleGaussi(sigma,moy)

    gm = gmdistribution(moy,sigma); % Distribution de mélange gaussienne.
    rng('default'); % Pour la reproductibilité .
    [Y,compIdx] = random(gm,9999);
    numIdx1 = sum(compIdx == 1);
    scatter(Y(:,1),Y(:,2),10,'.') % Nuage de points avec des points de taille 10
    title(" Les variables aléatoires générées ");
    
end