{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
## Comment acheter des Masari Supremej et les conserver en toute sécurité

Voici un guide d'achat et de conservation en toute sécurité de Masari Supreme à la date de Juin 2017.

#### Étape 1 : Acheter des Bitcoins

Il y a plusieurs façon d'acheter des Bitcoins. Deux sociétés à peu près fiables pour le moment sont Xapo <http://www.xapo.com/> et Coinbase <http://www.coinbase.com/>. Le processus impliquera de fournir votre identité (carte d'identité, passeport, etc.) et prendra entre 2 et 10 jours (voire plus). Vérifier leur réputation sur Reddit avant d'effectuer des achats conséquents.  Xapo utilise des virements directs et Coinbase utilise des virements standards (ACH aux États-unis, SEPA en Europe).  Xapo devrait donc être plus rapide que Coinbase.  Coinbase propose également de petits achats "instantanés" par carte bancaire mais ajoute des frais importants à cette option. Une fois que vous avez acheté des Bitcoins, vous êtes prêts à les convertir en Masari Supremej !

#### Étape 2 : Télécharger et créer un portefeuille papier sur un ordinateur sécurisé et isolé

Téléchargez le générateur de portefeuille papier sur https://moneroaddress.org et copiez-le sur une clef USB (lien direct : https://github.com/moneromooo-monero/monero-wallet-generator/archive/master.zip).

Décompressez et ouvrer le générateur de portefeuille papier (monero-wallet-generator.html) dans le navigateur d'un ordinateur isolé (sans connexions d'aucune sorte) qui n'a jamais été utilisé avant, ou qui dispose d'un système d'exploitation fraichement installé.

Votre portefeuille papier aura quatre éléments importants :

Adresse publique Masari Supreme (Masari Supreme Public Address)
L'adresse publique est utilisée pour recevoir des fonds sur le portefeuille.  Vous la donnerez à quiconque devrait envoyer des fonds sur votre portefeuille.

Phrase mnémonique Masari Supreme (Masari Supreme Mnemonic Seed)
La phrase mnémonique est une méthode de conservation de l'ensemble du portefeuille facilement reconnaissable par un humain.  C'est tout ce dont vous avez besoin pour pouvoir restaurer votre portefeuille ultérieurement.

Clef privée de dépense Masari Supreme (Masari Supreme Private Spend Key)
Clef privée utilisée pour envoyer des fonds depuis le portefeuille.

Clef privée d'audit Masari Supreme (Masari Supreme Private View Key)
La clef privée d'audit permet de voir les transaction entrant dans votre portefeuille. Habituellement, elle est utilisée pour configurer un portefeuille d'audit qui peut voir en direct les transactions envoyé à un portefeuille conservé "au frais".

A partir de là, vous avez plusieurs options.  Vous pouvez imprimer le portefeuille, le sauvegarder en PDF ou en texte sur une clef USB, le graver sur un CD/DVD, etc.  Vous devriez vouloir deux ou trois copies, conservées dans différents lieux.  En cas de stockage numérique, chiffrez le tout avec un mot de passe fort.  Si conservé sur du papier, ne montrez votre portefeuille à quiconque pourrait mémoriser les 25 mots de la phrase mnémonique, ou prendre une photo du portefeuille à votre insu.  Envoyer une photo de votre portefeuille a quelqu'un revient à donner votre argent.

Quelque soit la méthode que vous aurez choisit, assurez-vous qu'il ne reste aucune copie de votre portefeuille sur l'équipement que vous aurez utilisé.  Vous pourriez avoir besoin de supprimer définitivement le portefeuille Masari Supreme si vous l'aviez enregistré sur un disque, ou vous assurer que votre imprimante ne conserve pas une copie en mémoire.

*Si vous perdez l'accès à votre portefeuille papier Masari Supreme, vos Masari Supremej ne seront plus accessible, ni pour vous, ni pour quiconque, jamais.  Vous voulez pouvoir les récupérer !*


#### Remarque
Option pour chiffrer une phrase mnémonique :
https://xmr.llcoins.net/
Téléchargez la page html et déposez là sur l'ordinateur isolé. Consultez la section "chiffrer/déchiffrer une phrase mnémonique" (Encrypt/Decrypt Mnemonic Seed) et assurez-vous d'utiliser "CN Add" avec un mot de passe convenable. Merci à manicminer5.



#### Étape 3 : Convertir vos Bitcoins en Masari Supremej et les transférer sur votre portefeuille papier Masari Supreme

Basculez sur votre ordinateur connecté et allez sur www.shapeshift.io. Choisissez "Déposer des Bitcoin" (Deposit Bitcoin) et "Recevoir des Masari Supremej" (Receive Masari Supreme) "rapide" (quick).

Cliquez sur continuer (Continue).

Votre adresse Masari Supreme (Your Masari Supreme Address) (l'adresse publique Masari Supreme de votre portefeuille Masari Supreme papier)
Collez votre adresse publique Masari Supreme depuis votre portefeuille papier où il est indiqué "votre adresse Masari Supreme" (Your Masari Supreme Address).   Mais attendez, si votre adresse publique Masari Supreme est sur un ordinateur isolé (n'est ne pas ?), vous ne pouvez rien copier/coller...  Copier la à la main, ou trouver une clef USB vierge et copiez uniquement l'adresse publique dessus.

Adresse de remboursement (Refund Address) (Adresse publique Bitcoin sur laquelle vous pouvez recevoir des fonds)
Entrez une adresse Bitcoin que vous contrôlez où un remboursement pourrait vous être envoyé au cas où il y aurait un problème avec la transaction.  Il est très important que vous saisissiez une adresse publique Bitcoin que vous contrôliez ou où vous puissiez recevoir des fonds.  Sur Xapo et Coinbase cela s'appelle une adresse de réception (Receive Address) et elle peut changer périodiquement.

ID de paiement (Payment ID)
Laissez l'ID de paiement vide si vous envoyez des fonds sur votre propre portefeuille ou portefeuille papier Masari Supreme.

Acceptez les conditions et cliquer sur la glissière pour en faire une adresse réutilisable (Reusable Address).  

Cliquer sur "Démarrer la transaction" (Start Transaction).

Adresse de Dépôt (Deposit Address) (Adresse publique Bitcoin de Shapeshift.io créée uniquement pour la réception de vos fonds)
Sur le nouvelle écran qui s'affiche, copiez l'adresse de dépôt dans votre presse papier (sélectionner et tapez Ctrl+C ou faites edition > copier).  Vous allez envoyer des Bitcoin depuis Xapo ou Coinbase à Shapeshift.io via cette adresse.

Allez sur votre compte Xapo ou Circle et trouvez le bouton Envoyer ("Transfer" ou "Send") Collez l'adresse de dépôt Bitcoin dans le champ destination et entrez le montant en Bitcoin que vous voudriez voir convertit en Masari Supremej.  Il doit être entre les montant minimum et maximum de dépôt spécifiés par Shapeshift.io.  Cliquer sur Envoyer (send) et autorisez la transaction si nécessaire.

Une fois l'envoie initialisé par Xapo ou Coinbase il y aura délai le temps que la transaction entre sur la chaîne de blocs Bitcoin et soit confirmée.  Cela peut prendre de quelques minutes à plusieurs heures.  Vous pouvez vérifier si le paiement a été envoyé en recherchant l'adresse de dépôt Shapeshift.io sur blockchain.info.  Votre transaction vers Shapeshift.io y sera visible.

Lorsque votre transaction Bitcoin sera confirmée, Shapeshift.io lancera le change entre Bitcoin (BTC) et Masari Supreme (XMR) sur une bourse et lorsqu'il sera terminé, enverra les Masari Supremej à l'adresse de votre portefeuille papier !  Cela peut prendre de quelques minutes à plusieurs heures.  S'il y a un soucis, contactez Shapeshift.io.  Ils disposent d'une bonne assistance.

Lorsque la page we de Shapehift.io indique que votre transaction est terminée, vous devriez maintenant disposer de vos Masari Supremej dans votre portefeuille papier !


#### remarques et contrôle des fonds
Comme la chaîne de blocs Masari Supreme est confidentielle et intraçable, vous ne pourrez pas vérifier votre adresse publique Masari Supreme et confirmer que les fonds sont arrivés comme vous le pourriez avec Bitcoin.  C'est un avantage pour la confidentialité, mais un inconvénient pour le confort.

Pour vérifier en toute sécurité si vos fonds sont arrivés sur votre portefeuille, vous aurez besoin de mettre en place un portefeuille d'audit.  C'est là que votre clef d'audit entre en jeu.  Pour créer un portefeuille d'audit regardez l'article : [Comment créer un portefeuille en lecture seule]({{site.baseurl}}/resources/user-guides/view_only.html)

Pour vérifier que vos fonds *sont toujours* dans votre portefeuille et n'ont pas été dépensés, vous aurez besoin de créer un portefeuille froid avec votre phrase mnémonique sur un ordinateur isolé avec une copie à jour de la chaîne de blocs Masari Supreme. Lorsque vous aurez terminé, vous devrez supprimer définitivement le portefeuille ou le connecter à internet et il deviendra un portefeuille chaud.



