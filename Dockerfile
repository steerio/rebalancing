FROM minad/sciruby-notebooks:latest
RUN mkdir work
RUN pip install jupyter_contrib_nbextensions && jupyter contrib nbextension install --user
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--notebook-dir=work", "--no-browser"]
