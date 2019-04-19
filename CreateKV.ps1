$subscriptionName = 'Microsoft Azure Internal Consumption'
    $userPrincipalName = 'jamesh@microsoft.com'
    $applicationId = 'c57455db-b3af-4ad6-abe1-271663c7b366'
    $resourceGroupName = 'databricks'
    # Use the same resource group name when creating your SQL Database below
    $location = 'East US 2'
    $vaultName = 'AzureAEVault'


    Connect-AzAccount
    $subscriptionId = (Get-AzSubscription -SubscriptionName $subscriptionName).Id
    Set-AzContext -SubscriptionId $subscriptionId

    New-AzResourceGroup -Name $resourceGroupName -Location $location
    New-AzKeyVault -VaultName $vaultName -ResourceGroupName $resourceGroupName -Location $location

    Set-AzKeyVaultAccessPolicy -VaultName $vaultName -ResourceGroupName $resourceGroupName -PermissionsToKeys create,get,wrapKey,unwrapKey,sign,verify,list -UserPrincipalName $userPrincipalName
    Set-AzKeyVaultAccessPolicy  -VaultName $vaultName  -ResourceGroupName $resourceGroupName -ServicePrincipalName $applicationId -PermissionsToKeys get,wrapKey,unwrapKey,sign,verify,list