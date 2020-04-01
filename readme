My Catmandu files for converting lists for the library to Excel format.

**Preparations**

Installation of necessary files:
```
sudo apt-get update
sudo apt-get -qq install cpanminus build-essential libexpat1-dev libssl-dev libxml2-dev libxslt1-dev libgdbm-dev libmodule-install-perl
sudo cpanm Catmandu Catmandu::MARC Catmandu::XLS
```

Download **fixes.txt** to your computer.

To convert, put the iso-file with MARC format in the same folder as fixes.txt and run:
```
catmandu convert MARC --fix fixes.txt to XLS --file output.xls < filename_of_iso_marc_file_here
```
