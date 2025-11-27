# TRNG-True-Random-Number-Generator-in-Verilog
This repository contains a synthesizable Verilog implementation of a True Random Number Generator

This project implements a **hardware-based True Random Number Generator (TRNG)** using:
- 32 ring oscillators
- D flip-flop sampling
- XOR entropy extraction
- Von Neumann corrector for post-processing
- 32-bit Shift Registers for storing the random generated number.
  This shift register is used so we can see the output on the onboard seven segment display of FPGA.  

## 🔁 How It Works

1. **32 ROs** oscillate based on thermal jitter.
2. Outputs sampled using DFFs clocked by a sampling clock.
3. Sampled bits XOR'ed to produce raw entropy.
4. Optional **Von Neumann post-processing** removes bias.
5. Output chosen via MUX: raw or corrected.
   

https://github.com/user-attachments/assets/e363d56d-2b78-4e92-a9c1-6a95e8431384


> **Important Note:**  
> While this code is fully **synthesizable**, it cannot be used to generate **simulation** in tools like **Xilinx Vivado**.  
> This is because:
>
> - Ring oscillators do not actually oscillate in simulation.
> - They rely on physical delays, jitter, and metastability which simulators do not model.
