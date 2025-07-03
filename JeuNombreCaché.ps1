# Camille GIMARET LIOCHON --- #
# 2025-07-03 ---------------- #
# Jeu du nombre caché ------- #

# Constantes ---------------- #
$question = "Quel est le nombre caché ? "
$nombreSup = "Vous êtes trop haut !"
$nombreInf = "Vous êtes trop bas !"

# Variables ----------------- #
[int]$nombreCache = get-random -Minimum 1 -Maximum 100
$liste = @()

# Code ---------------------- #
clear-host
write-host "Hello ! J'ai caché un nombre qui se situe entre 1 et 100. A toi de deviner !"
write-host
do {
    # Lire la saisie de l'utilisateur #
    $reponse = read-host $question

    # Vérifier que la réponse est un nombre valide #
    if ($reponse -as [int]) {
        $reponse = [int]$reponse
        if ($reponse -gt $nombreCache) {
            write-host $nombreSup
            $liste += $reponse
        } elseif ($reponse -lt $nombreCache) {
            Write-Host $nombreInf
            $liste += $reponse
        } else {
            Write-Host "Bravo ! Vous avez trouvé le bon nombre caché ! C'était bien le $nombreCache. 
            Vous l'avez trouvé en $($liste.count) essais."
            break
        }
    } else {
     Write-Host "Veuillez entrer un nombre valide."
    }
} until ($reponse -eq $nombreCache)

Write-Host "Fin du jeu."


