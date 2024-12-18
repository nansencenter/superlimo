[![DOI](https://zenodo.org/badge/905130076.svg)](https://doi.org/10.5281/zenodo.14514306)

# SuperLIMo
SuperPoint-based Lagrangian Ice MOtion algorithm

## Installation

Create environment
```
mamba env create -f environment.yml
mamba activate superlimo
```

Install SuperLIMo
`pip install superlimo`

Alternatively, Docker can be used:
`docker build -t superlimo:latest .`

## Usage
* Edit your config file (see examples/example_config.yml)
* Download Sentinel-1 SAFE files
* Run superlimo `derive-drift confilg_file.yml S1_FILE_NAME_0.SAFE S1_FILE_NAME_1.SAFE output_dir/output_file.npz`
* Read initial (`x0`, `y0`) and final (`x1`, `y1`) coordinates of the derived drift vectors from the output file.
The quality of the vector (maximum cross-correlation) is in the `mcc` variable.
* Docker can be used for running the ice drift retrieval script:
`docker run --rm -v /path/on/host:/data superlimo derive-drift /data/confilg_file.yml /data/S1_FILE_NAME_0.SAFE /data/S1_FILE_NAME_1.SAFE /data/output_file.npz`

## Citation

Please cite:

* Anton Korosov and Sean Chua, "Deep learning algorithm for sea ice drift retrieval from SAR imagery", 12th INTERNATIONAL WORKSHOP ON SEA ICE MODELLING, ASSIMILATION, OBSERVATIONS, PREDICTIONS AND VERIFICATION, 5 - 7 November 2024 | ESA,ESRIN | Frascati, Italy

* Anton Korosov and Sean Chua, "SuperPoint-based Lagrangian Ice MOtion algorithm, superlimo-0.1.1", Zenodo, Dec. 18, 2024. doi: 10.5281/zenodo.14514307.

```
@conference{Korosov_etal_2024a,
  author       = "Korosov, Anton and Chua, Sean",
  title        = "Deep learning algorithm for sea ice drift retrieval from SAR imagery",
  booktitle    = "12th INTERNATIONAL WORKSHOP ON SEA ICE MODELLING, ASSIMILATION, OBSERVATIONS, PREDICTIONS AND VERIFICATION",
  year         = "2024",
  month        = "11",
  publisher    = "ESA",
  url          = "https://www.dropbox.com/scl/fi/gdfg2fet81pgs2o0cnauj/5.-Korosov.pdf?rlkey=ydcgkorfhsxi8pcnfv2qplbv2&e=1&dl=0"
}

@software{Korosov_etal_2024b,
  author       = {Korosov, Anton and Chua, Sean},
  title        = {SuperPoint-based Lagrangian Ice MOtion algorithm, superlimo-0.1.1},
  month        = dec,
  year         = 2024,
  publisher    = {Zenodo},
  version      = {0.1.1},
  doi          = {10.5281/zenodo.14514307},
  url          = {https://doi.org/10.5281/zenodo.14514307},
}
```