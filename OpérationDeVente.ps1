# Camille GIMARET LIOCHON --- #
# 2025-07-03 ---------------- #
# Opérations de vente ------- #

# Variables ----------------- #
$listeCoût = @()
 
# Code ---------------------- #
Clear-host

write-host "Bonjour,"
Write-host

$coût = read-host "Quel est le coût de l'article vendu ?"
write-host "L'article coûte" $coût "$"
$listeCoût += $coût
Write-host

$montantRecu = read-host "Quel est le montant payé par le client ?"
write-host "Le client à donné" $montantRecu "$"
Write-Host

$remise = $montantRecu - $coût
Write-host "La remise au client est de" $remise "$"
write-host


do {
    $reponse = read-host "Est ce qu'il y a une autre vente ? o/n"
    if ($reponse -eq "o") {
        write-host
        $coût = read-host "Quel est le coût de l'article vendu ?"
        write-host "L'article coûte" $coût "$"
        $listeCoût += $coût
        Write-host

        $montantRecu = read-host "Quel est le montant payé par le client ?"
        write-host "Le client à donné" $montantRecu "$"
        Write-Host

        $remise = $montantRecu - $coût
        Write-host "La remise au client est de" $remise "$"
        write-host
     }
} while ($reponse -eq "o")
write-host

Write-host "Merci. Voici la somme des ventes du jour :"
Write-host

# Somme de ventes (coût des articles) #
$somme = $listeCoût | Measure-Object -sum
write-host $somme.sum



           