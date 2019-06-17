Compute nodes
==========

### Docker and containers, Notebooks,

Computationally intensive jobs can be submitted to a compute node that is managed by Slurm. This compute node is the kooplex-cn16. It has 48 CPUs and 232 GB memory. Submitting jobs to this compute node should be done like:
sbatch -n $NCPU --partition=normal thescript.sh
where NCPU is the number of cpus.
There is a prepared jobscript under ....
Please refer to this manual for further instructions on how to submit jobs.
When submitting a job the access paths are the same for /home/ and the large data storages. All other folders won't be accessible for the submnitted scripts.

customizing environment
There Singularity lightweight virtualization package installed into the docker images. These allow to build environments that makes sure that your code will use the same every time and this can be shared.
These singularity "layers" or images can be saved to ... which is publicly accessible.


