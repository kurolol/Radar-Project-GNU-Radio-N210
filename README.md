# 📡 Radar-Tracking-Project-N210

Stuff that mostly works for the development of the **FMCW Tracking Radar Senior Design Project** using the **USRP N210** and **GNU Radio**. It includes scripts for **signal generation, processing, and visualization** as well as **USRP testing workflow graphs** all for **GNU Radio and MATLAB**.

---

## 🚀 Project Overview

This repository contains code and assets for an **FMCW Radar System** using:

- **USRP N210 with SBX daughterboard**
- **GNU Radio 3.10.10.0 and Python 3.11.9** [Radioconda fork on Windows 11]
- **MATLAB scripts** for additional signal analysis and Signal creation
- [OLD GNURadio Flowgraphs] GNU Radio 3.7.13.4 on Ubuntu 18.04
- [Kinda irrelavent] UHD v3.15 API for interfacing with USRP

---

## 📂 Repository Structure

### 🔹 [Totaly depricated] Custom Code UHD/ 
Custom UHD scripts made in C++ to transmit IQ samples from .dat file and receive into a file. - Does not work

```
├── test/          # Contains test scripts and configurations
├── x64/           # Compiled binaries or dependencies
├── test.sln       # Main project file to edit and compile
```

### 🔹 GNU Radio Flowgraphs/
GNU Radio Companion (`.grc`) files for signal transmission and processing.

```
├── File_playback.grc        # Mostly used to just playback the .dat file [No DSP techniques in here]
├── File_to_USRP.grc         # Used to transmit IQ data from .dat file to the USRP, can also save the recieve signal to a .dat file **[mostly used for FMCW testing]**
├── SineWave_file_dsp.grc    # Signal processing .dat file from sine wave testing to get the velocity
├── SineWave_test.grc        # Transmits a sine wave to the USRP and can save the receive samples in a .dat file **[Used to run sine wave tests]**
```

### 🔹 MATLAB/
MATLAB scripts for signal analysis and visualization.

```
├── Dat_file_IQ_plotter.m  # Plots and analyzes IQ data from radar signals
├── FMCW_maker.m           # Generates FMCW chirps for testing
```

---

## 📊 Testing Parameters

**Sine Wave Testing**
| Parameter       | Value  |
|---------------|--------|
| **TX & RX Freq.** | 2.4 GHz |
| **Sampling Rate** | 1 MHz or 200 kHz |
| **Gain** | 10-20 dB |

**FMCW Testing** [Still changing]
| Parameter       | Value  |
|---------------|--------|
| **TX & RX Freq.** | 2.4 GHz |
| **Sampling Rate** | 25 MHz |
| **Sweep Bandwidth** | 12.5 MHz |
| **Sweep Time** | 1 ms |
| **Waveform Type** | Sawtooth |
| **Gain** | 10-20 dB |

