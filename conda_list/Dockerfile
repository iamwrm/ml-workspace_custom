FROM mltooling/ml-workspace:0.13.2

ADD ./requirements.txt .

ENV \
    CONDA_ROOT=/opt/conda

RUN \
    $CONDA_ROOT/bin/conda create --name spyder5_env --file requirements.txt && \
    $CONDA_ROOT/bin/conda clean -y --packages && \
    $CONDA_ROOT/bin/conda clean -y -a -f  && \
    $CONDA_ROOT/bin/conda build purge-all && \
    fix-permissions.sh $CONDA_ROOT && \
    clean-layer.sh

ENTRYPOINT ["/tini", "-g", "--"]

CMD ["python", "/resources/docker-entrypoint.py"]

EXPOSE 8080
