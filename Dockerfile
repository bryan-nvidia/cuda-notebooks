# Dockerfile
FROM nvidia/cuda:12.6.2-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install \
      jupyterlab \
      numpy numba matplotlib cupy-cuda12x nvmath-python numba_cuda pandas pynvml \
      torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124 && \
    pip3 install \
      cudf-cu12 cuml-cu12 dask-cuda dask-cudf-cu12 dask aiohttp requests nvidia-libmathdx-cu12 --extra-index-url=https://pypi.nvidia.com && \
    ln -s /usr/local/cuda*/nvvm/lib64/libnvvm.so /usr/lib/libnvvm.so || true
