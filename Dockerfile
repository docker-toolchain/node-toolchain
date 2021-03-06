FROM {{__toolchain_base_image__}}

VOLUME /home/node/workspace
VOLUME /home/node/.npmrc

LABEL toolchain.name=node
LABEL toolchain.user=root
LABEL toolchain.workspace=/home/node/workspace
LABEL toolchain.version={{__toolchain_version__}}
LABEL toolchain.tag={{__toolchain_tag__}}

WORKDIR /home/node/workspace
CMD [ "npm", "install" ]
