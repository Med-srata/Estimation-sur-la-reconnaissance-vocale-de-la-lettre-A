
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Cette fonction permet de tracer la loi normale d'un phénomène aléatoire %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function LoiNormale(ValPro)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  Extraire les paramètres  %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    Evenements=strings(1,4);
    Evenements(1)='Variation de Variance';
    Evenements(2)='Variation d Ecart type ';
    Evenements(3)='Variation de Puissance';
    Evenements(4)='Variation d Energie ';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Loi normale de Variation de Variance %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    subplot(2,2,1);
    sigma=ValPro(3,2);
    moy=ValPro(1,2);
    x=-8*sigma:0.01:8*sigma;%Intervalle
    normal=(1/(sqrt(2*pi)*sigma))*(exp(-((x-moy).^2)/(2*(sigma.^2))));%Fonction normale.
    plot(x,normal);
    title("loi normal de "+Evenements(1)+" sigma="+sigma+" ,et moy="+moy);
    xlabel("Variable x");
    ylabel("Densité de probabilité P(x)");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Loi normale de Variation d'Ecart type %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    subplot(2,2,2);
    sigma=ValPro(3,3);
    moy=ValPro(1,3);
    x=-8*sigma:0.01:8*sigma;%Intervalle
    normal=(1/(sqrt(2*pi)*sigma))*(exp(-((x-moy).^2)/(2*(sigma.^2))));%Fonction normale.
    plot(x,normal);
    title("loi normal de "+Evenements(2)+" sigma="+sigma+" ,et moy="+moy);
    xlabel("Variable x");
    ylabel("Densité de probabilité P(x)");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Loi normale de Variation de Puissance %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    subplot(2,2,3);
    sigma=ValPro(3,5);
    moy=ValPro(1,5);
    x=-8*sigma:0.01:8*sigma;%Intervalle
    normal=(1/(sqrt(2*pi)*sigma))*(exp(-((x-moy).^2)/(2*(sigma.^2))));%Fonction normale.
    plot(x,normal);
    title("loi normal de "+Evenements(3)+" sigma="+sigma+" ,et moy="+moy);
    xlabel("Variable x");
    ylabel("Densité de probabilité P(x)");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Loi normale de Variation d'Energie %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    subplot(2,2,4);
    sigma=ValPro(3,6);
    moy=ValPro(1,6);
    x=-8*sigma:0.01:8*sigma;%Intervalle
    normal=(1/(sqrt(2*pi)*sigma))*(exp(-((x-moy).^2)/(2*(sigma.^2))));%Fonction normale.
    plot(x,normal);
    title("loi normal de "+Evenements(4)+" sigma="+sigma+" ,et moy="+moy);
    xlabel("Variable x");
    ylabel("Densité de probabilité P(x)");

end