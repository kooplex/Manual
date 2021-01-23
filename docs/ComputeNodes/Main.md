Compute nodes
==========

### Docker and containers, Notebooks,

Computationally intensive jobs can be submitted to a compute node that is managed by Slurm. Submitting jobs to this compute node should be done like:

``` bash
sbatch -n $NCPU --partition=normal thescript.sh
```

where $NCPU is the number of cpus.
Please refer to this manual for further instructions on how to submit jobs.
When submitting a job the access paths are the same for `/v/${user_name} and the large data storages. All other folders won't be accessible for the submnitted scripts.

## Customizing environment with singularity
There Singularity lightweight virtualization package installed into the docker images. These allow to build environments that makes sure that your code will use the same every time and this can be shared.
These singularity "layers" or images can be saved to ... which is publicly accessible.

## Folders on compute nodes

# Singularity 
You can find the manual here:
* https://singularity.lbl.gov/docs-build-container
* https://www.sylabs.io/docs/
* https://sci-f.github.io/tutorials
