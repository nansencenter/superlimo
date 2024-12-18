FROM continuumio/miniconda3

# Set the working directory
WORKDIR /app

# Install Mamba
RUN conda install -c conda-forge mamba && \
apt-get update && \
apt-get install -y build-essential

# Copy the environment.yml file to the working directory
COPY environment.yml .

# Create the Conda environment using Mamba
RUN mamba env create -f environment.yml

# Make RUN commands use the new environment
SHELL ["conda", "run", "-n", "superlimo", "/bin/bash", "-c"]

# Copy the rest of the application code to the working directory
COPY . .

# Install the package
RUN pip install .

# Set the environment variable for the Conda environment
ENV PATH /opt/conda/envs/superlimo/bin:$PATH
