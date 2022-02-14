# Part 2

# Python Tools

### 1# OS specific commands

- ### Mac

  ```
  xcode-select --install
  ```

  ```
  brew install openssl readline sqlite3 xz zlib
  ```

- ### WSL/Linux

  ```
  brew install bzip2 libffi libxml2 libxmlsec1 openssl readline sqlite xz zlib
  ```

  ```
  sudo apt-get install zlib1g-dev
  ```

### Every OS system

```
brew install pipenv
```

```
brew install pyenv
```

```
pyenv install 3.9.5
```

> the 3.9.5 is the Python interpreter version

### 2# OS specific commands

- ### Mac

  ```
  brew install openssl readline sqlite3 xz zlib
  ```

- ### Ubuntu/Debian/Mint

  ```
  sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
  ```

If your OS is not listed refer for [Pyenv documentation](https://github.com/pyenv/pyenv/wiki#suggested-build-environment)

### We are almost there

```
pyenv global 3.9.5
```

restart the terminal then run

```
python --version
```

<hr>

<a href="Python installation guide.md">Previous Page </a></h2> | <a href="Python installation guide_3.md">MOVE TO PART 3</a>
