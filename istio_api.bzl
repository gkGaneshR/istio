# Copyright 2017 Istio Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
################################################################################
#

ISTIO_API_SHA = "934c38563b4fc7827ac5f9120c085d3b9a56c1ad"

def go_istio_api_repositories(use_local=False):
    if use_local:
        native.local_repository(
            name = "io_istio_api",
            path = "../api",
        )
    else:
        native.git_repository(
          name = "io_istio_api",
          commit = ISTIO_API_SHA,
          remote = "https://github.com/istio/api.git",
        )
