# 📡 Radar-Tracking-Project-N210

Stuff that mostly works for the development of the **FMCW Tracking Radar Senior Design Project** using the **USRP N210** and **GNU Radio**. It includes scripts for **signal generation, processing, and visualization** as well as **USRP testing workflow graphs** all for **GNU Radio and MATLAB**.

---

## 🚀 Project Overview

This repository contains code and assets for an **FMCW Radar System** using:

- **USRP N210 with SBX daughterboard**
- **GNU Radio 3.10.10.0 and Python 3.11.9** [Radioconda fork on Windows 11]
- **MATLAB scripts** for additional signal analysis and Signal creation
- [OLD] GNU Radio 3.7.13.4 on Ubuntu 18.04
- [Kinda irrelavent] UHD v3.15 API for interfacing with USRP

---

## 📌 Features

- **FMCW Signal Generation**
- **Signal Reception & Processing**
- **IQ Data Analysis**
- **Custom UHD Script** for USRP to transmit and record samples (currently not fully functional)

---

## 📂 Repository Structure

### 🔹 Custom Code UHD/ [Totaly depricated]
Custom UHD scripts made in C++ to transmit IQ samples from .dat file and receive into a file. - Does not work

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

USRP Parameters for Testing
**Sine Wave Testing**
| Parameter       | Value  |
|---------------|--------|
| **TX & RX Freq.** | 2.4 GHz |
| **Sampling Rate** | 1 MHz or 200 kHz |
| **Gain** | 10 dB |

**FMCW Testing** [Still changing]
| Parameter       | Value  |
|---------------|--------|
| **TX & RX Freq.** | 2.4 GHz |
| **Sampling Rate** | 25 MHz |
| **Sweep Bandwidth** | 12.5 MHz |
| **Sweep Time** | 1 ms |
| **Waveform Type** | Sawtooth |
| **Gain** | 10 dB |

