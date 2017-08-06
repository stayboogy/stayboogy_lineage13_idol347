/*
   Copyright (c) 2016, The CyanogenMod Project

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_msm8916.h"

void gsm_properties(char default_network[])
{
    property_set("ro.telephony.default_network", default_network);
    property_set("ro.ril.def.preferred.network", default_network);
}

void common_properties()
{
    property_set("ro.product.device", "idol347");
    property_set("ro.build.product", "idol347");
    gsm_properties("9");
}

void dualsim_properties(char multisim_config[])
{
    property_set("persist.radio.multisim.config", multisim_config);
}

__attribute__ ((weak))
void init_target_properties()
{
    char platform[PROP_VALUE_MAX];
    char device[PROP_VALUE_MAX];
    char variant[96];
    FILE *dv;

    if(!(dv = popen("strings /dev/block/bootdevice/by-name/traceability | grep '6039' | cut -c4-8" , "r"))){
        ERROR("popen is failing");
    }

    if (fgets(variant, sizeof(variant), dv) == NULL) {
        ERROR("variant: %s",variant);
    }
    pclose(dv);

    if (strstr(variant, "6039Y")) {
        /* 6039Y L1AJE0E0BQ00 */
        common_properties();
        dualsim_properties("single");
        property_set("ro.build.fingerprint", "TCL/6039Y/idol347:6.0.1/MMB29M/v1BAB-0:user/release-keys");
        property_set("ro.build.description", "idol347-user 6.0.1 MMB29M v1BAB-0 release-keys");
        property_set("ro.product.model", "6039Y");
    } else if (strstr(variant, "6039A")) {
       /* 6039A L1ACM0M0BQ00 */
        common_properties();
        dualsim_properties("single");
        property_set("ro.build.fingerprint", "TCL/6039A/idol347:6.0.1/MMB29M/v1BAB-0:user/release-keys");
        property_set("ro.build.description", "idol347-user 6.0.1 MMB29M v1BAB-0 release-keys");
        property_set("ro.product.model", "6039A");
    } else if (strstr(variant, "6039S")) {
       /* 6039S L1ACV0V0BQ00 */
        common_properties();
        dualsim_properties("single");
        property_set("ro.build.fingerprint", "TCL/6039S/idol347:6.0.1/MMB29M/v1BAB-0:user/release-keys");
        property_set("ro.build.description", "idol347-user 6.0.1 MMB29M v1BAB-0 release-keys");
        property_set("ro.product.model", "6039S");
    } else if (strstr(variant, "6039H")) {
       /* 6039H */
        common_properties();
        dualsim_properties("single");
        property_set("ro.build.fingerprint", "TCL/6039H/idol347:6.0.1/MMB29M/v1BAB-0:user/release-keys");
        property_set("ro.build.description", "idol347-user 6.0.1 MMB29M v1BAB-0 release-keys");
        property_set("ro.product.model", "6039H");
    } else if (strstr(variant, "6039H")) {
       /* 6039H */
        common_properties();
        dualsim_properties("single");
        property_set("ro.build.fingerprint", "TCL/6039H/idol347:6.0.1/MMB29M/v1BAB-0:user/release-keys");
        property_set("ro.build.description", "idol347-user 6.0.1 MMB29M v1BAB-0 release-keys");
        property_set("ro.product.model", "6039H");
    } else if (strstr(variant, "6039K")) {
       /* 6039K L1AJE0E0BQ00 */
        common_properties();
        dualsim_properties("dsds");
        property_set("ro.build.fingerprint", "TCL/6039K/idol347:6.0.1/MMB29M/v1BAB-0:user/release-keys");
        property_set("ro.build.description", "idol347-user 6.0.1 MMB29M v1BAB-0 release-keys");
        property_set("ro.product.model", "6039K");
    } else if (strstr(variant, "6039J")) {
       /* 6039J */
        common_properties();
        dualsim_properties("dsds");
        property_set("ro.build.fingerprint", "TCL/6039J/idol347:6.0.1/MMB29M/v1BAB-0:user/release-keys");
        property_set("ro.build.description", "idol347-user 6.0.1 MMB29M v1BAB-0 release-keys");
        property_set("ro.product.model", "6039J");
    } else {
       /* 6039X */
        common_properties();
        dualsim_properties("single");
        property_set("ro.build.fingerprint", "TCL/6039X/idol347:6.0.1/MMB29M/v1BAB-0:user/release-keys");
        property_set("ro.build.description", "idol347-user 6.0.1 MMB29M v1BAB-0 release-keys");
        property_set("ro.product.model", "6039X");
    }
    property_get("ro.product.device", device);
    ERROR("Found device variant %s setting build properties for %s device\n", variant, device);
}

static int read_file2(const char *fname, char *data, int max_size)
{
    int fd, rc;

    if (max_size < 1)
        return 0;

    fd = open(fname, O_RDONLY);
    if (fd < 0) {
        ERROR("failed to open '%s'\n", fname);
        return 0;
    }

    rc = read(fd, data, max_size - 1);
    if ((rc > 0) && (rc < max_size))
        data[rc] = '\0';
    else
        data[0] = '\0';
    close(fd);

    return 1;
}

static void init_alarm_boot_properties()
{
    char const *alarm_file = "/proc/sys/kernel/boot_reason";
    char buf[64];

    if (read_file2(alarm_file, buf, sizeof(buf))) {
        /*
         * Setup ro.alarm_boot value to true when it is RTC triggered boot up
         * For existing PMIC chips, the following mapping applies
         * for the value of boot_reason:
         *
         * 0 -> unknown
         * 1 -> hard reset
         * 2 -> sudden momentary power loss (SMPL)
         * 3 -> real time clock (RTC)
         * 4 -> DC charger inserted
         * 5 -> USB charger insertd
         * 6 -> PON1 pin toggled (for secondary PMICs)
         * 7 -> CBLPWR_N pin toggled (for external power supply)
         * 8 -> KPDPWR_N pin toggled (power key pressed)
         */
        if (buf[0] == '3')
            property_set("ro.alarm_boot", "true");
        else
            property_set("ro.alarm_boot", "false");
    }
}

void vendor_load_properties()
{
    init_target_properties();
    init_alarm_boot_properties();
}
