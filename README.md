# Description
Update 21/12/2018 : Migration from dialogflow V1 API to V2 API

This plugin will allow you to connect Jarvis to Dialogflow API (V2) in order to extend its interactive features. 
BEFORE downloading this plugin, please visit https://github.com/Potjoe-97/jarvis-dialogflow for installation instructions. 
It has to be put at the bottom of matching order list.
For the moment, commands (queries) which are sent to Dialogflow are 
ALL THE COMMANDS which other plugins did not understand. 
To that extent, it certainly needs improvement. 

# Installation
If you already downloaded this plugin, please uninstall it and make a fresh install of it, since you won't be able to use it anymore.

  #### 1 Set up Dialogflow
Once your Dialogflow chatbot is created (and linked to a Gcloud platform project), visit the settings from your dialogflow dashboard. Scroll down, enable Beta features and Api, and select "V2 API" above. Take also note of the "Project ID" field, that we will use later.

  #### 2 Create Oauth credentials
Please follow the instructions from "Getting the Service Account key" section on this link https://dialogflow.com/docs/reference/v2-auth-setup. DO NOT follow "Using the key" section instructions, since this is automated by the plugin. 
Keep your Json file ready for the follow steps. 
You can now install the plugin from jarvis store. 

  #### 3 Initialize gcloud SDK
It is quite straight forward, but during the installation process remember to select the gcloud project containing your dialogflow chatbot (set up in step 1). If you are lost you can consult "Initialize the SDK" section on this link https://cloud.google.com/sdk/docs/quickstart-debian-ubuntu

  #### 4 Configure the plugin
Final step, in the config.sh file of the plugin, copy-paste your Project-id value you noted in step 1. Then, before starting Jarvis, move your JSON authentification file in the plugin directory ~/jarvis/plugins_installed/jarvis-dialogflow/.

You're good to go !


## Author
Potjoe (https://github.com/Potjoe-97)


-----------------------------------------------------------

  ## Description
Update 21/12/2018 : Migration de dialogflow V1 API to V2 API

Ce plugin vous permettra de connecter Jarvis à l'API (V2) de Dialogflow pour étendre ses capacités d'interaction.
AVANT de télécharger ce plugin, veuillez visiter https://github.com/Potjoe-97/jarvis-dialogflow pour les instructions d'installation. 
Il doit être placé à la fin de la liste de plugin. 
Pour l'instant, les commandes (queries) envoyées à Dialogflow sont
toutes les commandes que les autres plugins n'ont pas compris. 
En ce sens, il pourra certainement être amélioré. 

# Installation
Si vous aviez déjà téléchargé ce plugin, veuillez le désinstaller et repartir d'une installation propre, sinon vous ne pourrez plus l'utiliser. 

  #### 1 Paramétrer Dialogflow
Une fois votre bot dialogflow créé (et lié à un projet gcloud), rendez-vous dans les paramètres du projet depuis le dashboard dialogflow. Descendez un peu, et activez "Beta features and Api", puis au-dessus, sélectionnez "V2 API". Prenez également note du "Project ID", que nous utiliserons plus tard.

  #### 2 Générer une authentification Oauth
Pour cette étape, veuillez suivre les instructions de la section "Getting the Service Account key" de ce lien https://dialogflow.com/docs/reference/v2-auth-setup. NE SUIVEZ PAS la section "Using the Key", car cette étape est authomatisé par le plugin. 
Gardez sous la main votre fichier Json pour la suite. 
Vous pouvez maintenant installer le plugin depuis le Jarvis store. 

  #### 5 Paramétrer le SDK gcloud
Cette étape est assez simple, il suffit de se laisser guider. Mais pendant l'installation, rappelez-vous de sélectionner le projet gcloud contenant votre bot dialogflow (voir étape 1). Si vous êtes perdu, vous pouvez suivre la section "Initialize the SDK" sur ce lien https://cloud.google.com/sdk/docs/quickstart-debian-ubuntu

  #### 6 Configurer le plugin
Dernière étape, dans le fichier config.sh du plugin, copier-coller la valeur de votre Project-id, que vous avez normalement noté à l'étape 1. Puis, avant de démarrer Jarvis, déplacer votre fichier d'authentification Json dans le répertoire du plugin ~/jarvis/plugins_installed/jarvis-dialogflow/.

Et voilà, c'est tout bon ! 

  ## Author
Potjoe (https://github.com/Potjoe-97)

