Python Development Docker
-------------------------

Want to start developing Python, but don't have a lot of time?
If you have access to a Docker_ environment, you're in luck.
Just build this Dockerfile, and then run it.

.. code::

    docker build -t python-dev .
    docker run --rm -it python-dev

Alternatives to running the container include:

Mounting your source code inside it:

.. code::

    docker run --rm -it -v ~/src:/src python-dev

Forwarding a port for Jupyter_

.. code::

    docker run --rm -it -p 8888:8888 python-dev

Inside the container, :code:`/env` is the Python environment to use.
It can either be activated by :code:`. /env/bin/activate` or
it can be used directly, for example to run a Jupyter server:

.. code::

    /env/bin/pip install ipython[notebook]
    mkdir ~/.jupyter
    echo "c.NotebookApp.ip = '*'" > ~/.jupyter/jupyter_notebook_config.py 
    /env/bin/jupyter-notebook

.. Docker: https://docs.docker.com/engine/installation/
.. Jupyter: http://jupyter-notebook.readthedocs.org/en/latest/
