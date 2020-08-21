<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    Rerun a migration job

.DESCRIPTION
    Rerun a migration??job by the job ID. It allows to configure the migration type, define the migration scope, and set the job start time.

.PARAMETER Setting
    Detailed settings of the job

.PARAMETER APIKey
    API key given by service owner.

.PARAMETER Id
    The Id of the job that needs to be executed again

.PARAMETER BaseUri
    Serivce host for the api.

#>
function Restart-GoogleDriveJob
{
    [OutputType([AvePoint.PowerShell.FLYMigration.Models.ServiceResponseString])]
    [CmdletBinding(DefaultParameterSetName='GoogleDriveJob_Restart')]
    param(    
        [Parameter(Mandatory = $true, ParameterSetName = 'GoogleDriveJob_Restart')]
        [AvePoint.PowerShell.FLYMigration.Models.GoogleDriveJobExecutionModel]
        $Setting,
    
        [Parameter(Mandatory = $true)]
        [string]
        $APIKey,
    
        [Parameter(Mandatory = $true, ParameterSetName = 'GoogleDriveJob_Restart')]
        [System.String]
        $Id,
    
        [Parameter(Mandatory = $true)]
        [string]
        $BaseUri
    )

    Begin 
    {
	    Initialize-PSSwaggerDependencies
        $tracerObject = $null
        if (('continue' -eq $DebugPreference) -or ('inquire' -eq $DebugPreference)) {
            $oldDebugPreference = $global:DebugPreference
			$global:DebugPreference = "continue"
            $tracerObject = New-PSSwaggerClientTracing
            Register-PSSwaggerClientTracing -TracerObject $tracerObject
        }
	}

    Process {
    
    $ErrorActionPreference = 'Stop'

    $NewServiceClient_params = @{
        FullClientTypeName = 'AvePoint.PowerShell.FLYMigration.FLYAPI'
    }

    $NewServiceClient_params['AuthenticationCommand'] = @'
    param([string]$APIKey) Get-AutoRestCredential -APIKey $APIKey -Location 'header' -Name 'api_key'
'@  
    $NewServiceClient_params['AuthenticationCommandArgumentList'] = $APIKey 
    $NewServiceClient_params['HostOverrideCommand'] = @'
    param([string]$BaseUri) return New-Object -TypeName System.Uri -ArgumentList @($BaseUri)
'@ 
    $NewServiceClient_params['BaseUri'] = $BaseUri
    $FLYAPI = New-ServiceClient @NewServiceClient_params
    
    
    

    $skippedCount = 0
    $returnedCount = 0
    if ('GoogleDriveJob_Restart' -eq $PsCmdlet.ParameterSetName) {
        Write-Verbose -Message 'Performing operation RestartWithHttpMessagesAsync on $FLYAPI.'
        $taskResult = $FLYAPI.GoogleDriveJob.RestartWithHttpMessagesAsync($Id, $Setting)
    } else {
        Write-Verbose -Message 'Failed to map parameter set to operation method.'
        throw 'Module failed to find operation to execute.'
    }

    if ($TaskResult) {
        $result = $null
        $ErrorActionPreference = 'Stop'
                    
        $null = $taskResult.AsyncWaitHandle.WaitOne()
                    
        Write-Debug -Message "$($taskResult | Out-String)"


        if((Get-Member -InputObject $taskResult -Name 'Result') -and
           $taskResult.Result -and
           (Get-Member -InputObject $taskResult.Result -Name 'Body') -and
           $taskResult.Result.Body)
        {
            Write-Verbose -Message 'Operation completed successfully.'
            $result = $taskResult.Result.Body
            Write-Debug -Message "$($result | Out-String)"
            $result
        }
        elseif($taskResult.IsFaulted)
        {
            Write-Verbose -Message 'Operation failed.'
            if ($taskResult.Exception)
            {
                if ((Get-Member -InputObject $taskResult.Exception -Name 'InnerExceptions') -and $taskResult.Exception.InnerExceptions)
                {
                    foreach ($ex in $taskResult.Exception.InnerExceptions)
                    {
                        Write-Error -Exception $ex
                    }
                } elseif ((Get-Member -InputObject $taskResult.Exception -Name 'InnerException') -and $taskResult.Exception.InnerException)
                {
                    Write-Error -Exception $taskResult.Exception.InnerException
                } else {
                    Write-Error -Exception $taskResult.Exception
                }
            }
        } 
        elseif ($taskResult.IsCanceled)
        {
            Write-Verbose -Message 'Operation got cancelled.'
            Throw 'Operation got cancelled.'
        }
        else
        {
            Write-Verbose -Message 'Operation completed successfully.'
        }
        
    }
    }

    End {
        if ($tracerObject) {
            $global:DebugPreference = $oldDebugPreference
            Unregister-PSSwaggerClientTracing -TracerObject $tracerObject
        }
    }
}
