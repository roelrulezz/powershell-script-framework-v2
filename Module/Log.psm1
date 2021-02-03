# Powershell Script Framework V2
# Name    : Log.psm1
# Version : 0.5
# Date    : 2021-02-03
# Author  : Roeland van den Bosch
# Website : http://www.roelandvdbosch.nl

enum LogLevel {
  Trace = 0
  Debug = 1
  Information = 2
  Warning = 3
  Error = 4
  Critical = 5
  None = 6
}

class CustomLog
{
  [boolean]$File = $false
  [boolean]$Console = $true
  [int]$LogLevel = [LogLevel]::Information
  [string]$LogFileFullPath

#  CustomLog {}

  [void]Start([CustomLog]$Log)
  {
    Write-Output "Start log [$($Log.File)]"
  }
}

Function New-CustomLog 
{
  [CustomLog]::New()
}