# 📡 Radar-Tracking-Project-N210

This project implements **FMCW radar tracking** using the **USRP N210** and **GNU Radio**. It includes scripts for **signal generation, processing, and visualization** using **GNU Radio and MATLAB**.

---

## 🚀 Project Overview

This repository contains code and assets for an **FMCW Radar System** using:

- **USRP N210 with SBX daughterboard**
- **GNU Radio 3.7.13.4 on Ubuntu 18.04**
- **UHD v3.15 API** for interfacing with USRP
- **MATLAB scripts** for additional signal analysis

---

## 📌 Features

- **FMCW Signal Generation**
- **Signal Reception & Processing**
- **IQ Data Analysis**
- **Custom UHD Script** for USRP to transmit and record samples (currently not fully functional)

---

## 📂 Repository Structure

### 🔹 Custom Code UHD/
Custom UHD scripts for interfacing with the USRP.

```
├── test/          # Contains test scripts and configurations
├── x64/           # Compiled binaries or dependencies
├── test.sln       # Main project file to edit and compile
```

### 🔹 GNU Radio Flowgraphs/
GNU Radio Companion (`.grc`) files for signal transmission and processing.

```
├── FMCW_test.grc         # FMCW signal test flowgraph (transmit FMCW with USRP)
├── Sinewave_test.grc     # Basic sinewave test flowgraph (transmit sine wave with USRP)
├── file_dsp.grc          # .dat file signal processing flowgraph (replay the .dat file in GNU Radio)
```

### 🔹 MATLAB/
MATLAB scripts for signal analysis and visualization.

```
├── Dat_file_IQ_plotter.m  # Plots and analyzes IQ data from radar signals
├── FMCW_maker.m           # Generates FMCW chirps for testing
```

---

## 📊 Testing Parameters

Sine Wave Testing Parameters

| Parameter       | Value  |
|---------------|--------|
| **TX & RX Freq.** | 2.4 GHz |
| **Bandwidth** | 1 MHz or 200 kHz |
| **Sampling Rate** | 1 MHz |
| **Gain** | 10 dB |

---

## 📈 System Status

🔹 **Current Testing:** We are currently transmitting only a sine wave to ensure correct velocity readings.  
🔹 **Next Steps:** Test results will be added soon, and we will move on to FMCW.

