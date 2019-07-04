$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$deploymentName = Read-Host -Prompt "Enter the name for this deployment"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"
Login-AzureRmAccount
New-AzureRmResourceGroup -Name $resourceGroupName -Location $location
New-AzureRmResourceGroupDeployment -Name $deploymentName -ResourceGroupName $resourceGroupName -TemplateFile "azuredeploy.json"