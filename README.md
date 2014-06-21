# Intro

A dockerfile for setting up [aptly](http://www.aptly.info/)

# Usage

## Long manual way:

```bash
$ git clone git://github.com/narkisr/aptly-docker.git
$ sudo docker build -t narkisr/aptly .

# for setting up Ubuntu mirrors for each component (main,restricted,universe,multiverse)
$ sudo ./add-mirror ubuntu-saucy-main http://il.archive.ubuntu.com/ubuntu/ saucy main
$ sudo ./update-mirror ubuntu-saucy-main
$ sudo ./publish-mirror ubuntu-saucy-main

$ sudo ./add-mirror ubuntu-saucy-restricted http://il.archive.ubuntu.com/ubuntu/ saucy restricted
$ sudo ./update-mirror ubuntu-saucy-restricted
$ sudo ./publish-mirror ubuntu-saucy-restricted
# .. the same the universe/multiverse components

# now repeat for updates and backports repos .. 
```

## Automated

```bash
$ rake add_all[saucy,http://il.archive.ubuntu.com/ubuntu/]
$ rake add_all[saucy-backports,http://il.archive.ubuntu.com/ubuntu/]
$ rake add_all[saucy-updates,http://il.archive.ubuntu.com/ubuntu/]
```

# Copyright and license
Copyright [2013] [Ronen Narkis]

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
