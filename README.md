#📡 Radar-Project-GNU-Radio-N210
This project implements FMCW radar tracking using the USRP N210 and GNU Radio. It includes scripts for signal generation, processing, and visualization using GNU Radio and MATLAB.

#🚀 Project Overview
This repository contains code and assets for an FMCW Radar System using:
USRP N210 with SBX daughterboard
GNU Radio 3.7.13.4 on Ubuntu 18.04
UHD v3.15 API for interfacing with USRP
MATLAB scripts for additional signal analysis

#📌 Features
FMCW singal generation
Signal Reception & Processing
IQ Data Analysis 
Custom UHD Script for USRP to transmit and record samples from and into a file.  (not really working)

#📂 Repository Structure
🔹 Custom Code UHD/
Custom UHD scripts for interfacing with the USRP.
├── test/          # Contains test scripts and configurations
├── x64/           # Compiled binaries or dependencies
├── test.sln       # Main Project file to edit and compile.

🔹 GNU Radio Flowgraphs/
GNU Radio Companion (.grc) files for signal transmission and processing.
├── FMCW_test.grc         # FMCW signal test flowgraph (transmit FMCW with USRP)
├── Sinewave_test.grc     # Basic sinewave test flowgraph (transmit Sine wave with USRP)
├── file_dsp.grc          # .dat file signal processing flowgraph (replay the .dat file in gnu radio)

🔹 MATLAB/
MATLAB scripts for signal analysis and visualization.
├── Dat_file_IQ_plotter.m  # Plots and analyzes IQ data from radar signals
├── FMCW_maker.m           # Generates FMCW chirps for testing

#📊 Testing Parameters
USRP parameter value for Sine Wave testing.
TX and RX Freq:	2.4 GHz
Bandwidth:
Sampling Rate: 1 MHz or 200k
Gain: 10db

#📈 System Status
CUrrently we are testing by only transmitting a sine wave, we want to make sure we are getting the correct velocities.
Tests and results wiil be added soon, hopefully and then move on to FMCW.
