So Catmandu is a wonderful commandline tool for accessing and converting data. 
They have a website, which I encourage you to visit. Read up on what it is, and get some insight into what it can be used for:
https://librecat.org/Catmandu/

I use it to convert lists for the local library, in our Case we convert from the MARC format of the files exported from the library system (Koha) to an Excel file.

My Catmandu files for converting lists for the library to Excel format.

**Preparations**

Installation of necessary files (or even better: just run _setup.sh if you're on Debian/Ubuntu, it should work):
The installation takes at least a couple of minutes. 
I have done this installation with success on these platforms:
- Ubuntu 20.04 LTS
- Ubuntu Server 20.04.1 LTS
- Ubuntu 18.04.4 LTS (Under WSL2 (Windows Subsystem for Linux, on Windows 10 1909).

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

A note about my fixes.txt
Your needs will probably differ from mine, so this is just here as an example some of the fixes you can do to transform the data. To understand this better, check out the Catmandu documentation on the librecat.org website.

Anyhow, this is what I try to do with my fixes:
1. Map in the field 100a (author)
2. Map in the field 245a and b together - (this gives the title)
3. Map in the field 942c (we use this to check what type of item, a regular book or an audio book etc.)
4. For each item, check if the field 952a matches the code for the local library (TORE), and if it does: Use the data from field 952c (shows in what section the item is placed) and append it to a new field 'PlaceringTba).
5. Append the new Field 'PlaceringTba' to the data
6. Remove the fields 'record' and '_id' from the data.
