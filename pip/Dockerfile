FROM mltooling/ml-workspace:0.13.2
RUN \
    python –m pip install pyqt5 && \
    python –m pip install spyder && \
    python –m pip install PyQtWebEngine && \
    clean-layer.sh

ENTRYPOINT ["/tini", "-g", "--"]

CMD ["python", "/resources/docker-entrypoint.py"]

EXPOSE 8080
