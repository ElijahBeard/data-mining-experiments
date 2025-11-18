#!/bin/bash
echo deleting python3 kernel
jupyter kernelspec uninstall python3
jupyter kernelspec uninstall data_mining_venv 
read -p "Refresh Dev Window and press [Enter] to continue..."
echo activating venv
source .venv/bin/activate
echo reinstalling ipykernel
pip install --upgrade pip
python -m pip install ipykernel -U --force-reinstall
echo creating new kernel
python -m ipykernel install --user --name=data_mining_venv --display-name="data_mining_venv"
jupyter kernelspec list