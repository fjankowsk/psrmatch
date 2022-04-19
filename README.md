# psrmatch: Known source matching #

This repository contains software to efficiently cross-match large numbers of single-pulse candidates with known sources from the ATNF pulsar catalogue and other source catalogues. The cross-matching is based on their detected sky locations and dispersion measures. The code is mainly developed for Python 3, but Python 2 from version 2.7 onwards should work fine.

## Author ##

The software is primarily developed and maintained by Fabian Jankowski. For more information feel free to contact me via: fabian.jankowski at manchester.ac.uk.

## Citation ##

If you make use of the software, please add a link to this repository and cite our upcoming paper. See the CITATION file.

## Installation ##

The easiest and recommended way to install the software is through `pip` directly from the bitbucket repository. For example, to install the master branch of the code, use the following command:

`pip3 install git+https://bitbucket.org/jankowsk/psrmatch.git@master`

## Usage ##

The cross-matcher operates on `Astropy` SkyCoord objects and input dispersion measures like this:

```python
from psrmatch import Matcher

m = Matcher()
m.load_catalogue('psrcat')
m.create_search_tree()
m.find_matches(source, dm)
```

The list of supported catalogues can be queried using the `m.supported_catalogues` property that returns a list of catalogue names.
