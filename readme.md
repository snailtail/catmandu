So Catmandu is a wonderful commandline tool for accessing and converting data. 
They have a website, which I encourage you to visit. Read up on what it is, and get some insight into what it can be used for:
https://librecat.org/Catmandu/

I use it to convert lists for the local library, in our Case we convert from the MARC format of the files exported from the library system (Koha) to an Excel file.

My Catmandu files for converting lists for the library to Excel format.

**Preparations**

Installation of necessary files (or even better: just run _setup.sh if you're on Debian/Ubuntu, it should work):
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

I won't be commenting much on the fixes.txt - and why it is set up as it is for our usage. Just see it as an example of what type of fixes you can do - to transform the data.
