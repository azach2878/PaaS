[CmdletBinding(SupportsShouldProcess=$true)]
Param
    (
    [Parameter(Mandatory=$true)] [String]$SubscriptionID
)
Connect-AzAccount -WarningAction SilentlyContinue 
Get-AzSubscription -SubscriptionId $SubscriptionID | Select-AzSubscription 
$SubscriptionName = (Get-AzSubscription -SubscriptionId $SubscriptionID).Name

Write-Host "You Are Connected to Azure $SubscriptionName" -BackgroundColor Black -ForegroundColor Cyan 
$AZResources = Get-AzResource | select *
        $results      = @()
        $tagsString   = ""

foreach ($resource in $AZResources) {
    if ($resource.Kind -eq "functionapp" -and $resource.Tags.Count -ige "1" -and $resource.ResourceType -eq "Microsoft.Web/sites") {
        
        $ResourceType    = "Function App"
        $Tags            = $Resource.Tags
        $Tags.GetEnumerator() | ForEach-Object {

        $TagValueString  = $_.Value + "]" 
        $TagNameString   = "[" + $_.Key 
        $tagsString += "$TagNameString = $TagValueString "

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           
}
    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }  
    if ($resource.Kind -eq "functionapp" -and $resource.Tags.Count -eq "0" -and $resource.ResourceType -eq "Microsoft.Web/sites") {
        
        $ResourceType    = "Function App"
        $Tags            = $Resource.Tags
        $tagsString      = "Null"

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           

    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }
    if ($resource.Kind -eq "app" -and $resource.Tags.Count -ige "1" -and $resource.ResourceType -eq "Microsoft.Web/sites") {
        
        $ResourceType    = "App Service"
        $Tags            = $Resource.Tags
        $Tags.GetEnumerator() | ForEach-Object {

        $TagValueString  = $_.Value + "]" 
        $TagNameString   = "[" + $_.Key 
        $tagsString += "$TagNameString = $TagValueString "

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           
}
    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }
    if ($resource.Kind -eq "app" -and $resource.Tags.Count -eq "0" -and $resource.ResourceType -eq "Microsoft.Web/sites") {
        
        $ResourceType    = "App Service"
        $tagsString      = "Null"

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           

    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }
    if ($resource.Tags.Count -ige "1" -and $resource.ResourceType -eq "Microsoft.DataFactory/factories") {
        
        $ResourceType    = "Data Factory"
        $Tags            = $Resource.Tags
        $Tags.GetEnumerator() | ForEach-Object {

        $TagValueString  = $_.Value + "]" 
        $TagNameString   = "[" + $_.Key 
        $tagsString += "$TagNameString = $TagValueString "

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           
}
    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }
    if ($resource.Tags.Count -eq "0" -and $resource.ResourceType -eq "Microsoft.DataFactory/factories") {
        
        $ResourceType    = "Data Factory"
        $tagsString      = "Null"

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           

    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }
    if ($resource.Tags.Count -ige "1" -and $resource.ResourceType -eq "Microsoft.Logic/workflows") {
        
        $ResourceType    = "Logic App"
        $Tags            = $Resource.Tags
        $Tags.GetEnumerator() | ForEach-Object {

        $TagValueString  = $_.Value + "]" 
        $TagNameString   = "[" + $_.Key 
        $tagsString += "$TagNameString = $TagValueString "

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           
}
    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }
    if ($resource.Tags.Count -eq "0" -and $resource.ResourceType -eq "Microsoft.Logic/workflows") {
        
        $ResourceType    = "Logic App"
        $tagsString      = "Null"

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           

    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }   
    if ($resource.Tags.Count -ige "1" -and $resource.ResourceType -eq "Microsoft.Databricks/workspaces") {
        
        $ResourceType    = "Data Bricks"
        $Tags            = $Resource.Tags
        $Tags.GetEnumerator() | ForEach-Object {

        $TagValueString  = $_.Value + "]" 
        $TagNameString   = "[" + $_.Key 
        $tagsString += "$TagNameString = $TagValueString "

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           
}
    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }
    if ($resource.Tags.Count -eq "0" -and $resource.ResourceType -eq "Microsoft.Databricks/workspaces") {
        
        $ResourceType    = "Data Bricks"
        $tagsString      = "Null"

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           

    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }   
    if ($resource.Tags.Count -ige "1" -and $resource.ResourceType -eq "Microsoft.Synapse/workspaces") {
        
        $ResourceType    = "Azure Synapse"
        $Tags            = $Resource.Tags
        $Tags.GetEnumerator() | ForEach-Object {

        $TagValueString  = $_.Value + "]" 
        $TagNameString   = "[" + $_.Key 
        $tagsString += "$TagNameString = $TagValueString "

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           
}
    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }
    if ($resource.Tags.Count -eq "0" -and $resource.ResourceType -eq "Microsoft.Synapse/workspaces") {
        
        $ResourceType    = "Azure Synapse"
        $tagsString      = "Null"

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           

    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }   
    if ($resource.Tags.Count -ige "1" -and $resource.ResourceType -eq "Microsoft.Sql/servers/databases") {
        
        $ResourceType    = "Azure SQL Database"
        $Tags            = $Resource.Tags
        $Tags.GetEnumerator() | ForEach-Object {

        $TagValueString  = $_.Value + "]" 
        $TagNameString   = "[" + $_.Key 
        $tagsString += "$TagNameString = $TagValueString "

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           
}
    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }
    if ($resource.Tags.Count -eq "0" -and $resource.ResourceType -eq "Microsoft.Sql/servers/databases") {
        
        $ResourceType    = "Azure SQL Database"
        $tagsString      = "Null"

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           

    $results += New-Object PSObject -Property $details 
    $tagsString = ""
}   
    if ($resource.Tags.Count -ige "1" -and $resource.ResourceType -eq "Microsoft.Sql/servers") {
        
        $ResourceType    = "Azure SQL Server"
        $Tags            = $Resource.Tags
        $Tags.GetEnumerator() | ForEach-Object {

        $TagValueString  = $_.Value + "]" 
        $TagNameString   = "[" + $_.Key 
        $tagsString += "$TagNameString = $TagValueString "

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           
}
    $results += New-Object PSObject -Property $details 
    $tagsString = ""
  }
    if ($resource.Tags.Count -eq "0" -and $resource.ResourceType -eq "Microsoft.Sql/servers") {
        
        $ResourceType    = "Azure SQL Server"
        $tagsString      = "Null"

        $details = @{ 

                Tags = $TagsString
                ResourceId = $resource.ResourceId
                ResourceName = $resource.ResourceName
                ResourceType = $ResourceType
                ResourceGroupName =$resource.ResourceGroupName
                Location = $resource.Location
                SubscriptionId = $resource.SubscriptionId 
  }                           

    $results += New-Object PSObject -Property $details 
    $tagsString = ""
 }   
} 
$results | Export-Csv .\apptest.csv -NoTypeInformation -Force
.\apptest.csv
