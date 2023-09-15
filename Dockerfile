FROM mageai/mageai:latest

ARG PROJECT_NAME=Equal_iq
ARG MAGE_CODE_PATH=${MAGE_CODE_PATH}
ARG USER_CODE_PATH=${MAGE_CODE_PATH}/${PROJECT_NAME}

WORKDIR ${MAGE_CODE_PATH}

# Replace [project_name] with the name of your project (e.g. demo_project)
# COPY ${PROJECT_NAME} ${PROJECT_NAME}

# Set the USER_CODE_PATH variable to the path of user project.
# The project path needs to contain project name.
# Replace [project_name] with the name of your project (e.g. demo_project)
ENV USER_CODE_PATH=${USER_CODE_PATH}


EXPOSE 6789

ENTRYPOINT [ "/app/run_app.sh", "mage", "start", "my-bot-mage-ai" ]
