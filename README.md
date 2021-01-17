# jupyter-vagrant-box, `bionic64`

This is a VirtualBox VM that is automatically generated using Vagrant.

Machine Learning and Deep Learning packages installed are: Scikit-Learn, NLTK, [Keras](https://keras.io/), [TensorFlow](https://www.tensorflow.org/) and [Theano](). A [Vagrant](https://www.vagrantup.com/) file is used to generate this VM based on Ubuntu 18.04 (`bionic64`).

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
	https://github.com/f0nzie/vagrant-deeplearning-BI64G10DLS2J383AE8200.git
```

*   To generate the virtual machine, change to the folder where this repo has been cloned and type on your local terminal:

    ```
    vagrant up
    ```

* Browse to Jupyter with:  http://127.0.0.1:8200/. Try the different notebooks in there.

*   To access the virtual machine console or terminal, type:

    ```
    vagrant ssh
    ```


*   When finished, power off the virtual machine with:

    ```
    vagrant halt
    ```

    

## Machine Learning packages

*   nltk 3.5
*   sklearn 0.23.1

## Deep Learning packages

*   TensorFlow 2.2.0
*   Keras 2.4.3
*   Theano 1.0.4

## Data Science packages

*   numpy 1.18.5
*   matplotlib 3.2.2
*   pandas 1.2.0
*   bokeh 2.1.1
*   seaborn 0.10.1
*   plotnine 0.7.1

### Credits

*   Thanks to [antonpirker](https://github.com/antonpirker/jupyter-vagrant-box) for original Vagrant box

*   Thank's to [Florian Demmer](https://github.com/fdemmer) for the Vagrant provisioning.



## Codes virtual machine

`vm.name   = "vagrant-deeplearning-BI64G10DLS2J383AE8200"`

*   `BI64`: Ubuntu Bionic 64-bit
*   `S2`: two provisioning scripts for system root and user
*   `G10`: initial disk size of 10 GB. Increased to 20 GB from Vagrantfile
*   `DL`: deep learning
*   `J383`: Jupyter server on Python 3.8.3
*   `AE`: Anaconda environment


* Repo name: `vagrant-deeplearning-BI64G10DLS2J383AE8200`

* VM name: `vagrant-deeplearning-BI64G10DLS2J383AE8200`

* Host name: `BI64G10AE8200`

    

