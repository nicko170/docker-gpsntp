.PHONY: all
all: docker

.PHONY: docker docker-build docker-push
docker docker-build docker-push:
	make -C gpsd $(@F)
	make -C ntpsec $(@F)
	make -C ntpsec-alpine $(@F)

