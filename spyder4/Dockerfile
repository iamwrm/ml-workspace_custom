FROM mltooling/ml-workspace:0.13.2
ENV \
    CONDA_ROOT=/opt/conda

RUN \
    $CONDA_ROOT/bin/conda install -y spyder=4 pyopengl qt pyqt pyqtwebengine && \
    $CONDA_ROOT/bin/conda clean -y --packages && \
    $CONDA_ROOT/bin/conda clean -y -a -f  && \
    $CONDA_ROOT/bin/conda build purge-all && \
    fix-permissions.sh $CONDA_ROOT && \
    clean-layer.sh

ENTRYPOINT ["/tini", "-g", "--"]

CMD ["python", "/resources/docker-entrypoint.py"]

EXPOSE 8080
