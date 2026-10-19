# CatVinci Studio Homebrew Tap

Homebrew casks for [CatVinci Studio](https://github.com/CatVinci-Studio) apps.

## Textus

Textus is now in Homebrew's official casks, so no tap is needed:

```sh
brew install --cask textus
```

If you installed it from this tap (as `textus` or the older `levis`), `brew update` moves it to the official cask by itself.

## Usage

```sh
brew install --cask catvinci-studio/tap/mneme
```

Or add the tap first:

```sh
brew tap catvinci-studio/tap
brew install --cask mneme
```

## Apps

| Cask | Description |
| --- | --- |
| [`mneme`](Casks/mneme.rb) | Local-first read-it-later app with a native Rust knowledge agent ([repo](https://github.com/CatVinci-Studio/Mneme)) |

Cask versions are updated alongside their application releases.
