FROM mltooling/ml-workspace:0.13.2
RUN conda install -y spyder pyopengl qt=5.6* pyqt=5.6* pyqtwebengine


ENTRYPOINT ["/tini", "-g", "--"]

CMD ["python", "/resources/docker-entrypoint.py"]

EXPOSE 8080
