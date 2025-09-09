@echo off
REM This batch file runs the PowerShell script "open_links.ps1"
REM It uses '-ExecutionPolicy Bypass' to allow the script to run without
REM being blocked by the system's execution policy.

powershell.exe -ExecutionPolicy Bypass -File ".\open_links.ps1"
