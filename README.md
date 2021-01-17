# vagrant-volve-navarro-BI64G20S2JP8201

This is reproducible work of Machine Learning and Data Science applied to data from the Volve field.

## Features

This is a VirtualBox Virtual Machine (VM) that is automatically generated using Vagrant.

A few Machine Learning and Deep Learning packages have been installed, such as Scikit-Learn, NLTK, [Keras](https://keras.io/), [TensorFlow](https://www.tensorflow.org/) and [Theano](). A [Vagrant](https://www.vagrantup.com/) file is used to generate this VM based on Ubuntu 18.04 (`bionic64`).

Additional packages required for this phase of the ML and DS work are [welly](), [pandas](), [numpy](), [seaborn](), and [lasio]().

### Base Machine

*   Operating system: Ubuntu 18.04 `bionic64`
*   Virtualization: VirtualBox and Vagrant
*   ML, DS: Python, Jupyter server, Anaconda3

### Software versions used to generate virtual machine

*   VirtualBox 6.1.16 r40961 (Linux)

*   Vagrant 2.2.6 (Linux)

*   Virtual Studio Code 1.51.1 (Linux)

    

### Prerequisites

You need the following installed on your computer (WIndows, macOS or any flavor of Linux:
- [Virtualbox 6+](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

### Getting Started

*   This VM should work in Windows, macOS and Linux (tested in Debian-10 Buster as host)

*   VirtualBox (version 6+) is required

*   [Download and install Vagrant](http://www.vagrantup.com/downloads.html) 

*   Clone the virtual machine specs with:

```
git clone \
	https://github.com/f0nzie/vagrant-volve-navarro-BI64G20S2JP8201
```

*   To generate the virtual machine, change to the folder where this repo has been cloned and type on your local terminal:

    ```
    vagrant up
    ```

* Browse to Jupyter with:  http://127.0.0.1:8201/. Try the different notebooks in there.

*   To access the virtual machine console or terminal, type:

    ```
    vagrant ssh
    ```


*   When finished, power off the virtual machine with:

    ```
    vagrant halt
    ```




## Packages

### Machine Learning packages

*   nltk 3.5
*   sklearn 0.23.1

### Deep Learning packages

*   TensorFlow 2.2.0
*   Keras 2.4.3
*   Theano 1.0.4

### Data Science packages

*   numpy 1.18.5
*   matplotlib 3.2.2
*   pandas 1.2.0
*   bokeh 2.1.1
*   seaborn 0.10.1
*   plotnine 0.7.1

### Other

*   welly
*   lasio

### Credits

*   Thanks to [antonpirker](https://github.com/antonpirker/jupyter-vagrant-box) for original Vagrant box

*   Thank's to [Florian Demmer](https://github.com/fdemmer) for the Vagrant provisioning.



## Codes virtual machine

`vm.name   = "vagrant-volve-navarro-BI64G20S2JP8201"`

`config.vm.hostname = "BI64G20S2JP8201"`

*   Field data: *Volve*
*   Author: Luis Enrique *Navarro* Morales
*   `BI64`: Ubuntu Bionic 64-bit
*   `G20`: initial disk size of 10 GB. Increased to 20 GB from Vagrantfile
*   `S2`: two provisioning scripts for system root and user
*   `J`: Jupyter server
*   `P8201`: Port for Jupyter notebooks = 8201



## References


* GitHub Repo URL: https://github.com/f0nzie/vagrant-volve-navarro-BI64G20S2JP8201

    

    

      


