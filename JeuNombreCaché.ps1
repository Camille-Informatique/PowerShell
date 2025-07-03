# Camille GIMARET LIOCHON --- #
# 2025-07-03 ---------------- #
# Jeu du nombre cach� ------- #

# Constantes ---------------- #
$question = "Quel est le nombre cach� ? "
$nombreSup = "Vous �tes trop haut !"
$nombreInf = "Vous �tes trop bas !"

# Variables ----------------- #
[int]$nombreCache = get-random -Minimum 1 -Maximum 100
$liste = @()

# Code ---------------------- #
clear-host
write-host "Hello ! J'ai cach� un nombre qui se situe entre 1 et 100. A toi de deviner !"
write-host
do {
    # Lire la saisie de l'utilisateur #
    $reponse = read-host $question

    # V�rifier que la r�ponse est un nombre valide #
    if ($reponse -as [int]) {
        $reponse = [int]$reponse
        if ($reponse -gt $nombreCache) {
            write-host $nombreSup
            $liste += $reponse
        } elseif ($reponse -lt $nombreCache) {
            Write-Host $nombreInf
            $liste += $reponse
        } else {
            Write-Host "Bravo ! Vous avez trouv� le bon nombre cach� ! C'�tait bien le $nombreCache. 
            Vous l'avez trouv� en $($liste.count) essais."
            break
        }
    } else {
     Write-Host "Veuillez entrer un nombre valide."
    }
} until ($reponse -eq $nombreCache)

Write-Host "Fin du jeu."


