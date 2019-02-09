# Copyright (C) 2019 OmegaROM
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Versioning System
# OmegaROM Version.
OMEGA_VERSION_NUMBER := v1.0
OMEGA_VERSION_P := 1.0
OMEGA_BUILD_DATE := $(shell date -u +%Y%m%d)
OMEGA_DEVICE := $(OMEGA_BUILD)

ifndef OMEGA_BUILD_TYPE
    OMEGA_BUILD_TYPE := UNOFFICIAL

endif

ifeq ($(OMEGA_BUILD_TYPE), OFFICIAL)

PRODUCT_PACKAGES += \
    Updater

endif

# Set all versions
OMEGA_VERSION := OmegaROM-$(OMEGA_DEVICE)-$(shell date +"%Y%m%d")-$(OMEGA_VERSION_NUMBER)-Broken_Collider-$(OMEGA_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.omega.buildtype=$(OMEGA_BUILD_TYPE) \
    omega.ota.version=$(OMEGA_VERSION) \
    ro.modversion=$(OMEGA_VERSION_NUMBER) \
    ro.omegamodversion=$(OMEGA_VERSION_P) \
    ro.omega.version=$(OMEGA_VERSION) \
    ro.omega.build_date=$(OMEGA_BUILD_DATE) \
    ro.omega.device=$(OMEGA_DEVICE)
