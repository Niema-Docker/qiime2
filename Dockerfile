# Minimal Docker image for QIIME 2 using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install QIIME 2
RUN micromamba create -y --ssl-verify=false -n qiime2 --file "https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/2026.7/qiime2/released/rachis-qiime2-linux-64-conda.yml" && \
    micromamba clean --all --yes
ENV ENV_NAME=qiime2
