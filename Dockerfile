# Container image that runs your code
FROM python:3.12-bullseye

ENV DEBIAN_FRONTEND=noninteractive

# Installs ImageMagick with AVIF support
RUN apt remove "*imagemagick*" --purge -y && apt autoremove --purge -y

RUN apt-get -qq update && apt-get -qq install -y ffmpeg build-essential

RUN git clone https://github.com/SoftCreatR/imei && \
cd imei && \
chmod +x imei.sh && \
./imei.sh

# Installs Poetry
ENV POETRY_NO_INTERACTION=1 \
    POETRY_VIRTUALENVS_IN_PROJECT=1 \
    POETRY_VIRTUALENVS_CREATE=1 \
    POETRY_CACHE_DIR=/tmp/poetry_cache

ENV PATH="/root/.local/bin:${PATH}"

RUN python3 -m pip install --user pipx

RUN pipx --global install poetry
RUN pipx --global ensurepath

RUN which poetry
RUN poetry --version
