# Fonctions_xCode_Swift3
Test de fonctionnalités sur xCode avec Swift 3

# Problemes
- Impossible de detecter le clic sur la vue 360View "Panorama" (à l'intention de M. AYADI Medhi)
--> Première solution : Assigner (dans le storyboard), à la vue ( actuellemnt GLKView ) la classe " Panorama View " (elle même héritant de GLKView mais avec plus de fonctionalités) ?
--> Deuxième solution (plus élaborée mais prend plus de temps) : 
 - Prendre le temps de ré-écrire la classe Panorama View ( datant un peu et utilisant OpenGL ES 1 ). Plus de fonctionalités avec OpenGLES 3 ( avantage :être à jour dans les rendus 3D mobile..?).
 - Utiliser les fonctionalités disponibles dans le GLKit (qui peuvent remplacer pas mal de code écrit dans " Panorama View "
--> À tester.

- Rafraichir directement la tableview lors de la suppression d'un item
--> Solution : Utiliser les delegates.

# A venir
- GéoFence
- Notification
