<div align="center">

![Imgur](https://i.imgur.com/wfQ1YeK.png)

### CLI utility for autogenerating .gitignore files to STDOUT

[![GitHub release](https://img.shields.io/github/release/jakewmeyer/Zeus.svg)]()
[![Build Status](https://travis-ci.org/jakewmeyer/Zeus.svg?branch=master)](https://travis-ci.org/jakewmeyer/Zeus)

</div>

## Install / Setup
### Build from Source
* Make sure you have the lastest version of [crystal](https://crystal-lang.org/) installed
* Clone or download the repo & cd into repo
```bash
shards build --release
```
* Freshly built binary placed in the `bin` folder

## Usage
### Overwrite existing .gitignore file
```bash
zeus  > .gitignore
```
```bash
zeus crystal > .gitignore
```
```bash
zeus crystal ruby python > .gitignore
```

### Append existing .gitignore file
```bash
zeus >> .gitignore
```
