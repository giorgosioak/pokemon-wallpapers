# Pokemon Wallpapers

_A set of pokemon wallpapers for the Linux desktop made by Teej/TopHat._

![XFCE's Background Picker ](http://i.imgur.com/HmElSzT.png)

## Installation

Follow the instructions on `Build from Source`

The installer creates a folder into /usr/share/backgrounds named pokemon.

### Third-party Distribution Packages
We hope we will have an AUR or a PPA soon :)

### Build from source
#### Acquire Pokemon Wallpapers' source code
Clone Pokemon Wallpapers' Git repository to local machine using

```shell
$ git clone https://giorgosioak@bitbucket.org/giorgosioak/pokemon-wallpapers.git
```

#### Build & install Pokemon Wallpapers
```shell
# Generic method
$ autoreconf --force --install # Most non-debian derived distros will need this
$ ./configure
$ make
$ sudo make install
```

## License
 Pokemon Wallpapers is distributed under the [GPL license](https://www.gnu.org/licenses/gpl-3.0.en.html).