FROM		ubuntu
RUN		apt update && \
		apt install -y build-essential libssl-dev git libevent-dev
RUN		git clone https://github.com/coturn/coturn.git /opt/coturn
RUN		cd /opt/coturn && \
		./configure && \
		make && \
		make install
COPY		./entrypoint.sh /entrypoint.sh
ENTRYPOINT	["/entrypoint.sh"]
