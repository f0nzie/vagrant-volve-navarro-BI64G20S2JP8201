# jupyter-vagrant-box

This is a simple Vagrant virtual machine. It contains a setup for running **Jupyter** notebook with Python 3. The setup includes the [Anaconda Python distribution](https://www.anaconda.com/distribution/) which means a lot of data science packages like [NumPy](http://www.numpy.org/), [pandas](https://pandas.pydata.org/), [matplotlib](https://matplotlib.org/), [Bokeh](https://bokeh.pydata.org/en/latest/), [plotnine](), and many more are readily included in the setup. 

### Prerequisites

You need the following installed on your computer (WIndows, macOS or any flavor of Linux:
- [Virtualbox 6+](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

### Usage

- Copy `Vagrantfile` and the `scripts` folder to the directory where your data science projects lives.
- Run the shell command `vagrant up` in the folder you copied the files to.
- Wait until the virtual machine is setup and ready. (never mind the red colored output)
- Point your browser to [http://localhost:8000](http://localhost:8000)
- **Optional:** If you need to install additional Python packages (or do something similar) you can log into the virtual machine by calling `vagrant ssh`.

**That's it.** I hope this is useful for some people. Have fun!



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

### Credit

*   Thanks to [antonpirker](https://github.com/antonpirker/jupyter-vagrant-box) for original Vagrant box

*   Thank's to [Florian Demmer](https://github.com/fdemmer) for helping with the Vagrant provisioning.



## Codes virtual machine

`v.name   = "vagrant-bi64shsujpythtfke-apyenv202007"`

*   `bi64`: Ubuntu Bionic 64-bit
*   `shsu`: provisioning scripts for system root and user
*   `jpy`: Jupyter server
*   `thtfke`: Theano, TensorFlow, Keras
*   `apyenv`: Anaconda version 2020.07 with `pyenv`


* Long name: `vagrant-bi64shsujpythtfke-apyenv202007`
* Short name: `BI64G10DLS2J383AE8200`
* Host name: `BI64G10AE8200`
* VM name: `vagrant-bi64shsujpythtfke-apyenv202007` or `vagrant-BI64G10DLS2J383AE8200`
* Repo name: `vagrant-deeplearning-BI64G10DLS2J383AE8200`



