
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Cette fonction permet de Tracer le mod�le de m�lange gaussien %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function modeleGaussi(sigma,moy)

    gm = gmdistribution(moy,sigma); % Distribution de m�lange gaussienne.
    rng('default'); % Pour la reproductibilit� .
    [Y,compIdx] = random(gm,9999);
    numIdx1 = sum(compIdx == 1);
    scatter(Y(:,1),Y(:,2),10,'.') % Nuage de points avec des points de taille 10
    title(" Les variables al�atoires g�n�r�es ");
    
end