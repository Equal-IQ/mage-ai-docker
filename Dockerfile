FROM mageai/mageai:latest

RUN mkdir -p /volume

EXPOSE 6789

ENTRYPOINT [ "/app/run_app.sh", "mage", "start", "my-bot-mage-ai" ]
