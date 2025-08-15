# Getting Started with GPU-Powered JupyterLab on Brev🤙

Follow these steps to launch your GPU-enabled JupyterLab environment using Brev.

## 1. Allow the Instance to Start
Wait for your Brev instance to finish building before proceeding.

## 2. Install Brev CLI (If Not Already Installed)
Copy and paste the **“Install the CLI”** command from your Brev instance page into your terminal.

## 3. Connect to Your Instance
Under the **“Open a terminal locally”** section, copy your `brev shell <instance-name>` command and run it in your terminal.

## 4. Change into Proper Directory
Run the following command in your terminal:
`cd gpu-python/`

## 5. Start the Docker Container
Run the following command in your terminal:
`docker compose up`

## 6. Refresh Brev Page
Refresh the Brev page, open your notebook, and enjoy!

## Debugging
If you try to start Jupyter but get an error like:

Error: [Errno 98] Address already in use
It means another process is already using port 8888. This is usually caused by a Jupyter service that’s running automatically in the background.

Follow these steps to diagnose and fix the issue:

### 1. Check What’s Using Port 8888
Run:
`lsof -i :8888`
Example output:
COMMAND     PID    USER   FD   TYPE  DEVICE SIZE/OFF NODE NAME
jupyter-lab 29753 ubuntu 6u   IPv4  129739 0t0      TCP *:8888 (LISTEN)

### 2. Stop and Disable Auto-Start
If Jupyter is being started automatically by systemd, stop it with:
`sudo systemctl stop jupyter`
`sudo systemctl disable jupyter`

### 3. Verify It’s Gone
`lsof -i :8888`
If nothing shows up, the port is now free.

# Accelerated Python User Guide

## Notebooks

| Notebook      | Link |
| ----------- | ----------- |
| Chapter 1: GPU Computing Basics | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_01_GPU_Computing_Basics.ipynb)|
| Chapter 2: Brief Intro to CUDA | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_02_Brief_Intro_to_CUDA.ipynb)|
| Chapter 3: Python on the GPU | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_03_Python_on_the_GPU.ipynb)|
| Chapter 4: Scientific Computing with CuPy | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_04_Scientific_Computing_with_CuPy.ipynb)|
| Chapter 5: CUDA Kernels with Numba | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_05_CUDA_Kernels_with_Numba.ipynb)|
| Chapter 6: Intro to nvmath-python | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_06_Intro_to_nvmath-python.ipynb)|
| Chapter 7: Intro to cuDF | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_07_Intro_to_cuDF.ipynb)|
| Chapter 8: Intro to cuML | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_08_Intro_to_cuML.ipynb)|
| Chapter 9: Intro to cuGraph | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_09_Intro_to_cuGraph.ipynb)|
| Chapter 10: Developer Tools | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_10_Developer_Tools.ipynb)|
| Chapter 11: Distributed Computing with cuPyNumeric | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_11_Distributed_Computing_cuNumeric.ipynb)|
| Chapter 12: Intro to NVIDIA Warp | [![](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/NVIDIA/accelerated-computing-hub/blob/main/Accelerated_Python_User_Guide/notebooks/Chapter_12_Intro_to_NVIDIA_Warp.ipynb)|
