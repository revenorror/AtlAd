@echo off
if not exist ATL mkdir ATL
for /f %%i in ('magick convert TX_A_apostle_boots00.* -format %%w info:') do set resolutionW=%%i

magick convert TX_A_apostle_boots00.* TX_A_apostle_boots01.* -resize %resolutionW% +append -define dds:compression=dxt1 ATL/atlad_a_boots_apostle.dds

if not defined run_without_pause pause
