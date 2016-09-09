FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
    file://ostroprojectorg.key \
"
SWUPD_VERSION_URL ?= "https://download.ostroproject.org/updates/ostro-os-xt/milestone/intel-corei7-64/ostro-xt-image-swupd"
SWUPD_CONTENT_URL ?= "https://download.ostroproject.org/updates/ostro-os-xt/milestone/intel-corei7-64/ostro-xt-image-swupd"

do_install_append () {
    install -d ${D}${datadir}/clear/update-ca
    rm -f ${D}${datadir}/clear/update-ca/425b0f6b.key
    install -m 0644 ${WORKDIR}/ostroprojectorg.key ${D}${datadir}/clear/update-ca/425b0f6b.key

    echo "${SWUPD_VERSION_URL}" > ${D}/usr/share/defaults/swupd/versionurl
    echo "${SWUPD_CONTENT_URL}" > ${D}/usr/share/defaults/swupd/contenturl
    echo "${SWUPD_FORMAT}" > ${D}/usr/share/defaults/swupd/format
}
