FROM mltooling/ml-workspace:0.13.2
RUN conda install -y spyder=4 pyopengl qt pyqt pyqtwebengine


ENTRYPOINT ["/tini", "-g", "--"]

CMD ["python", "/resources/docker-entrypoint.py"]

EXPOSE 8080
