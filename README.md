# ML-SLSS
Extended PMSM model and additional files for my PEMC 2024 article.

The important files in the repository are the following.

## Simulink project file 
```
├── SLSS.prj
```
Open the project to ensure that all the files are on the MATLAB path.

## Sample measurement data
```
├── MeasurementData.mat
```
It containts three data structs: 
- `NM` for the sinusoidal data at hte north pole,
- `SM` for the sinusoidal data at hte north pole,
- `PM` for the square-wave data.

## The PMSM model implementation
```
├── +Components
├── ├── PMSM.ssc
├── ├── PMSM.svg
├── PMSM.slx
```

## Model libraries
```
├── SLSS.slx
```
The model library contains the some accessories related to the drive models.

## Injection simulations
```
├── PMSM_Sinusoidal.slx
├── PMSM_SquareWave.slx
```
The project includes these example simulations for the simulation of sinusoidal 
voltage injection and square-wave voltage injection. These models require the 
loading of `SM` and `PM` from `MeasurementData.mat`.

## Simulink helper functions
```
├── SL.m
```
Some helper functions to change the inport/outport layout of the masked accessory 
models in SLNS.slx. 


