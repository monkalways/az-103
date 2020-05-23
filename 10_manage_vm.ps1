Login-AzAccount

New-AzResourceGroup -Name azsjdnewrgtest -Location 'Central US'

New-AzVM -ResourceGroupName 'azsjdnewrgtest' -Name 'azsjdnewvm' -Location 'Central US' -VirtualNetworkName 'azsjdvnet' -SubnetName 'default' -SecurityGroupName 'newNSG' -PublicIpAddressName 'myipaddress' -OpenPorts 80, 443, 3389

Stop-AzVM -ResourceGroupName 'azsjdnewrgtest' -Name 'azsjdnewvm'

New-AzResourceGroupDeployment -Name '' -ResourceGroupName '' -TemplateFile '' -TemplateParameterFile ''