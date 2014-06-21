# Intro

A dockerfile for setting up [aptly](http://www.aptly.info/)

# Usage

```bash
$ git clone git://github.com/narkisr/aptly-docker.git
$ sudo docker build -t narkisr/aptly .

# for setting up Ubuntu mirrors
$ sudo ./add-mirror saucy ubuntu
$ sudo ./update-mirror ubuntu
$ sudo ./publish-mirror ubuntu

$ sudo ./add-mirror ubuntu-updates saucy-updates 
$ sudo ./update-mirror ubuntu-updates
$ sudo ./publish-mirror ubuntu-updates

$ sudo ./add-mirror ubuntu-backports saucy-backports 
$ sudo ./update-mirror ubuntu-backports
$ sudo ./publish-mirror ubuntu-backports

$ sudo ./add-mirror ubuntu-security saucy-security 
$ sudo ./update-mirror ubuntu-security
$ sudo ./publish-mirror ubuntu-security
```

# Copyright and license
Copyright [2013] [Ronen Narkis]

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
