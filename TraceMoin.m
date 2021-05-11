
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Cette fonction permet de tracer les droites estim�es des valeurs aleatoires %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function TraceMoin(f)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  Extraire les param�tres  %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[Y23,Y26,Y35,Y65]=moindcarre(f);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Droite estim�e des valeurs Puissance/Energ %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    subplot(3,2,1);
    t=0:0.001:max(f(5,:));
    plot(f(5,:),f(6,:),'o')
    hold on;
    plot(t,Y65,'r');
    title("Droite estim�e des valeurs Puissance/Energ");
    xlabel("Puissance");
    ylabel("Energie");
    hold off ;    

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Droite estim�e des valeurs Vars/Puissance %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    subplot(2,2,2);
    t=0:0.001:max(f(2,:));%Intervalle de definition.
    plot(f(2,:),f(5,:),'o');
    hold on;
    plot(t,Y26,'r');
    title("Droite estim�e des valeurs Vars/Puissance");
    xlabel("Variance");
    ylabel("Puissance");
    hold off ;
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Droite estim�e des valeurs Vars/Moys %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    subplot(2,2,3);
    t=0:0.001:max(f(2,:));%Intervalle de definition.
    plot(f(2,:),f(4,:),'o');
    hold on;
    plot(t,Y23,'r');
    title("Droite estim�e des valeurs Vars/Moys");
    xlabel("Variance");
    ylabel("Moyenne");
    hold off ;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Droite estim�e des valeurs Vars/Energie %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    subplot(2,2,4);
    t=0:0.001:max(f(2,:));%Intervalle de definition.
    plot(f(2,:),f(6,:),'o');
    hold on;
    plot(t,Y35,'r');
    title("Droite estim�e des valeurs Vars/Energie");
    xlabel("Variance");
    ylabel("Energie");
    hold off ;
    
end
