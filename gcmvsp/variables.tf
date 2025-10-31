# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "parent_id" {
  description = "The parent id of the resource, e.g. organizations/123456789, folders/123456789, or projects/project-id"
  type        = string

  validation {
    condition     = can(regex("^organizations/[0-9]+$", var.parent_id)) || can(regex("^folders/[0-9]+$", var.parent_id)) || can(regex("^projects/.+$", var.parent_id))
    error_message = "Parent ID must be in the format organizations/123456789, folders/123456789, or projects/project-id."
  }
}
