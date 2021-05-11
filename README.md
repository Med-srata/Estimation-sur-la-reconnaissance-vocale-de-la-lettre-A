# Estimation sur la reconnaissance vocale de la lettre A
<p>Dans ce &nbsp;projet , nous pr&eacute;sentons &nbsp;une estimation sur la reconnaissance de la voix de son "A " ,nous avons utilis&eacute; MATLAB pour appliquer les algorithmes suivants&nbsp;d&rsquo;une fa&ccedil;on g&eacute;n&eacute;rale&nbsp;:</p>
<ul>
<li>Extraction des &eacute;chantillons vocaux de m&ecirc;me ph&eacute;nom&egrave;ne.</li>
<li>Calcule de la moyenne, la variance et l&rsquo;&eacute;cart type des &eacute;chantillons.</li>
<li>Calcule des droites estim&eacute;es d&rsquo;apr&egrave;s l&rsquo;application de m&eacute;thode moindre carr&eacute;e.</li>
<li>Tra&ccedil;age de mod&egrave;le gaussien, de densit&eacute; de probabilit&eacute; de la loi normale et des droites estim&eacute;es de la m&eacute;thode moindre carr&eacute;e.</li>
<li>Extraction du signal vocal utile</li>
<li>Calcule des erreurs de justesse et de lin&eacute;arit&eacute;, et la fid&eacute;lit&eacute; de signal vocal utile.</li>
<li>Affichage de r&eacute;sultat.</li>
</ul>
<h2><a name="_Toc64897463"></a>Fonctions cr&eacute;&eacute;es pour les traitements statiques&nbsp;</h2>
<p>Dans la programmation du code, nous avons utilis&eacute; huit fonctions principales&nbsp;:</p>
<h3><a name="_Toc64897464"></a>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fonction param&egrave;tres.m&nbsp;</h3>
<p>Cette fonction est con&ccedil;ue pour extraire les param&egrave;tres d&rsquo;un signal vocal original suivant 3 parties&nbsp;:</p>
<ul>
<li>La premi&egrave;re partie est d&eacute;di&eacute;e pour supprimer le silence de la parole &agrave; l&rsquo;aide de l&rsquo;analyse de cadre par cadre et &agrave; l&rsquo;aide de ZCR.</li>
<li>La deuxi&egrave;me partie permet de filtrer le signal du bruit &agrave; l&rsquo;aide du filtre butterworth passe-bande.</li>
<li>Et la partie finale est r&eacute;serv&eacute;e pour extraire les param&egrave;tres du signal, dont le coefficient de d&eacute;pendance, la variance de signal, l&rsquo;&eacute;cart type, la moyenne, la puissance et l&rsquo;&eacute;nergie. Tous ces param&egrave;tres forment un vecteur de six &eacute;l&eacute;ments.</li>
</ul>
<p>Comme il est indiqu&eacute; dans la figure ci-dessous, les param&egrave;tres (Coefficient, Variance, ct) d&rsquo;un &eacute;chantillon vocal sont stock&eacute;s dans un vecteur &laquo; Parametres&nbsp;&raquo;.</p>
<h3><a name="_Toc64897465"></a>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fonction parametreRan.m&nbsp;</h3>
<p>Cette fonction permet d&rsquo;extraire les param&egrave;tres d&rsquo;un signal vocal modifi&eacute;&nbsp;: nous avons modifi&eacute; al&eacute;atoirement la fr&eacute;quence et l&rsquo;amplitude d&rsquo;un signal originale, en utilisant la fonction randn(), pour avoir plusieurs signaux &agrave; traiter. Apr&egrave;s nous avons extrait les param&egrave;tres de signal suivant les m&ecirc;mes parties de la fonction pr&eacute;c&eacute;dente.</p>
<h3><a name="_Toc64897466"></a>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fonction Echantillons.m&nbsp;</h3>
<p>Cette fonction permet de calculer les valeurs moyennes, les variances et les &eacute;carts types des &eacute;chantillons vocaux qui sont stock&eacute;s dans la matrice &laquo; Valeur&nbsp;&raquo;, puis de les affecter selon l&rsquo;ordre dans une matrice &laquo;ValPro&nbsp;&raquo;.</p>
<h3><a name="_Toc64897467"></a>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fonction moindcarre.m&nbsp;</h3>
<p>Cette fonction permet d'appliquer la m&eacute;thode des moindres carr&eacute;s, suivant deux parties&nbsp;:</p>
<ul>
<li>La premi&egrave;re partie pour trouver les coefficients des fonctions affines de la m&eacute;thode des moindres carr&eacute;s.</li>
<li>La deuxi&egrave;me partie pour d&eacute;duire les fonctions affines de la m&eacute;thode des moindres carr&eacute;s et de les tracer.</li>
</ul>
<p>La m&eacute;thode des <strong><em>moindres carr&eacute;s </em></strong>consiste a trouv&eacute; une fonction affine qui r&eacute;sume la moyenne des valeurs al&eacute;atoires pour d&eacute;finir les erreurs lin&eacute;aires.</p>
<p>Les r&eacute;sultats des &eacute;quations sont sous forme des vecteurs de taille qui d&eacute;pend de&nbsp; la valeur maximale de chaque ensemble de param&egrave;tres donn&eacute;s par la fonction &laquo;&nbsp;Parametres &raquo; dans la matrice &laquo;&nbsp;Valeur&nbsp;&raquo; donn&eacute;s par la fonction&nbsp;&laquo;Echantillons&raquo;.</p>
<h3><a name="_Toc64897468"></a>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fonction Erreur.m</h3>
<p>Lors du traitement num&eacute;rique du signal, il est primordial d&rsquo;avoir des erreurs dans les calculs et repr&eacute;sentations. Dans cette fonction, on s&rsquo;est int&eacute;ress&eacute; &agrave; calculer quelques types d&rsquo;erreur et intervalle de quelque variable. L&rsquo;erreur de fid&eacute;lit&eacute; et justesse font partie des erreurs accidentelles qui entra&icirc;nent une dispersion des r&eacute;sultats lors de mesures r&eacute;p&eacute;t&eacute;es cependant leur traitement statistique permet : de conna&icirc;tre la valeur la plus probable de la grandeur mesur&eacute;e et de fixer les limites de l'incertitude. On trouve aussi l&rsquo;erreur de lin&eacute;arit&eacute; qui repr&eacute;sente l&rsquo;&eacute;cart entre la valeur r&eacute;elle et de r&eacute;f&eacute;rence &agrave; l&rsquo;aide des r&eacute;sultats de la fonction moindre carr&eacute;e.</p>
<h3><a name="_Toc64897469"></a>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fonction LoiNormale.m</h3>
<p>La loi normale est parmi les lois de probabilit&eacute; les plus utilis&eacute;es pour mod&eacute;liser les ph&eacute;nom&egrave;nes al&eacute;atoires. Dans cette fonction on va tracer les courbes de densit&eacute; de probabilit&eacute; de la loi normale de variation de variance, d&rsquo;&eacute;cart type, de puissance et d&rsquo;&eacute;nergie des &eacute;chantillons.</p>
<h3><a name="_Toc64897470"></a>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ModelGaussi.m</h3>
<p>Dans cette fonction, on va tracer un mod&egrave;le de m&eacute;lange gaussien. C&rsquo;est un mod&egrave;le statistique exprim&eacute; selon une densit&eacute; m&eacute;lange. Il sert usuellement &agrave; estimer param&eacute;triquement la distribution des variables al&eacute;atoires en les mod&eacute;lisant comme une somme de plusieurs gaussiennes caract&eacute;ris&eacute;s par des moyennes et des &eacute;carts types donn&eacute;s sous forme des vecteurs ().</p>
<h3><a name="_Toc64897471"></a>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fonction Tracemoin.m</h3>
<p>C&rsquo;est une fonction qui permet de tracer les droites estim&eacute;es de puissance en fonction d&rsquo;&eacute;nergie, la variance en fonction de la puissance, de la moyenne et de l&rsquo;&eacute;nergie. Cette fonction fait appel &agrave; la m&eacute;thode des moindres carr&eacute;s pour avoir une droite de r&eacute;gression lin&eacute;aire .</p>
<h2><a name="_Toc64897472"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Estimation sur le vocal de &laquo; A&nbsp;&raquo;</h2>
<p>Maintenant nous allons essayer de pr&eacute;senter notre estimation sur un vocal de &laquo;&nbsp;A&nbsp;&raquo; ,nous avons d&eacute;but&eacute; par &eacute;tudier la moyenne, la variance, l&rsquo;&eacute;cart type et les droites estim&eacute;es des plusieurs valeurs caract&eacute;risant les &eacute;chantillons&nbsp;&nbsp; vocaux de &laquo; A&nbsp;&raquo; d&rsquo;apr&egrave;s l&rsquo;appelle de la fonction &laquo;&nbsp;Echantillions&nbsp;&raquo; ,puis nous avons pass&eacute; &agrave; tracer les graphes de densit&eacute; de probabilit&eacute; de la loi normale d&rsquo;apr&egrave;s l&rsquo;appelle de la fonction &laquo;&nbsp;loiNormale&raquo;,de mod&egrave;le gaussien d&rsquo;apr&egrave;s l&rsquo;appelle de la fonction &laquo;&nbsp;ModelGaussi&raquo; et des droites estim&eacute;es de la m&eacute;thode moindre carr&eacute;&nbsp; d&rsquo;apr&egrave;s l&rsquo;appelle de la fonction &laquo;&nbsp;Tracemoin&raquo;.</p>
<p>Finalement, nous avons lu un nouveau audio vocal qui contient le son de A de format wav (&nbsp;A1.wav) , puis nous avons pass&eacute; &agrave; calculer les erreurs pour d&eacute;terminer si cet audio est de &laquo;&nbsp;A&nbsp;&raquo; et nous avons distingu&eacute; que les erreurs sont inf&eacute;rieur de 1 et la fid&eacute;lit&eacute; &eacute;gale 99%&nbsp; , donc le message obtenu est&nbsp;: vous avez dit A&nbsp;!</p>
<p>Si nous avons chang&eacute; l&rsquo;audio par un autre qui contient le son de B, donc le message obtenu est&nbsp;: D&eacute;sol&eacute; ,mais je ne comprends pas ce que vous dite&nbsp;!</p>
