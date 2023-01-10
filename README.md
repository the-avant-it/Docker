# Common.Docker

Role for installing Docker runtime

# Changelog

## 2.4.0

- Add support for docker.ignore_install_errors and docker.skip_docker_install

## 2.3.1

- Fix caching vars

## 2.3.0

- Add support for storing layer cache in tmpfs (docker.tmpfs_storage var)

## 2.2.0

- Add log rotation

## 2.1.0

- Add caching

## 2.0.0

- BREAKING CHANGE: Set default docker version to 5:20.10.20~3-0~ubuntu-focal

## 1.1.2

- Fix No package matching 'docker-ce' is available

## 1.1.1

- Fix error on Add Docker repository when using with gitlab role in Russia

## 1.1.0

- Add Install Python docker SDK for all users

# Documentation for V2.4.0

## Variables

### Non-secret

All variables are set by default

```yaml
docker:
  # Edition can be one of: 'ce' (Community Edition) or 'ee' (Enterprise Edition).
  edition: 'ce'
  package_version: "5:20.10.20~3-0~ubuntu-focal"
  package_state: present

  # Optional. Whether to install docker. Usefull for existing systems where docker already installed
  skip_docker_install: no
  # Optional. Whether to ignore docker installation errors. Usefull if other docker version already insatalled
  ignore_install_errors: no

  # Service options.
  service_state: started
  service_enabled: true
  restart_handler_state: restarted

  # Docker repo URL.
  repo_url: https://download.docker.com/linux

  # Used only for Debian/Ubuntu. Switch 'stable' to 'nightly' if needed.
  apt_release_channel: stable
  apt_arch: amd64  
  apt_ignore_key_error: true

  # Optional. Docker daemon options as a dict
  daemon_options: 
    log-driver: local
    log-opts: 
      max-size: 100m
      max-file: "3"  

  # Configuration storing layer cache in RAM. Optional.
  tmpfs_storage:
    # Enable. Optional. False by default
    enable: false
    # Whether to create tmpfs mount and use ti as docker root_dir. Required if enable == true
    storage_size_gb: 100g
    # Where to create tmpfs mount. Optional. /mnt/docker by default
    path: /mnt/docker      
```  

### Secret

```yaml

```