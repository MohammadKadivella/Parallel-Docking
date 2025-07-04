# Parallel-Docking
To do Vina parallel docking 
Need to do in Ubuntu and Linux 
An in-house Perl script was used to automate batch docking of ligands using AutoDock Vina. The script reads ligand filenames from list.txt, creates a separate output directory for each ligand, and performs docking in parallel using a maximum of 10 concurrent processes. The output for each docking run includes the predicted binding pose (.pdbqt) and docking log file (.log).

The script is compatible with Perl version 5.30.0 or higher and was tested using AutoDock Vina version 1.2.0. The docking was performed using a shared configuration file (conf.txt), which specifies the grid box dimensions and docking parameters.
