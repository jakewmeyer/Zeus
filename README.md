<div align="center">

![Imgur](https://i.imgur.com/wfQ1YeK.png)

### CLI utility for autogenerating .gitignore files to STDOUT

[![GitHub release](https://img.shields.io/github/release/jakewmeyer/Zeus.svg)]()
[![Build Status](https://travis-ci.org/jakewmeyer/Zeus.svg?branch=master)](https://travis-ci.org/jakewmeyer/Zeus)

</div>

## Purpose
* This was written to solve a problem I had with copying and pasting from OS and Language gitignore sources
* The script automatically adds the correct OS .gitignore plus any number of languages you specify, all sent to STDOUT for easy redirection
* Uses the API provided by [gitignore.io](https://www.gitignore.io/)

## Install / Setup
### Build from Source
* Make sure you have the lastest version of [crystal](https://crystal-lang.org/) installed
```bash
$ git clone https://github.com/jakewmeyer/Zeus.git && cd zeus
```
```bash
$ crystal build src/zeus.cr --release
```
```bash
$ ./zeus
```

## Usage
### Overwrite existing .gitignore file
```bash
$ zeus > .gitignore
```
```bash
$ zeus crystal > .gitignore
```
```bash
$ zeus crystal ruby python > .gitignore
```

### Append existing .gitignore file
```bash
$ zeus >> .gitignore
```
