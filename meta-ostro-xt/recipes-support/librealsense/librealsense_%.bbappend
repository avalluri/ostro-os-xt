# Skip QA warning: No GNU_HASH in the elf binary
INSANE_SKIP_${PN} = "ldflags"
INSANE_SKIP_${PN}-examples = "ldflags"
INSANE_SKIP_${PN}-graphical-examples = "ldflags"
INSANE_SKIP_${PN}-tests = "ldflags"
