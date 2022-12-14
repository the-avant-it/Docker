# Common.Docker

Role for installing Docker runtime

# Changelog

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

# Documentation for V2.0.0

## Variables

### Non-secret

All variables are set by default

```yaml
docker:
  # Edition can be one of: 'ce' (Community Edition) or 'ee' (Enterprise Edition).
  edition: 'ce'
  package_version: "5:20.10.20~3-0~ubuntu-focal"
  package_state: present

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

  # Docker daemon options as a dict
  daemon_options: {}
```  

### Secret

```yaml

```