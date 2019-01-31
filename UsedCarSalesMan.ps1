<#
    .SYNOPSIS
    A script to replace the teams useless sysadmin
    
    .DESCRIPTION
    Long description
    
    
    .NOTES
    Version:    1.0
    Author:     Andrew Morison
    Date:   30/01/2018
    #>
$SalesPitches='Office applications is now fully virtualised, It doesnt use any local computer resources, runs smoother and is quicker','Yes I have updated the UPNS','Office Online is the same as Office applications','Lets install Windows 10 email client instead of outlook'
    Function SalesPitch{
        $pitch = Get-Random -InputObject $SalesPitches
        Write-Host "$pitch" -ForegroundColor Magenta
    }
    Function MigrateMailBox{
        Write-Host ""
    }
    Function ShowMenu {
        Write-Host '-------------------------------------------------------------------------'
        Write-Host 'Hi im your friendly used car salesman'
        Write-Host 'Im here to pretend like im usefull but in reallity im going'
        Write-Host 'to fuck shit up'
        Write-Host ""
        Write-Host  "1) Migrate from On-prem to Exchange Online"
        Write-Host  "2) Ask me a simple question"
        Write-Host  "3) Random Facts"
        Write-Host  "4) Quit"
    }
    #endregion
    do {
        ShowMenu
        $input = Read-Host "Please make a selection"
        switch ($input) {
            '1' {
                Deploy-Computer
            } 
            '2' {
                FindDevice
                $User = $Null
            } 
            '3' {
                SalesPitch
                
            } 
            '4' {
                return
            }
        }
        pause
    }
    until ($input -eq '4')