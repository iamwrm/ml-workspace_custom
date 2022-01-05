FROM mltooling/ml-workspace:0.13.2
RUN \
    conda install -y spyder pyopengl qt=5.* pyqt=5.* pyqtwebengine && \
    clean-layer.sh

ENTRYPOINT ["/tini", "-g", "--"]

CMD ["python", "/resources/docker-entrypoint.py"]

EXPOSE 8080
