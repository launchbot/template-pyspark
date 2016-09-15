FROM jupyter/pyspark-notebook:latest

# launchbot-specific labels
LABEL name.launchbot.io="PySpark"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL description.launchbot.io="PySpark + Jupyter notebook"
LABEL 8888.port.launchbot.io="Jupyter Notebook"

# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=*
