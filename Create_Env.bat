@echo OFF
rem Created by Blaine Perry
rem 18NOV2022

rem This file will create a conda environment with the necessary packages for the demystify AI professional development

rem start by defining some variables
set ENVNAME=ai_env


rem Start by installing and updating some packages in base python (if not installed)
python -m pip install --user virtualenv
python -m pip install --upgrade pip

rem Next, create a virtual environment (if needed) in the same directory as this .bat file
if exist %ENVNAME%\Scripts\activate (echo Environment exists) else (python -m venv %ENVNAME%)

rem Now, activate the environment
call %ENVNAME%\Scripts\activate

rem install required packages in the environment through the requirements document
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

rem Run jupyter lab from the virtual environment
call jupyter lab

