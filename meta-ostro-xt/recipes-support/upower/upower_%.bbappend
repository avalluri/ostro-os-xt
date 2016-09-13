inherit systemd
SYSTEMD_SERVICE_${PN} = "upower.service"

RRECOMMENDS_${PN}_remove = "pm-utils"
